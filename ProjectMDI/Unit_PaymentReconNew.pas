unit Unit_PaymentReconNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinSilver, dxSkinsdxBarPainter, cxLabel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxTextEdit, cxCurrencyEdit, cxCalendar, cxCheckBox,
  cxGridCardView, cxGridDBCardView, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridBandedTableView, cxGridDBBandedTableView,
  cxClasses, cxGridCustomView, cxGrid, ExtCtrls, dxBarDBNav, dxBar,
  cxBarEditItem, MSAccess, DBAccess, MemDS, RzStatus, RzDBStat, RzPanel;

type
  Tfrm_PaymentReconNew = class(TForm)
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_New: TdxBarLargeButton;
    Bar_FormName: TcxBarEditItem;
    dxBarLargeButton7: TdxBarLargeButton;
    btn_XlsOut: TdxBarLargeButton;
    btn_Post: TdxBarLargeButton;
    btn_AddLine: TdxBarLargeButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    btn_Insert: TdxBarDBNavButton;
    btn_Edit: TdxBarDBNavButton;
    btn_Save: TdxBarDBNavButton;
    btn_Cancel: TdxBarDBNavButton;
    btn_Refresh: TdxBarDBNavButton;
    Panel1: TPanel;
    Grid_Load: TcxGrid;
    ViewLoad_: TcxGridDBBandedTableView;
    ViewLoad_Seq: TcxGridDBBandedColumn;
    ViewLoad_FKFolio: TcxGridDBBandedColumn;
    ViewLoad_FKFromLoaction: TcxGridDBBandedColumn;
    ViewLoad_FKToLocation: TcxGridDBBandedColumn;
    ViewLoad_LoadType: TcxGridDBBandedColumn;
    ViewLoad_FKProductCode: TcxGridDBBandedColumn;
    ViewLoad_Quantity: TcxGridDBBandedColumn;
    ViewLoad_Freight: TcxGridDBBandedColumn;
    ViewLoad_TotalFreight: TcxGridDBBandedColumn;
    ViewLoad_Short_Qty: TcxGridDBBandedColumn;
    ViewLoad_Short_Rate: TcxGridDBBandedColumn;
    ViewLoad_Short_TotalAmt: TcxGridDBBandedColumn;
    ViewLoad_STAX_Rate: TcxGridDBBandedColumn;
    ViewLoad_STAX_Amt: TcxGridDBBandedColumn;
    ViewLoad_Net_Amt: TcxGridDBBandedColumn;
    ViewLoad_InvoiceNo: TcxGridDBBandedColumn;
    ViewLoad_InvoiceDate: TcxGridDBBandedColumn;
    ViewLoad_DO_Number: TcxGridDBBandedColumn;
    ViewLoad_Order_Number: TcxGridDBBandedColumn;
    ViewLoad_InvoiceAttached: TcxGridDBBandedColumn;
    ViewLoad_Short_AdjDate: TcxGridDBBandedColumn;
    ViewLoad_Short_CompAmt: TcxGridDBBandedColumn;
    ViewLoad_Shortage_Number: TcxGridDBBandedColumn;
    ViewLoad_ShipmentNo: TcxGridDBBandedColumn;
    ViewLoad_Commision_Rate: TcxGridDBBandedColumn;
    ViewLoad_Commision_Amt: TcxGridDBBandedColumn;
    ViewLoad_WHT_Rate: TcxGridDBBandedColumn;
    ViewLoad_WHT_Amt: TcxGridDBBandedColumn;
    ViewLoad_Column1: TcxGridDBBandedColumn;
    ViewLoad_Column2: TcxGridDBBandedColumn;
    ViewLoad_FromFreight: TcxGridDBBandedColumn;
    ViewLoad_ToFreight: TcxGridDBBandedColumn;
    ViewLoad_FromTaxRate: TcxGridDBBandedColumn;
    ViewLoad_ToTaxRate: TcxGridDBBandedColumn;
    ViewLoad_FromTaxAmt: TcxGridDBBandedColumn;
    ViewLoad_ToTaxAmt: TcxGridDBBandedColumn;
    ViewLoad_IsBilled: TcxGridDBBandedColumn;
    ViewLoad_Folio: TcxGridDBBandedColumn;
    ViewLoad_RefNo: TcxGridDBBandedColumn;
    ViewLoad_RefDate: TcxGridDBBandedColumn;
    ViewLoad_PartyAccount: TcxGridDBBandedColumn;
    ViewLoad_PartyName: TcxGridDBBandedColumn;
    ViewLoad_Vehicle: TcxGridDBBandedColumn;
    ViewLoad_Column3: TcxGridDBBandedColumn;
    ViewLoad_Column4: TcxGridDBBandedColumn;
    ViewLoad_Column5: TcxGridDBBandedColumn;
    ViewLoad_Column6: TcxGridDBBandedColumn;
    ViewLoad_Column7: TcxGridDBBandedColumn;
    ViewLoad_Column8: TcxGridDBBandedColumn;
    cxGridLevel5: TcxGridLevel;
    cxGrid1: TcxGrid;
    CardView_: TcxGridDBCardView;
    cxGrid1Level1: TcxGridLevel;
    sp_PaymentRecon_Master: TMSStoredProc;
    ds_sp_PaymentRecon_Master: TMSDataSource;
    CardView_CompanyCode: TcxGridDBCardViewRow;
    CardView_Folio: TcxGridDBCardViewRow;
    CardView_RefNo: TcxGridDBCardViewRow;
    CardView_RefDate: TcxGridDBCardViewRow;
    CardView_PartyAccount: TcxGridDBCardViewRow;
    CardView_Description: TcxGridDBCardViewRow;
    CardView_Folio_CompanyBill: TcxGridDBCardViewRow;
    CardView_CompBillNo: TcxGridDBCardViewRow;
    CardView_CHQFolio: TcxGridDBCardViewRow;
    CardView_CHQNO: TcxGridDBCardViewRow;
    CardView_CHQDate: TcxGridDBCardViewRow;
    CardView_CHQAmt: TcxGridDBCardViewRow;
    CardView_CHQRefNumber: TcxGridDBCardViewRow;
    CardView_IsCancel: TcxGridDBCardViewRow;
    CardView_IsPost: TcxGridDBCardViewRow;
    CardView_PostingDate: TcxGridDBCardViewRow;
    CardView_sState: TcxGridDBCardViewRow;
    CardView_UserID: TcxGridDBCardViewRow;
    CardView_EditUserID: TcxGridDBCardViewRow;
    CardView_BillAmount: TcxGridDBCardViewRow;
    CardView_BalanceAmt: TcxGridDBCardViewRow;
    CardView_iReconMonth: TcxGridDBCardViewRow;
    CardView_iReconYear: TcxGridDBCardViewRow;
    CardView_FYEAR: TcxGridDBCardViewRow;
    CardView_PartyName: TcxGridDBCardViewRow;
    CardView_BillingMonthName: TcxGridDBCardViewRow;
    CardView_InvoiceType: TcxGridDBCardViewRow;
    CardView_BillRemarks: TcxGridDBCardViewRow;
    cxGrid2: TcxGrid;
    viewWithheld_: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    sp_CompanyBill_Total_PaymentRecon: TMSStoredProc;
    ds_sp_CompanyBill_Total_PaymentRecon: TMSDataSource;
    RzStatusBar2: TRzStatusBar;
    RzDBStatusPane1: TRzDBStatusPane;
    RzDBStatusPane2: TRzDBStatusPane;
    RzDBStatusPane3: TRzDBStatusPane;
    RzDBStatusPane4: TRzDBStatusPane;
    RzStatusPane1: TRzStatusPane;
    RzDBStatusPane5: TRzDBStatusPane;
    btnEdit: TdxBarLargeButton;
    CardView_vDate: TcxGridDBCardViewRow;
    CardView_CreateOn: TcxGridDBCardViewRow;
    CardView_EditOn: TcxGridDBCardViewRow;
    viewWithheld_Province: TcxGridDBBandedColumn;
    viewWithheld_PaidByClient: TcxGridDBBandedColumn;
    viewWithheld_WitheldAmt: TcxGridDBBandedColumn;
    viewWithheld_TotalPayable: TcxGridDBBandedColumn;
    btn_EditTax: TdxBarLargeButton;
    btn_Lov: TdxBarLargeButton;
    sp_PaymentRecon_LoadDTL: TMSStoredProc;
    ds_sp_PaymentRecon_LoadDTL: TMSDataSource;
    btn_DeleteLine: TdxBarLargeButton;
    ViewLoad_FKFolio_Bill: TcxGridDBBandedColumn;
    ViewLoad_FKSeq_Bill: TcxGridDBBandedColumn;
    ViewLoad_Billmonth: TcxGridDBBandedColumn;
    ViewLoad_BillTypeFlag: TcxGridDBBandedColumn;
    ViewLoad_FKLoadSeq: TcxGridDBBandedColumn;
    ViewLoad_FromCity: TcxGridDBBandedColumn;
    ViewLoad_ToCity: TcxGridDBBandedColumn;
    ViewLoad_FKProductCode1: TcxGridDBBandedColumn;
    sp_ReconWitheldAmt_AddEdit: TMSStoredProc;
    viewWithheld_PRFolio: TcxGridDBBandedColumn;
    viewWithheld_PKSeq: TcxGridDBBandedColumn;
    dxBarSubItem1: TdxBarSubItem;
    dxBarLargeButton1: TdxBarLargeButton;
    procedure btn_NewClick(Sender: TObject);
    procedure sp_PaymentRecon_MasterBeforeScroll(DataSet: TDataSet);
    procedure btnEditClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure btn_XlsOutClick(Sender: TObject);
    procedure btn_PostClick(Sender: TObject);
    procedure sp_PaymentRecon_MasterAfterScroll(DataSet: TDataSet);
    procedure btn_LovClick(Sender: TObject);
    procedure btn_DeleteLineClick(Sender: TObject);
    procedure btn_EditTaxClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenMaster(iKey: integer);
      procedure GetDetail(iKey: integer);
    procedure GetTotal(iKey: integer);
  end;

