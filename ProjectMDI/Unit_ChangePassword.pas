unit Unit_ChangePassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, Menus, StdCtrls, cxButtons, cxLabel, cxTextEdit,
  cxMaskEdit;

type
  Tfrm_ChangePassword = class(TForm)
    Edit_Password: TcxMaskEdit;
    cxLabel2: TcxLabel;
    btn_Change: TcxButton;
    btn_Exit: TcxButton;
    cxLabel1: TcxLabel;
    New_Password: TcxMaskEdit;
    cxLabel3: TcxLabel;
    Confirm_Password: TcxMaskEdit;
    procedure btn_ExitClick(Sender: TObject);
    procedure btn_ChangeClick(Sender: TObject);
    procedure Confirm_PasswordPropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_ChangePassword: Tfrm_ChangePassword;

implementation
uses
  Unit_Dm;
{$R *.dfm}

procedure Tfrm_ChangePassword.btn_ExitClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_ChangePassword.btn_ChangeClick(Sender: TObject);
begin
  try
    begin
      dm.MySP.Close;
      dm.MySP.StoredProcName := 'sp_Util_ChangePassword';
      dm.MySP.ParamByName('@sUserID').Value := sUserName;
      dm.MySP.ParamByName('@sOldPassword').Value := Edit_Password.EditValue;
      dm.MySP.ParamByName('@sNewPassword').Value := New_Password.EditValue;
      dm.MySP.ParamByName('@sOldPassword2').Value := Confirm_Password.EditValue;
      dm.MySP.ParamByName('@Option').Value := 1;
      dm.MySP.ExecProc;
    end
  except
    on E: Exception do
      MessageDlg(E.Message, mtCustom, [mbOK], 0);
  end;

end;

procedure Tfrm_ChangePassword.Confirm_PasswordPropertiesChange(
  Sender: TObject);
begin

  if New_Password.EditText <> Confirm_Password.EditText then
  begin
    btn_Change.Enabled := False;
  end
  else if New_Password.EditText = Confirm_Password.EditText then
  begin
    btn_Change.Enabled := True;
  end;

end;

procedure Tfrm_ChangePassword.FormShow(Sender: TObject);
begin
  Edit_Password.Clear;
  New_Password.Clear;
  Confirm_Password.Clear;
end;

end.
