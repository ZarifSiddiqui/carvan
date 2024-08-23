unit Unit_Estimate;

interface

uses
  UPdsmon,
  shellapi, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls,
  Forms,
  Dialogs, cxLabel, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData,
  cxDBLookupComboBox, cxCurrencyEdit, RzStatus, RzDBStat, RzPanel,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxDBEdit,
  cxGroupBox, cxDBLabel, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxTextEdit, cxMaskEdit, cxCalendar, ExtCtrls, UCrpeDS, UCrpeClasses,
  UCrpe32, MSAccess, DBAccess, MemDS, dxBarDBNav, dxBar, cxBarEditItem,
  cxMemo, cxVGrid, cxDBVGrid, cxInplaceContainer, cxCheckBox, dxSkinsCore,
  dxSkinSilver, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxButtonEdit,
  cxCheckComboBox, cxRadioGroup;

type
  Tfrm_Estimate = class(TForm)
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_Post: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    btn_doc_Print: TdxBarLargeButton;
    btn_Document_find: TdxBarLargeButton;
    Bar_FormName: TcxBarEditItem;
    btn_Save: TdxBarLargeButton;
    btn_Edit: TdxBarLargeButton;
    btn_New: TdxBarLargeButton;
    btn_Delete: TdxBarLargeButton;
    btn_AdminAction: TdxBarSubItem;
    btn_ChangeDate: TdxBarLargeButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    tblSalesBillMst: TMSTable;
    tblSalesBillDtl: TMSTable;
    ds_tblSalesBillMst: TMSDataSource;
    ds_tblSalesBillDtl: TMSDataSource;
    sp_Create_Header_Voucher: TMSStoredProc;
    sp_Util_Save_Inventory_Voucher: TMSStoredProc;
    Crpe: TCrpe;
    CrpeDS: TCrpeDS;
    sp_Doc_Print: TMSStoredProc;
    RzPanel_header: TRzPanel;
    PartyAct: TcxDBLookupComboBox;
    PONumber: TcxDBTextEdit;
    Edit_Remarks: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    btn_EnableDisable: TcxButton;
    Grid_Detail: TcxGrid;
    View_Detail: TcxGridDBTableView;
    View_DetailCompanyId: TcxGridDBColumn;
    View_DetailBillNo: TcxGridDBColumn;
    View_DetailGrnNo: TcxGridDBColumn;
    View_DetailFKItemID: TcxGridDBColumn;
    View_DetailsGroup: TcxGridDBColumn;
    View_DetailQty: TcxGridDBColumn;
    View_DetailRate: TcxGridDBColumn;
    View_DetailAmount: TcxGridDBColumn;
    View_DetailDiscPer: TcxGridDBColumn;
    View_DetailDiscAmount: TcxGridDBColumn;
    View_DetailGrossAmount: TcxGridDBColumn;
    View_DetailSalesTaxPer: TcxGridDBColumn;
    View_DetailSalesTaxAmount: TcxGridDBColumn;
    View_DetailNetAmount: TcxGridDBColumn;
    View_DetailRateDifference: TcxGridDBColumn;
    View_DetailDifferenceAmount: TcxGridDBColumn;
    View_DetailValExclSalesTax: TcxGridDBColumn;
    View_DetailExcisePer: TcxGridDBColumn;
    View_DetailExciseAmount: TcxGridDBColumn;
    View_DetailStock: TcxGridDBColumn;
    View_DetailQtyInTon: TcxGridDBColumn;
    View_DetailRateInTon: TcxGridDBColumn;
    View_DetailForignRate: TcxGridDBColumn;
    View_DetailConvFactor: TcxGridDBColumn;
    View_DetailOtherTax: TcxGridDBColumn;
    View_DetailFreight: TcxGridDBColumn;
    View_DetailOtherExpense: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    RzStatusBar2: TRzStatusBar;
    RzDBStatusPane1: TRzDBStatusPane;
    RzDBStatusPane3: TRzDBStatusPane;
    RzDBStatusPane2: TRzDBStatusPane;
    RzDBStatusPane4: TRzDBStatusPane;
    sp_Util_LOV_COA_05: TMSStoredProc;
    ds_sp_Util_LOV_COA_05: TMSDataSource;
    RzPanel_footer: TRzPanel;
    cxLabel11: TcxLabel;
    LC_SubCCRlxn: TcxDBLookupComboBox;
    VoucherNo: TcxDBTextEdit;
    dxBarSubItem2: TdxBarSubItem;
    dxBarButton1: TdxBarButton;
    btn_PrintCashMemo: TdxBarButton;
    dxBarButton3: TdxBarButton;
    VG_Header: TcxDBVerticalGrid;
    VG_HeaderFolio: TcxDBEditorRow;
    VG_HeaderCompanyId: TcxDBEditorRow;
    VG_HeaderQuotNumber: TcxDBEditorRow;
    VG_HeaderQuotDate: TcxDBEditorRow;
    VG_HeaderBillNo: TcxDBEditorRow;
    VG_HeaderBillDate: TcxDBEditorRow;
    VG_HeaderStaxInvNo: TcxDBEditorRow;
    VG_HeaderDCDate: TcxDBEditorRow;
    VG_HeaderCreditDays: TcxDBEditorRow;
    VG_HeadersAttentionTo: TcxDBEditorRow;
    VG_HeadersProject: TcxDBEditorRow;
    VG_HeaderShippingAddress: TcxDBEditorRow;
    VG_HeaderBillingAddress: TcxDBEditorRow;
    VG_HeaderIsPost: TcxDBEditorRow;
    txt_ShipTo: TcxDBMemo;
    cxLabel1: TcxLabel;
    Folio: TcxDBTextEdit;
    View_DetailColumnsArea: TcxGridDBColumn;
    View_DetailSeq: TcxGridDBColumn;
    View_DetailFKFolio: TcxGridDBColumn;
    View_DetailDono: TcxGridDBColumn;
    View_DetailAddDescription: TcxGridDBColumn;
    View_DetailSno: TcxGridDBColumn;
    View_DetailRate1: TcxGridDBColumn;
    View_DetailQty5: TcxGridDBColumn;
    View_DetailQty4: TcxGridDBColumn;
    View_DetailQty3: TcxGridDBColumn;
    View_DetailQty2: TcxGridDBColumn;
    View_DetailQty1: TcxGridDBColumn;
    View_DetailAveragePrice: TcxGridDBColumn;
    View_DetailFKUOMCode: TcxGridDBColumn;
    View_DetailFKWCODE: TcxGridDBColumn;
    View_DetailsArea: TcxGridDBColumn;
    View_DetailProductCode: TcxGridDBColumn;
    View_DetailUnitCost: TcxGridDBColumn;
    View_DetailSalesTaxPerA: TcxGridDBColumn;
    View_DetailSalesTaxAmountA: TcxGridDBColumn;
    warn: TMSTable;
    dswarn: TMSDataSource;
    UOM: TMSTable;
    dsUOM: TMSDataSource;
    tblSalesBillDtlNetAmount: TFloatField;
    tblSalesBillDtlSno: TIntegerField;
    tblSalesBillDtlQty: TFloatField;
    tblSalesBillDtlRate: TFloatField;
    tblSalesBillDtlDiscPer: TFloatField;
    tblSalesBillDtlDiscAmount: TFloatField;
    tblSalesBillDtlGrossAmount: TFloatField;
    tblSalesBillDtlSalesTaxPer: TFloatField;
    tblSalesBillDtlSalesTaxAmount: TFloatField;
    tblSalesBillDtlSalesTaxPerA: TFloatField;
    tblSalesBillDtlSalesTaxAmountA: TFloatField;
    tblSalesBillDtlSeq: TIntegerField;
    tblSalesBillDtlFKFolio: TIntegerField;
    tblSalesBillDtlCompanyId: TStringField;
    tblSalesBillDtlBillNo: TStringField;
    tblSalesBillDtlDono: TStringField;
    tblSalesBillDtlsArea: TStringField;
    tblSalesBillDtlsGroup: TStringField;
    tblSalesBillDtlProductCode: TStringField;
    tblSalesBillDtlAddDescription: TStringField;
    tblSalesBillDtlAmount: TFloatField;
    tblSalesBillDtlExcisePer: TFloatField;
    tblSalesBillDtlExciseAmount: TFloatField;
    tblSalesBillDtlStock: TStringField;
    tblSalesBillDtlRate1: TFloatField;
    tblSalesBillDtlQty5: TFloatField;
    tblSalesBillDtlQty4: TFloatField;
    tblSalesBillDtlQty3: TFloatField;
    tblSalesBillDtlQty2: TFloatField;
    tblSalesBillDtlQty1: TFloatField;
    tblSalesBillDtlAveragePrice: TFloatField;
    tblSalesBillDtlQtyInTon: TFloatField;
    tblSalesBillDtlFKItemID: TIntegerField;
    tblSalesBillDtlUnitCost: TFloatField;
    tblSalesBillDtlFKUOMCode: TStringField;
    tblSalesBillDtlFKWCODE: TStringField;
    VG_HeaderDBEditorRow1: TcxDBEditorRow;
    sAttentionTo: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    lbl_Gross: TcxLabel;
    lbl_STAX: TcxLabel;
    lbl_Net: TcxLabel;
    cxLabel2: TcxLabel;
    sEmailTo: TcxDBTextEdit;
    LC_SalesPerson: TcxDBLookupComboBox;
    cxLabel3: TcxLabel;
    cxLabel7: TcxLabel;
    LC_PaymentMethod: TcxDBLookupComboBox;
    chk_IsTaxExempt: TcxDBCheckBox;
    PaymentMethod: TMSTable;
    ds_PaymentMethod: TMSDataSource;
    tblStaffProfile: TMSTable;
    ds_tblStaffProfile: TMSDataSource;
    lbl_PartyGSTNO: TcxLabel;
    lbl_PartyNTNNO: TcxLabel;
    dxBarButton2: TdxBarButton;
    rg_TypeCode: TcxDBRadioGroup;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel12: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure btn_EnableDisableClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure tblSalesBillMstAfterScroll(DataSet: TDataSet);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_PostClick(Sender: TObject);
    procedure tblSalesBillDtlAfterPost(DataSet: TDataSet);
    procedure btn_doc_PrintClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btn_NewClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure View_DetailProductCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btn_ChangeDateClick(Sender: TObject);
    procedure VoucherNoPropertiesChange(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure btn_PrintCashMemoClick(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure btn_Document_findClick(Sender: TObject);
    procedure PartyActPropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure tblSalesBillDtlCalcFields(DataSet: TDataSet);
    procedure chk_IsPostPropertiesEditValueChanged(Sender: TObject);
    procedure View_DetailColumnsAreaPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure View_DetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure View_DetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure View_DetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure sp_Util_LOV_COA_05AfterScroll(DataSet: TDataSet);
    procedure tblSalesBillMstBeforePost(DataSet: TDataSet);
    procedure dxBarButton2Click(Sender: TObject);
    procedure tblSalesBillMstBeforeScroll(DataSet: TDataSet);
    procedure rg_TypeCodePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Estimate: Tfrm_Estimate;
  iLFormID: integer;
implementation

uses DateUtils, Unit_DM, Unit_Index, Unit_PrintOption, Unit_ChangeDate,
  Unit_SerialAddEdit, Unit_LOV_Voucher, cxGridDBDataDefinitions;

{$R *.dfm}


procedure MakeRounded(Control: TWinControl);
var
  R: TRect;
  Rgn: HRGN;
begin
  with Control do
  begin
    R := ClientRect;
    rgn := CreateRoundRectRgn(R.Left, R.Top, R.Right, R.Bottom, 20, 20);
    Perform(EM_GETRECT, 0, lParam(@r));
    InflateRect(r, -5, -5);
    Perform(EM_SETRECTNP, 0, lParam(@r));
    SetWindowRgn(Handle, rgn, True);
    Invalidate;
  end;
end;

procedure Tfrm_Estimate.FormShow(Sender: TObject);
begin
   //   MakeRounded(RzPanel_header);
   //  MakeRounded(RzPanel_footer);


  //vDate.Properties.MinDate := dFYearFrom;
  //vDate.Properties.MaxDate := dFYearTo;

  Bar_FormName.Caption := sFileName;
  iLFormID := iFormID;

  //dm.UserFormPrefrence(sUserName, iFormID);

  btn_New.Enabled := bRightAdd;
  btn_Edit.Enabled := bRightEdit;
  btn_Delete.Enabled := bRightDelete;
  btn_ChangeDate.Enabled := bRightChangeDate;

  DM.Lov_Item_Stock.Close;
  DM.Lov_Item_Stock.Open;
  warn.close;
  warn.Open;
  uom.Close;
  uom.Open;

  tblStaffProfile.Close;
  tblStaffProfile.Open;
 // PaymentMethod.Close;
  //PaymentMethod.Open;
  { DM.LOV_CostC.Close;
  DM.LOV_CostC.Open;

  DM.LOV_SubCostC.Close;
  DM.LOV_SubCostC.Open; }

  //DM.LOV_SubCCRlxn.Close;
 // DM.LOV_SubCCRlxn.Open;

  tblSalesBillMst.Close;
  tblSalesBillMst.Open;

  tblSalesBillDtl.Close;
  tblSalesBillDtl.Open;
   /// Customer list
  sp_Util_LOV_COA_05.Close;
  sp_Util_LOV_COA_05.Open;

     // if open from ledger
  {if Length(sRefNo) > 2 then
  begin

    tblSalesBillMst.Locate('BillNo', sRefNo, [loCaseInsensitive]);

  end;
   // open from log book
  if iDoc_Filter > 0 then
  begin

    tblSalesBillMst.Locate('Folio', iDoc_Filter, [loCaseInsensitive]);

  end; }
end;

procedure Tfrm_Estimate.btn_EnableDisableClick(Sender: TObject);
begin
//  vDate.Enabled := bEnabled;
  PartyAct.Enabled := bEnabled;
  Edit_Remarks.Enabled := bEnabled;
  PONumber.Enabled := bEnabled; // PO Number
  sAttentionTo.Enabled := bEnabled;
  sEmailTo.Enabled := bEnabled;
  LC_SalesPerson.Enabled := bEnabled;
  LC_PaymentMethod.Enabled := bEnabled;
  chk_IsTaxExempt.Enabled := bEnabled;

  Grid_Detail.Enabled := bEnabled; ;
  LC_SubCCRlxn.Enabled := bEnabled;

  txt_ShipTo.Enabled := bEnabled;


end;

procedure Tfrm_Estimate.btn_EditClick(Sender: TObject);
begin
  tblSalesBillMst.Edit;
  bEnabled := True;
  btn_EnableDisableClick(nil);
end;

procedure Tfrm_Estimate.tblSalesBillMstAfterScroll(DataSet: TDataSet);
begin
  sRefNo := tblSalesBillMst.FieldValues['QuotNumber'] ; 

  if Length(Folio.EditValue) > 0 then
    iFolio := Folio.EditValue;
end;

procedure Tfrm_Estimate.btn_DeleteClick(Sender: TObject);
begin
  sp_Util_Save_Inventory_Voucher.Close;
  sp_Util_Save_Inventory_Voucher.ParamByName('@sCompanyId').Value :=
    sCompanyCode;
  sp_Util_Save_Inventory_Voucher.ParamByName('@sUserID').Value := sUserName;
  sp_Util_Save_Inventory_Voucher.ParamByName('@iFolio').Value := iFolio;
  sp_Util_Save_Inventory_Voucher.ParamByName('@iFormID').Value := iLFormID;
  sp_Util_Save_Inventory_Voucher.ParamByName('@Option').Value := 3;
  sp_Util_Save_Inventory_Voucher.ExecProc;

  tblSalesBillMst.Refresh;

  bEnabled := False;
  btn_EnableDisableClick(nil);
end;

procedure Tfrm_Estimate.btn_PostClick(Sender: TObject);
begin
  if MessageDlg(
    'Are you sure want to Post Voucher?',
    mtConfirmation,
    [mbYes, mbNo],
    0) = mrYes then
  begin

    sp_Util_Save_Inventory_Voucher.Close;
    sp_Util_Save_Inventory_Voucher.ParamByName('@sCompanyId').Value :=
      sCompanyCode;
    sp_Util_Save_Inventory_Voucher.ParamByName('@sUserID').Value := sUserName;
    sp_Util_Save_Inventory_Voucher.ParamByName('@iFolio').Value := iFolio;
    sp_Util_Save_Inventory_Voucher.ParamByName('@iFormID').Value := iLFormID;
    sp_Util_Save_Inventory_Voucher.ParamByName('@Option').Value := 2;
    sp_Util_Save_Inventory_Voucher.ExecProc;

    tblSalesBillMst.Refresh;

    bEnabled := False;
    btn_EnableDisableClick(nil);

  end;
end;

procedure Tfrm_Estimate.tblSalesBillDtlAfterPost(DataSet: TDataSet);
begin
 // DataSet.FieldByName('NetAmount').Value := View_DetailNetAmount.EditValue ;
  DataSet.Refresh;
end;

procedure Tfrm_Estimate.btn_doc_PrintClick(Sender: TObject);
begin
  sPrintFormat := 'Inv_SalesVoucher.rpt';
  sMsp_Print := 'sp_Sales_Print';

  frm_PrintOption.btn_PrintClick(Sender);

 { sPrintFormat := sReportDirectory + 'SalesVoucher.rpt';

  try
    sp_Doc_Print.Close;
    sp_Doc_Print.Params.ParamByName('@iFolio').Value := Folio.EditValue;
    sp_Doc_Print.Params.ParamByName('@CompanyCode').Value := sCompanyCode;
    sp_Doc_Print.Active := True;
  except
    on E: Exception do
    begin

      MessageDlg(pAnsiChar(E.Message), mtError, [mbOK], 0);
    end;
  end;

  CrpeDS.DataSet := sp_Doc_Print;

  Crpe.Clear;
  Crpe.ReportName := sPrintFormat;
  // PChar(sReportDirectory + sReportName);

  Crpe.WindowButtonBar.PrintBtn := True;
  Crpe.WindowButtonBar.PrintSetupBtn := True;
  // Crpe.PrintOptions.Copies := 1;
  Crpe.WindowState := wsMaximized;
  Crpe.WindowZoom.Magnification := 100;

  Crpe.Tables[0].DataPointer := CrpeDS.DataPointer;

  if sCB_Print = 'Print' then
  begin
    Crpe.Print;
  end
  else if sCB_Print = 'View' then
  begin
    Crpe.Show;
  end
  else if sCB_Print = 'Edit' then
  begin
    UPdsmon.CreateFieldDefFile(CrpeDS.DataPointer, 'D:\ReportFields.ttx', True);
    ShellExecute(Self.Handle, 'open', PChar(Crpe.ReportName), nil, nil,
      SW_SHOW);

  end; }
end;

procedure Tfrm_Estimate.btn_SaveClick(Sender: TObject);
begin

  iValue01 := View_Detail.DataController.Summary.FooterSummaryValues[3];
  if tblSalesBillMst.State in ([dsEdit, dsInsert]) then begin

    tblSalesBillMst.FieldByName('NetAmount').Value := iValue01;

    tblSalesBillMst.Post;

  end;
  if tblSalesBillDtl.State in ([dsEdit, dsInsert]) then
    tblSalesBillDtl.Post;

  if Length(sRefNo) < 3 then begin
    if MessageDlg(
      'Are you sure want to Save Quotation?',
      mtConfirmation,
      [mbYes, mbNo],
      0) = mrYes then
    begin

      sp_Util_Save_Inventory_Voucher.Close;
      sp_Util_Save_Inventory_Voucher.ParamByName('@sCompanyId').Value :=
        sCompanyCode;
      sp_Util_Save_Inventory_Voucher.ParamByName('@sUserID').Value := sUserName;
      sp_Util_Save_Inventory_Voucher.ParamByName('@iFolio').Value := iFolio;
      sp_Util_Save_Inventory_Voucher.ParamByName('@iFormID').Value := iLFormID;
      sp_Util_Save_Inventory_Voucher.ParamByName('@Option').Value := 1;
      sp_Util_Save_Inventory_Voucher.ExecProc;

      tblSalesBillMst.Refresh;




    end;

  end;
  bEnabled := False;
  btn_EnableDisableClick(nil);
end;

procedure Tfrm_Estimate.dxBarLargeButton1Click(Sender: TObject);
begin
  tblSalesBillMst.Refresh;
  tblSalesBillDtl.Refresh;
end;

procedure Tfrm_Estimate.btn_NewClick(Sender: TObject);
begin
  if MessageDlg('Are you sure want to Create Voucher?', mtConfirmation, [mbYes,
    mbNo], 0) = mrYes then
  begin
    sp_Create_Header_Voucher.Close;
    sp_Create_Header_Voucher.ParamByName('@CompanyCode').Value := sCompanyCode;
    sp_Create_Header_Voucher.ParamByName('@UserID').Value := sUserName;
    sp_Create_Header_Voucher.ParamByName('@FiscalYear').Value := sFyear;
    sp_Create_Header_Voucher.ParamByName('@FormID').Value := iLFormID;
    sp_Create_Header_Voucher.ExecProc;

    //iFolio := sp_Create_Header_Voucher.FieldValues['NextFolio'];

    tblSalesBillMst.Refresh;
    tblSalesBillMst.Last;
    // tblPurBillProductMst.Locate('Folio', iFolio, [loCaseInsensitive]);
    bEnabled := True;
    btn_EnableDisableClick(nil);
  end;
end;

procedure Tfrm_Estimate.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  case key of
    { vk_Down: if Edit_Barcode.Focused then cxGrid_LineItems.SetFocus;
     vk_Escape: if NB.Visible then NB.Visible := False;
     vk_F2: Btn_Item_FindClick(nil); }
     //vk_F8: cxGridDBTableView_LineItemsDblClick(nil);
    vk_F9: frm_PrintOption.ShowModal;
    // vk_F10: Btn_Document_PrintClick(nil);
  end;
end;

procedure Tfrm_Estimate.View_DetailProductCodePropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin

  iTraderTaxType := rg_TypeCode.EditValue;

  double01 := DM.Lov_Item_Stock.FieldValues['UnitCost'];
  double02 := DM.Lov_Item_Stock.FieldValues['UnitPrice'];
  double03 := DM.Lov_Item_Stock.FieldValues['AvgCost'];

  srt01 := DM.Lov_Item_Stock.FieldValues['ModelNo'];
  srt02 := DM.Lov_Item_Stock.FieldValues['Description'];

  srt03 := DM.Lov_Item_Stock.FieldValues['FKWarnCode'];
  srt04 := DM.Lov_Item_Stock.FieldValues['UOM'];

  View_DetailUnitCost.EditValue := double01;
  View_DetailRate.EditValue := double02;
  View_DetailRate1.EditValue := double02;
  View_DetailAveragePrice.EditValue := double03;

  //View_DetailSalesTaxPer.EditValue :=  rGst1;
  //View_DetailSalesTaxPerA.EditValue := rGst2;

  if iTraderTaxType = 1 then begin
    View_DetailSalesTaxPer.EditValue := rGst1;
    View_DetailSalesTaxPerA.EditValue := rGst2;
  end else if iTraderTaxType = 2 then begin
    View_DetailSalesTaxPer.EditValue := 0;
    View_DetailSalesTaxPerA.EditValue := 0;
  end;

  View_DetailProductCode.EditValue := srt01;
  View_DetailAddDescription.EditValue := srt02;
  View_DetailFKWCODE.EditValue := srt03;
  View_DetailFKUOMCode.EditValue := srt04;



end;

procedure Tfrm_Estimate.btn_ChangeDateClick(Sender: TObject);
begin
//  dFromDate := vDate.Date;
  iFolio := Folio.EditValue;
  iFormID := iLFormID;
  sFormType := sFormType;
  sRefNo := VoucherNo.EditValue;

  dlg_ChangeDate.ShowModal;

  if dFromDate <> dToDate then
  begin
    tblSalesBillMst.Refresh;
    tblSalesBillMst.Locate('Folio', iFolio, [loCaseInsensitive]);

  end;
end;

procedure Tfrm_Estimate.VoucherNoPropertiesChange(Sender: TObject);
begin
  if Length(VoucherNo.EditingText) > 3 then
  begin
    bEnabled := False;
    btn_EnableDisableClick(nil);

  end
  else
  begin
    bEnabled := True;
    btn_EnableDisableClick(nil);

  end;
end;

procedure Tfrm_Estimate.dxBarButton1Click(Sender: TObject);
begin
  sPrintFormat := 'SalesTaxUnderTaken.rpt';
  sMsp_Print := 'sp_Print_STInvoiceUnderTaking';


  frm_PrintOption.btn_PrintClick(Sender);
end;

procedure Tfrm_Estimate.btn_PrintCashMemoClick(Sender: TObject);
begin
  sPrintFormat := 'SalesTaxDC.rpt';
  sMsp_Print := 'sp_Print_STInvoice';



  frm_PrintOption.btn_PrintClick(Sender);
end;

procedure Tfrm_Estimate.dxBarButton3Click(Sender: TObject);
begin
  sPrintFormat := 'Estimate.rpt';
  sMsp_Print := 'sp_Print_Estimate';

  frm_PrintOption.btn_PrintClick(Sender);
end;

procedure Tfrm_Estimate.btn_Document_findClick(Sender: TObject);
begin
  sSP_LOV := '6'; //'SalesList';

  if not Assigned(frm_LOV_Voucher) then

    frm_LOV_Voucher := Tfrm_LOV_Voucher.Create(Application);

  frm_LOV_Voucher.ShowModal;

  if sFilterText <> '' then
  begin
    //tblSalesBillMst.First;
    tblSalesBillMst.Locate('Folio', iFolio, [loCaseInsensitive]);
  end;
end;

procedure Tfrm_Estimate.PartyActPropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  srt01 := sp_Util_LOV_COA_05.FieldValues['Address1'];
  srt02 := sp_Util_LOV_COA_05.FieldValues['Address2'];
  srt03 := sp_Util_LOV_COA_05.FieldValues['ContactPerson'];
  srt04 := sp_Util_LOV_COA_05.FieldValues['Email'];
  srt05 := sp_Util_LOV_COA_05.FieldValues['NTNNO'];
  srt06 := sp_Util_LOV_COA_05.FieldValues['GSTNO'];

  iTraderTaxType := sp_Util_LOV_COA_05.FieldValues['TaxType'];

  txt_ShipTo.Text := srt01;
  chk_IsTaxExempt.EditValue := iTraderTaxType;
  sAttentionTo.EditValue := srt03;
  sEmailTo.EditValue := srt04;
  lbl_PartyNTNNO.Caption := 'NTN :- ' + srt05;
  lbl_PartyGSTNO.Caption := 'GST :- ' + srt06;


end;

procedure Tfrm_Estimate.tblSalesBillDtlCalcFields(DataSet: TDataSet);
begin

  if DataSet.RecordCount > 0 then begin
   // gross
    rReal01 := (DataSet.FieldByName('Qty').AsCurrency * DataSet.FieldByName('Rate').AsCurrency);


// STAX
    rReal02 := (rReal01 * DataSet.FieldByName('SalesTaxPer').AsCurrency) / 100;
 // AST
    rReal03 := (rReal01 * DataSet.FieldByName('SalesTaxPerA').AsCurrency) / 100;
 // Net


    rReal04 := rReal01 + rReal02 + rReal03;

    DataSet.FieldByName('GrossAmount').AsCurrency := rReal01;
    DataSet.FieldByName('SalesTaxAmount').AsCurrency := rReal02;
    DataSet.FieldByName('SalesTaxAmountA').AsCurrency := rReal03; // (DataSet.FieldByName('GrossAmount').AsCurrency  * DataSet.FieldByName('SalesTaxPerA').AsCurrency )/100 ;
    DataSet.FieldByName('NetAmount').AsCurrency := rReal04; // (DataSet.FieldByName('GrossAmount').AsCurrency  + DataSet.FieldByName('SalesTaxAmount').AsCurrency + DataSet.FieldByName('SalesTaxAmountA').AsCurrency ) ;

  end;

end;

procedure Tfrm_Estimate.chk_IsPostPropertiesEditValueChanged(
  Sender: TObject);
begin
  {if chk_IsPost.EditValue = false then begin

    dm.MSQuery1.SQL.Clear;
    dm.MSQuery1.SQL.Add('Update tblSalesBillDtl set SalesTaxPer = 0  ,SalesTaxPerA = 0  where FKFolio = ' + QuotedStr(IntToStr(Folio.EditValue)));
    dm.MSQuery1.ExecSQL;

    tblSalesBillDtl.Refresh;


  end; }
end;

procedure Tfrm_Estimate.View_DetailColumnsAreaPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if tblSalesBillDtl.State in ([dsEdit, dsInsert]) then
    tblSalesBillDtl.Post;

  iFolio := Folio.EditValue;
  sFormType := 'Sale';
  iItemID := View_DetailFKItemID.EditValue;
  rQuantity := View_DetailQty.EditValue;
  iSeq := View_DetailSeq.EditValue;


  if not Assigned(frm_SerialAddEdit) then

    frm_SerialAddEdit := Tfrm_SerialAddEdit.Create(Application);

  frm_SerialAddEdit.ShowModal;


  tblSalesBillDtl.Refresh;
  iValue01 := View_DetailQty.EditValue;

  if iCount > iValue01 then begin
    ShowMessage('you add ' + IntToStr(iCount) + ' serial nos on ' + IntToStr(iValue01) + ' Quantity. Correct then Quantity.');

  end;

end;

procedure Tfrm_Estimate.View_DetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if AValue > 0 then begin
    lbl_Gross.EditValue := FormatCurr('#,##0', AValue);
  end else begin
    lbl_Gross.EditValue := '0';
  end;
end;

procedure Tfrm_Estimate.View_DetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if AValue > 0 then begin
    lbl_STAX.EditValue := FormatCurr('#,##0', AValue);
  end else begin
    lbl_STAX.EditValue := '0';
  end;
end;

procedure Tfrm_Estimate.View_DetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if AValue > 0 then begin

    rReal03 := AValue;

    lbl_Net.EditValue := FormatCurr('#,##0', AValue);
  end else begin
    rReal03 := 0;
    lbl_Net.EditValue := '0';
  end;



end;

procedure Tfrm_Estimate.sp_Util_LOV_COA_05AfterScroll(DataSet: TDataSet);
begin
  srt05 := sp_Util_LOV_COA_05.FieldValues['NTNNO'];
  srt06 := sp_Util_LOV_COA_05.FieldValues['GSTNO'];

  lbl_PartyNTNNO.Caption := 'NTN :- ' + srt05;
  lbl_PartyGSTNO.Caption := 'GST :- ' + srt06;
end;

procedure Tfrm_Estimate.tblSalesBillMstBeforePost(DataSet: TDataSet);
begin

  DataSet.FieldByName('UserID').Value := sUserName;
  DataSet.FieldByName('LastEditDate').Value := DateTimeToStr(Now());

end;

procedure Tfrm_Estimate.dxBarButton2Click(Sender: TObject);
begin


  {tblSalesBillDtl.First;

  while not tblSalesBillDtl.Eof do
  begin



    ShowMessage(tblSalesBillDtlNetAmount.AsString);

    tblSalesBillDtl.Next;
  end;}

  srt01 := View_Detail.DataController.Summary.FooterSummaryTexts[3];
  iValue01 := View_Detail.DataController.Summary.FooterSummaryValues[3];
  ShowMessage(srt01 + ' : ' + IntToStr(iValue01));
end;

procedure Tfrm_Estimate.tblSalesBillMstBeforeScroll(DataSet: TDataSet);
begin
  if tblSalesBillMst.State in ([dsEdit, dsInsert]) then begin
    ShowMessage('Hit the save button');
    Abort;
  end;
end;

procedure Tfrm_Estimate.rg_TypeCodePropertiesChange(Sender: TObject);
begin
  if rg_TypeCode.EditValue = 1 then begin
    View_DetailSalesTaxPer.Visible := True;
    View_DetailSalesTaxAmount.Visible := True;
  end else if rg_TypeCode.EditValue = 2 then begin
    View_DetailSalesTaxPer.Visible := false;
    View_DetailSalesTaxAmount.Visible := false;
  end;
end;

end.