var
  frm_PaymentReconNew: Tfrm_PaymentReconNew;

implementation
uses
  unit_DM, DateUtils, Unit_Index, Uni_PaymentReconAddEdit,
  Unit_PrintOption, Unit_LovCompanyBill;
{$R *.dfm}

procedure Tfrm_PaymentReconNew.OpenMaster(iKey: integer);
begin
  sp_PaymentRecon_Master.Close;
  sp_PaymentRecon_Master.ParamByName('@CompanyCode').Value := sCompanyCode;
  sp_PaymentRecon_Master.ParamByName('@UserID').Value := sUserName;
  sp_PaymentRecon_Master.ParamByName('@FiscalYear').Value := sFyear;
  sp_PaymentRecon_Master.ParamByName('@Folio').Value := 0;
  sp_PaymentRecon_Master.ExecProc;

  

end;

procedure Tfrm_PaymentReconNew.GetTotal(iKey: integer);
begin

  sp_CompanyBill_Total_PaymentRecon.Close;
  sp_CompanyBill_Total_PaymentRecon.ParamByName('@Folio').Value := iFolio;
  sp_CompanyBill_Total_PaymentRecon.ExecProc;

end;

procedure Tfrm_PaymentReconNew.GetDetail(iKey: integer);
begin

   sp_PaymentRecon_LoadDTL.ParamByName('@Folio').Value := iFolio ;
  sp_PaymentRecon_LoadDTL.ParamByName('@Seq').Value := 0 ;
  sp_PaymentRecon_LoadDTL.ExecProc ;

