unit Uni_PaymentReconAddEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinSilver,
  ComCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, DB, DBAccess, MSAccess, MemDS,
  cxLabel, dxSkinscxPCPainter, cxPC;

type
  Tfrm_PaymentReconAddEdit = class(TForm)
    sp_LOV_CompanyBill_01: TMSStoredProc;
    ds_sp_LOV_CompanyBill_01: TMSDataSource;
    sp_LOV_CompanyBill_BR_02: TMSStoredProc;
    ds_sp_LOV_CompanyBill_BR_02: TMSDataSource;
    lbl_Folio: TcxLabel;
    sp_PaymentRecon_AddEdit: TMSStoredProc;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    rzDate: TDateTimePicker;
    cxLabel1: TcxLabel;
    lc_month: TcxLookupComboBox;
    cxLabel3: TcxLabel;
    LC_CompanyBill: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    LC_BankReceipt: TcxLookupComboBox;
    lbl_remarks: TcxLabel;
    Remarks: TcxTextEdit;
    btnSave: TButton;
    btnClose: TButton;
    cxLabel2: TcxLabel;
    sp_PaymentRecon_Master: TMSStoredProc;
    procedure FormShow(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenData(iOp: Integer) ;
    procedure ClearForm();
  end;

var
  frm_PaymentReconAddEdit: Tfrm_PaymentReconAddEdit;
  iPayRecFolio : integer ;
implementation
uses
  unit_DM, dateutils;
{$R *.dfm}



procedure Tfrm_PaymentReconAddEdit.ClearForm();
begin

    lc_month.InternalEditValue := -1;
    rzDate.DateTime :=  Today() ;

    LC_CompanyBill.InternalEditValue := -1;
    LC_BankReceipt.InternalEditValue := -1;
    Remarks.EditValue := ''


end;
procedure Tfrm_PaymentReconAddEdit.OpenData(iOp: Integer)  ;
begin

ClearForm;

  if iOp = 0 then begin

    dm.sp_Util_GetMonthNames.ExecProc;

    sp_LOV_CompanyBill_01.Close;
    sp_LOV_CompanyBill_01.ParamByName('@UserID').Value := sUserName;
    sp_LOV_CompanyBill_01.ParamByName('@PartyAC').Value := sAccountCode;
    sp_LOV_CompanyBill_01.ParamByName('@Op').Value := 1;
    sp_LOV_CompanyBill_01.ExecProc;


    sp_LOV_CompanyBill_BR_02.Close;
    sp_LOV_CompanyBill_BR_02.ParamByName('@UserID').Value := sUserName;
    sp_LOV_CompanyBill_BR_02.ParamByName('@PartyAC').Value := sAccountCode;
    sp_LOV_CompanyBill_BR_02.ParamByName('@Op').Value := 2;
    sp_LOV_CompanyBill_BR_02.ExecProc;


    {iFolioSB := CardView_Folio_CompanyBill.EditValue;
  iFolioBR := CardView_CHQFolio.EditValue;
  sVal1 := CardView_Description.EditValue;
  iMonthNumber := CardView_iReconMonth.EditValue;
  srt01 := CardView_BillRemarks.EditValue ;
  srt02 := CardView_RefDate.EditValue ;}
    if iPayRecFolio > 0 then begin
  sp_PaymentRecon_Master.Close;
  sp_PaymentRecon_Master.ParamByName('@CompanyCode').Value := sCompanyCode;
  sp_PaymentRecon_Master.ParamByName('@UserID').Value := sUserName;
  sp_PaymentRecon_Master.ParamByName('@FiscalYear').Value := sFyear;
  sp_PaymentRecon_Master.ParamByName('@Folio').Value := lbl_Folio.EditValue;
  sp_PaymentRecon_Master.ExecProc;


    lc_month.InternalEditValue := sp_PaymentRecon_Master.FieldValues['iReconMonth'];
    rzDate.DateTime := sp_PaymentRecon_Master.FieldValues['RefDate'];   // dEntryDate;

    LC_CompanyBill.InternalEditValue := sp_PaymentRecon_Master.FieldValues['Folio_CompanyBill']; // iFolioSB;
    LC_BankReceipt.InternalEditValue := sp_PaymentRecon_Master.FieldValues['CHQFolio']; // iFolioBR;
    Remarks.EditValue := sp_PaymentRecon_Master.FieldValues['Description']; // sVal1  ; // + ' | '+srt01;
    end;
  end;
end;

procedure Tfrm_PaymentReconAddEdit.FormShow(Sender: TObject);
begin

ClearForm ;

   lbl_Folio.EditValue :=  iPayRecFolio; //iFolio;
  cxPageControl1.HideTabs := True;

  cxPageControl1.ActivePageIndex :=  iPageControl ; 
  OpenData(iPageControl)
  


end;

procedure Tfrm_PaymentReconAddEdit.btnSaveClick(Sender: TObject);
begin
  rzDate.Update;

  sp_PaymentRecon_AddEdit.Close;
  sp_PaymentRecon_AddEdit.ParamByName('@CompanyCode').Value := sCompanyCode;
  sp_PaymentRecon_AddEdit.ParamByName('@UserID').Value := sUserName;
  sp_PaymentRecon_AddEdit.ParamByName('@FYear').Value := sFyear;
  sp_PaymentRecon_AddEdit.ParamByName('@MonthNumber').Value := lc_month.InternalEditValue;
  sp_PaymentRecon_AddEdit.ParamByName('@Folio').Value := lbl_Folio.EditValue;
  sp_PaymentRecon_AddEdit.ParamByName('@vDate').Value := rzDate.DateTime;
  sp_PaymentRecon_AddEdit.ParamByName('@FolioSB').Value := LC_CompanyBill.InternalEditValue;
  sp_PaymentRecon_AddEdit.ParamByName('@FolioBR').Value := LC_BankReceipt.InternalEditValue;
  sp_PaymentRecon_AddEdit.ParamByName('@Description').Value := Remarks.EditValue;

  sp_PaymentRecon_AddEdit.ExecProc;

  iFolio := 0;
  iFolio := sp_PaymentRecon_AddEdit.FieldValues['NextFolio'];

  Close;
end;

procedure Tfrm_PaymentReconAddEdit.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.

