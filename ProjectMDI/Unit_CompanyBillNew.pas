unit Unit_CompanyBillNew;

interface

uses
  shellapi, cxGridExportLink, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinSilver, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxCurrencyEdit, cxTextEdit, cxCalendar, cxCheckBox, cxLabel,
  dxSkinsdxBarPainter, DBAccess, MSAccess, MemDS, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, dxBarDBNav, dxBar,
  cxBarEditItem, cxClasses, cxGridLevel, cxGridCustomTableView,
  cxGridCardView, cxGridDBCardView, cxGridCustomView, cxGrid, cxDBEdit,
  ExtCtrls;

type
  Tfrm_CompanyBillNew = class(TForm)
    pnl_Header: TPanel;
    Folio: TcxDBCurrencyEdit;
    cxGrid1: TcxGrid;
    CardView_: TcxGridDBCardView;
    cxGrid1Level1: TcxGridLevel;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_Document_find: TdxBarLargeButton;
    Bar_FormName: TcxBarEditItem;
    dxBarLargeButton7: TdxBarLargeButton;
    btn_XlsOut: TdxBarLargeButton;
    btn_DeleteLine: TdxBarLargeButton;
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
    sp_CompanyBill_Master: TMSStoredProc;
    ds_sp_CompanyBill_Master: TMSDataSource;
    sp_CompanyBillDTL: TMSStoredProc;
    ds_sp_CompanyBillDTL: TMSDataSource;
    CardView_CompanyCode: TcxGridDBCardViewRow;
    CardView_RefNo: TcxGridDBCardViewRow;
    CardView_RefDate: TcxGridDBCardViewRow;
    CardView_Contract_CompanyCode: TcxGridDBCardViewRow;
    CardView_PartyAccount: TcxGridDBCardViewRow;
    CardView_Description1: TcxGridDBCardViewRow;
    CardView_IsCancel: TcxGridDBCardViewRow;
    CardView_UserID: TcxGridDBCardViewRow;
    CardView_ComputerID: TcxGridDBCardViewRow;
    CardView_LastEdited: TcxGridDBCardViewRow;
    CardView_IsDelete: TcxGridDBCardViewRow;
    CardView_Old_RefNo: TcxGridDBCardViewRow;
    CardView_New_RefNo: TcxGridDBCardViewRow;
    CardView_BillingMonthName: TcxGridDBCardViewRow;
    CardView_BillingYear: TcxGridDBCardViewRow;
    CardView_SubTotal: TcxGridDBCardViewRow;
    CardView_TotalTax: TcxGridDBCardViewRow;
    CardView_NetTotal: TcxGridDBCardViewRow;
    CardView_ReceivedAmt: TcxGridDBCardViewRow;
    CardView_BillingType: TcxGridDBCardViewRow;
    CardView_Folio: TcxGridDBCardViewRow;
    CardView_CountTrip: TcxGridDBCardViewRow;
    CardView_CountTripRecived: TcxGridDBCardViewRow;
    CardView_CHQNO: TcxGridDBCardViewRow;
    CardView_CHQFolio: TcxGridDBCardViewRow;
    CardView_CHQDate: TcxGridDBCardViewRow;
    CardView_CHQAmt: TcxGridDBCardViewRow;
    CardView_BalanceAmt: TcxGridDBCardViewRow;
    CardView_ShortageAmt: TcxGridDBCardViewRow;
    CardView_ClubCardAmt: TcxGridDBCardViewRow;
    CardView_IncomeTaxAmt: TcxGridDBCardViewRow;
    CardView_SalesTaxAmt: TcxGridDBCardViewRow;
    CardView_IsPosted: TcxGridDBCardViewRow;
    CardView_sState: TcxGridDBCardViewRow;
    CardView_PostingDate: TcxGridDBCardViewRow;
    CardView_FYEAR: TcxGridDBCardViewRow;
    CardView_PartyName: TcxGridDBCardViewRow;
    sp_CompanyBill_Total: TMSStoredProc;
    ds_sp_CompanyBill_Total: TMSDataSource;
    cxGrid2: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBBandedTableView1Province: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1Freight: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TaxAmt: TcxGridDBBandedColumn;
    procedure sp_CompanyBill_MasterAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure btn_XlsOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenMaster(iKey: integer);
  end;

var
  frm_CompanyBillNew: Tfrm_CompanyBillNew;

implementation
uses
  unit_DM, DateUtils, Unit_Index;
{$R *.dfm}

procedure Tfrm_CompanyBillNew.OpenMaster(iKey: integer);
begin
  sp_CompanyBill_Master.Close;
  sp_CompanyBill_Master.ParamByName('@CompanyCode').Value := sCompanyCode;
  sp_CompanyBill_Master.ParamByName('@UserID').Value := sUserName;
  sp_CompanyBill_Master.ParamByName('@FiscalYear').Value := sFyear;
  sp_CompanyBill_Master.ParamByName('@Folio').Value := 0;
  sp_CompanyBill_Master.ExecProc;


end;

procedure Tfrm_CompanyBillNew.sp_CompanyBill_MasterAfterScroll(
  DataSet: TDataSet);
begin

  sp_CompanyBill_Total.DisableControls;
  sp_CompanyBill_Total.Close;
  sp_CompanyBill_Total.ParamByName('@Folio').Value := Folio.EditValue;
  sp_CompanyBill_Total.ExecProc;
  sp_CompanyBill_Total.EnableControls;


  sp_CompanyBillDTL.DisableControls;
  sp_CompanyBillDTL.Close;
  sp_CompanyBillDTL.ParamByName('@Folio').Value := Folio.EditValue;
  sp_CompanyBillDTL.ParamByName('@Seq').Value := 0;
  sp_CompanyBillDTL.ExecProc;
  sp_CompanyBillDTL.EnableControls;




end;

procedure Tfrm_CompanyBillNew.FormShow(Sender: TObject);
begin
  OpenMaster(0);

end;

procedure Tfrm_CompanyBillNew.dxBarLargeButton7Click(Sender: TObject);
begin
  OpenMaster(0);
end;

procedure Tfrm_CompanyBillNew.btn_XlsOutClick(Sender: TObject);
begin
  ExportGridToExcel('CompanyBill.xls', Grid_Load);
  ShellExecute(Self.Handle, 'open', PChar('CompanyBill.xls'), nil, nil,
    SW_SHOW);
end;

end.