end;

procedure Tfrm_PaymentReconNew.btn_NewClick(Sender: TObject);
begin
//sAccountCode := LC_Party.InternalEditValue ;
//sVal1 := LC_Party.Text ;
  iPayRecFolio :=  0 ; 
  iPageControl := 0 ;
    sAccountCode := '' ;

  if not Assigned(frm_PaymentReconAddEdit) then

    frm_PaymentReconAddEdit := Tfrm_PaymentReconAddEdit.Create(Application);

  frm_PaymentReconAddEdit.ShowModal;

  if iFolio > 0 then begin

    sp_PaymentRecon_Master.Refresh;
    sp_PaymentRecon_Master.Last;
  end;

end;

procedure Tfrm_PaymentReconNew.sp_PaymentRecon_MasterBeforeScroll(
  DataSet: TDataSet);
begin
  //if SP_BillDetailTAB.State in [dsEdit] then SP_BillDetailTAB.Post;



end;


procedure Tfrm_PaymentReconNew.btnEditClick(Sender: TObject);
begin
  iPageControl := 0 ;
  sAccountCode := '' ;
  //iFolio := sp_PaymentRecon_Master.FieldValues['Folio'];
 { iFolioSB := CardView_Folio_CompanyBill.EditValue;
  iFolioBR := CardView_CHQFolio.EditValue;
  sVal1 := CardView_Description.EditValue;
  iMonthNumber := CardView_iReconMonth.EditValue;
  srt01 := CardView_BillRemarks.EditValue ;
  srt02 := CardView_RefDate.EditValue ; }

  //dEntryDate :=  sp_PaymentRecon_Master.FieldValues['vDate']  ; // CardView_vDate.EditValue;

  if not Assigned(frm_PaymentReconAddEdit) then

    frm_PaymentReconAddEdit := Tfrm_PaymentReconAddEdit.Create(Application);
      iPayRecFolio := sp_PaymentRecon_Master.FieldValues['Folio'];
  frm_PaymentReconAddEdit.ShowModal;

  if iFolio > 0 then begin

    sp_PaymentRecon_Master.Refresh;
    //sp_PaymentRecon_Master.Last;
  end;
