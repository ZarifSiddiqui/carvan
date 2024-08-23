unit Unit_dbSelect;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxGroupBox, cxRadioGroup,
  dxSkinsCore, dxSkinSilver;

type
  TForm_dbSelect = class(TForm)
    btn_Run: TButton;
    btnExit: TButton;
    rg_Company: TcxRadioGroup;
    rg_year: TcxRadioGroup;
    procedure btn_RunClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_dbSelect: TForm_dbSelect;
  sDBSelect, sMode: string;
implementation

uses Unit_Index, unit_dm;

{$R *.dfm}

procedure TForm_dbSelect.btn_RunClick(Sender: TObject);
begin

  if sMode = 'Live' then begin

    if rg_Company.ItemIndex = 0 then begin
      sDBSelect := 'Login Prompt=False;Password=12Eg?qb9;Data Source=server6.hndservers.net,2019;Initial Catalog=db_pnc_com_pk_2019;User ID=db_pnc_com_pk_sa;Connection Timeout=0';
    end else if rg_Company.ItemIndex = 1 then begin
      sDBSelect := 'Login Prompt=False;Password=12Eg?qb9;Data Source=server6.hndservers.net,2019;Initial Catalog=db_pnc_com_pk_anc;User ID=db_pnc_com_pk_sa;Connection Timeout=0';

    end;

    sFiscal := rg_year.EditValue;

    if sFiscal = '2021' then
      bYearOpen := True
    else bYearOpen := False;

  end else if sMode = 'local' then begin
  bYearOpen := True;
  sDBSelect := DM.Terminal.ReadString('Connect', 'str', '');

  end;

  Close;


end;

procedure TForm_dbSelect.btnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm_dbSelect.FormCreate(Sender: TObject);
begin
  sMode := DM.Terminal.ReadString('Connect', 'Mode', 'Live');

end;

end.

