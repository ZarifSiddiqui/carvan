unit Unit_AddEdit_String;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls;

type
  Tdlg_AddEditString = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure OKBtnClick(Sender: TObject);
    procedure CancelBtnClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dlg_AddEditString: Tdlg_AddEditString;

implementation
uses unit_dm;
{$R *.dfm}

procedure Tdlg_AddEditString.OKBtnClick(Sender: TObject);
begin
  sAddEdit := '';
  sAddEdit := Edit1.Text;
  Close;

end;

procedure Tdlg_AddEditString.CancelBtnClick(Sender: TObject);
begin
  sAddEdit := '';
  Close;
end;

procedure Tdlg_AddEditString.FormShow(Sender: TObject);
begin
  Edit1.Clear;
  Edit1.SetFocus;
  Label1.Caption := srt014;
  Edit1.Text := sAddEdit;
end;

end.