end;

procedure Tfrm_PaymentReconNew.FormShow(Sender: TObject);
begin
  OpenMaster(0);
end;

procedure Tfrm_PaymentReconNew.dxBarLargeButton7Click(Sender: TObject);
begin
  sp_PaymentRecon_Master.Refresh;
end;

procedure Tfrm_PaymentReconNew.btn_XlsOutClick(Sender: TObject);
begin
  sFileName := 'PaymentRecon.xls';
  frm_PrintOption.GridXls(Grid_Load, sFileName);
end;

procedure Tfrm_PaymentReconNew.btn_PostClick(Sender: TObject);
begin

iFolio := sp_PaymentRecon_Master.FieldByName('Folio').Value ;


  if MessageDlg(
    'Are you sure want to Lock and Post !',
    mtConfirmation,
    [mbYes, mbNo],
    0) = mrYes then
  begin

    dm.ExecLockPost('PaymentRecon',iFolio);

    sp_PaymentRecon_Master.Refresh ;
   end;
end;

procedure Tfrm_PaymentReconNew.sp_PaymentRecon_MasterAfterScroll(
  DataSet: TDataSet);
begin



bIsPost := sp_PaymentRecon_Master.FieldByName('IsPost').Value ;
 iFolio := sp_PaymentRecon_Master.FieldByName('Folio').Value;

  GetDetail(iFolio) ;
GetTotal(iFolio) ;





end;

procedure Tfrm_PaymentReconNew.btn_LovClick(Sender: TObject);
begin

sAccountCode := sp_PaymentRecon_Master.FieldByName('PartyAccount').Value ;
sTipfileName :=  sp_PaymentRecon_Master.FieldByName('PartyName').Value ;
iFolio :=  sp_PaymentRecon_Master.FieldByName('Folio').Value;

    if not Assigned(frm_Lov_CompanyBill) then

    frm_Lov_CompanyBill := Tfrm_Lov_CompanyBill.Create(Application);

  frm_Lov_CompanyBill.ShowModal;

  sp_PaymentRecon_LoadDTL.Refresh ; 
  
end;

procedure Tfrm_PaymentReconNew.btn_DeleteLineClick(Sender: TObject);
begin
iFolio :=  ViewLoad_FKFolio.EditValue;
iSeq := ViewLoad_Seq.EditValue ;
iFolioSB := ViewLoad_FKFolio_Bill.EditValue  ;
iValue01 := ViewLoad_FKSeq_Bill.EditValue ;

dm.PaymentReconBillAddEdit(iSeq,iFolio,iFolioSB,iValue01);

sp_PaymentRecon_LoadDTL.Refresh ;

end;

procedure Tfrm_PaymentReconNew.btn_EditTaxClick(Sender: TObject);
begin
sVal1 :=  viewWithheld_Province.EditValue ;
iSeq := viewWithheld_PKSeq.EditValue ;
sVal2 := viewWithheld_WitheldAmt.EditValue ;

sVal3 := '' ;
sVal3 := InputBox('Edit : '+sVal1,'Witheld Amt (PKR)',sVal2);

 if Length(sVal3) > 0 then begin

 sp_ReconWitheldAmt_AddEdit.Close ;
 sp_ReconWitheldAmt_AddEdit.ParamByName('@FKFolio').Value := iFolio ;
 sp_ReconWitheldAmt_AddEdit.ParamByName('@FKSeq').Value := iSeq ;
 sp_ReconWitheldAmt_AddEdit.ParamByName('@WitheldAmt').Value := StrToFloat(sVal3) ;
 sp_ReconWitheldAmt_AddEdit.ExecProc ;

 GetTotal(iFolio);
 end;
iSeq := 0 ;
sVal1 := '' ;
sVal2 := '' ;
sVal3 := '' ; 
end;

procedure Tfrm_PaymentReconNew.dxBarLargeButton1Click(Sender: TObject);
begin
 sFileName := 'Tax_Withheld_Paid.xls';
  frm_PrintOption.GridXls(cxGrid2, sFileName);
end;

end.

