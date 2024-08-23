unit Unit_CompanyBillExecute;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinSilver, StdCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLabel, DB, MemDS, DBAccess, MSAccess;

type
  Tfrm_CompanyBillExecute = class(TForm)
    cxLabel2: TcxLabel;
    lc_month: TcxLookupComboBox;
    Memo1: TMemo;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    CB_Type: TComboBox;
    Button2: TButton;
    Button3: TButton;
    sp_Generate_CompanyBillNew: TMSStoredProc;
    lc_Year: TcxLookupComboBox;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_CompanyBillExecute: Tfrm_CompanyBillExecute;

implementation
   uses
   unit_DM; 
{$R *.dfm}

procedure Tfrm_CompanyBillExecute.Button3Click(Sender: TObject);
begin
Close ;
end;

procedure Tfrm_CompanyBillExecute.Button2Click(Sender: TObject);
begin

  if MessageDlg(
    'Are you sure want to Execute Company Bill ' + lc_month.Text + ' ?',
    mtConfirmation,
    [mbYes, mbNo],
    0) = mrYes then
  begin

sp_Generate_CompanyBillNew.Close ;
sp_Generate_CompanyBillNew.ParamByName('@CompanyCode').Value := sCompanyCode ;
sp_Generate_CompanyBillNew.ParamByName('@UserID').Value := sUserName ;
sp_Generate_CompanyBillNew.ParamByName('@FiscalYear').Value := lc_Year.Text;
sp_Generate_CompanyBillNew.ParamByName('@BillMonth').Value := lc_month.Text ;
sp_Generate_CompanyBillNew.ParamByName('@CustomerAccount').Value := sAccountCode ;
sp_Generate_CompanyBillNew.ParamByName('@BillType').Value := CB_Type.Text ;
sp_Generate_CompanyBillNew.ParamByName('@Remarks').Value := Memo1.Text ;
sp_Generate_CompanyBillNew.ParamByName('@Option').Value := 1 ;
sp_Generate_CompanyBillNew.ExecProc ;

iFolioSB := sp_Generate_CompanyBillNew.FieldValues['NextFolio']  ;
sRefNo :=   sp_Generate_CompanyBillNew.FieldValues['sNextNumber']  ;


 if iFolioSB > 0 then begin


      MessageDlg('Company Bill Generated : ' + sRefNo , mtInformation, [mbOK], 0);
   end;


end;

end;

procedure Tfrm_CompanyBillExecute.FormShow(Sender: TObject);
begin
 dm.sp_Util_GetMonthNames.ExecProc ;

  dm.sp_Util_Getyears.ExecProc ;

Memo1.Clear;
lc_month.InternalEditValue := -1 ;
lc_Year.InternalEditValue := -1 ;
CB_Type.ItemIndex := 0 ;

frm_CompanyBillExecute.Caption := sVal1 +' Bill Execute'; 
end;

end.
