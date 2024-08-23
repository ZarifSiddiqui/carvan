unit Unit_BankBook;

interface

uses
  UPdsmon,
  shellapi,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxLabel, dxBarDBNav, dxBar, cxBarEditItem, cxClasses,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxContainer, cxGroupBox, cxRadioGroup, cxDBEdit, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxDBLabel, cxDropDownEdit,
  cxCalendar, cxMaskEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMemo, ExtCtrls, DBAccess, MSAccess, MemDS, cxGridLevel,
  cxGridCustomView, cxGrid, UCrpeDS,
  UCrpeClasses, UCrpe32, RzCommon, RzDBLook, cxCurrencyEdit, cxCheckBox,
  Menus, StdCtrls, cxButtons, DBCtrls, RzStatus, RzDBStat, RzPanel,
  cxNavigator, cxDBNavigator, dxSkinsCore, dxSkinSharp, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinSilver, Grids, DBGrids;

type
  Tfrm_BankBook = class(TForm)
    Grid_Debit: TcxGrid;
    View_Debit: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    tblBankMst: TMSTable;
    tblBankDtl: TMSTable;
    ds_tblBankMst: TMSDataSource;
    ds_tblBankDtl: TMSDataSource;
    Panel_Header: TPanel;
    xvDate: TcxDBDateEdit;
    cxLabel1: TcxLabel;
    View_DebitCompanyId: TcxGridDBColumn;
    View_DebitVoucherNo: TcxGridDBColumn;
    View_DebitAccountCode: TcxGridDBColumn;
    View_DebitDescriptionEntry: TcxGridDBColumn;
    View_DebitChequeNo: TcxGridDBColumn;
    View_DebitChequeDate: TcxGridDBColumn;
    View_DebitType: TcxGridDBColumn;
    View_DebitAmount: TcxGridDBColumn;
    View_DebitCancel: TcxGridDBColumn;
    View_DebitChqClear: TcxGridDBColumn;
    View_DebitChqClearDate: TcxGridDBColumn;
    View_DebitBankStDate: TcxGridDBColumn;
    View_DebitNotCharge: TcxGridDBColumn;
    View_DebitCostCCode: TcxGridDBColumn;
    View_DebitSubCostCCode: TcxGridDBColumn;
    View_DebitVoucherNoOld: TcxGridDBColumn;
    View_DebitSno: TcxGridDBColumn;
    VoucherType: TcxDBRadioGroup;
    ds_MSQuery_HeaderCOA: TMSDataSource;
    ds_MSQuery_COA_Dtl: TMSDataSource;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    btn_doc_Print: TdxBarLargeButton;
    btn_Document_find: TdxBarLargeButton;
    Bar_FormName: TcxBarEditItem;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    btn_Refresh: TdxBarDBNavButton;
    sp_Util_LOV_COA_01: TMSStoredProc;
    sp_Util_LOV_COA_02: TMSStoredProc;
    CashVoucherPrint: TMSStoredProc;
    CB_Print: TcxBarEditItem;
    Crpe: TCrpe;
    CrpeDS: TCrpeDS;
    Folio: TcxDBCurrencyEdit;
    sp_Util_Save_Voucher: TMSStoredProc;
    View_DebitFKFolio: TcxGridDBColumn;
    Panel_PR: TPanel;
    Paid_Desc: TcxDBTextEdit;
    Panel_Desc: TPanel;
    Description: TcxDBTextEdit;
    Panel_CA: TPanel;
    LC_ControlAC: TcxDBLookupComboBox;
    View_DebitDebit: TcxGridDBColumn;
    View_DebitCredit: TcxGridDBColumn;
    View_DebitStaxInvNo: TcxGridDBColumn;
    View_DebitSTaxInvDate: TcxGridDBColumn;
    View_DebitTypeCode: TcxGridDBColumn;
    View_DebitExcludingStAmt: TcxGridDBColumn;
    View_DebitStaxPer: TcxGridDBColumn;
    View_DebitSTaxAmt: TcxGridDBColumn;
    View_DebitNetAmount: TcxGridDBColumn;
    View_DebitTransfer: TcxGridDBColumn;
    Panel_Diff: TPanel;
    Edit_Diff: TcxCurrencyEdit;
    cxLabel3: TcxLabel;
    btn_Save: TdxBarLargeButton;
    btn_Edit: TdxBarLargeButton;
    btn_Insert: TdxBarLargeButton;
    View_DebitColumn1: TcxGridDBColumn;
    btn_Delete: TdxBarLargeButton;
    VoucherNo: TcxDBTextEdit;
    sp_Create_Header_Voucher: TMSStoredProc;
    btn_AdminAction: TdxBarSubItem;
    btn_ChangeDate: TdxBarLargeButton;
    btn_EnableDisable: TButton;
    RzStatusBar2: TRzStatusBar;
    RzDBStatusPane1: TRzDBStatusPane;
    RzDBStatusPane3: TRzDBStatusPane;
    cxDBRadioGroup1: TcxDBRadioGroup;
    RzDBStatusPane2: TRzDBStatusPane;
    sp_Get_Rlxn_Lov: TMSStoredProc;
    ds_sp_Get_Rlxn_Lov: TMSDataSource;
    GB_AddEdit: TGroupBox;
    LC_AccountCode: TcxDBLookupComboBox;
    ChequeNo: TcxDBTextEdit;
    ChequeDate: TcxDBDateEdit;
    Amount: TcxDBCurrencyEdit;
    Credit: TcxDBCurrencyEdit;
    LC_CostCCode: TcxDBLookupComboBox;
    btn_SaveLine: TcxButton;
    sp_Get_Rlxn_Lov_SubC: TMSStoredProc;
    ds_sp_Get_Rlxn_Lov_SubC: TMSDataSource;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    lbl_Amount: TcxLabel;
    lbl_Credit: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    btn_AddLine: TcxButton;
    LC_SubCostCCode: TcxDBLookupComboBox;
    DescriptionEntry: TcxDBMemo;
    sp_Util_LOV_COA_03: TMSStoredProc;
    ds_sp_Util_LOV_COA_03: TMSDataSource;
    RzStatusPane1: TRzStatusPane;
    cxLabel2: TcxLabel;
    vDate: TcxDBDateEdit;
    procedure FormShow(Sender: TObject);
    procedure btn_doc_PrintClick(Sender: TObject);
    procedure btn_Document_findClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure View_DebitTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems6GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure View_DebitTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems7GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure tblBankDtlAfterScroll(DataSet: TDataSet);
    procedure Grid_DebitEnter(Sender: TObject);
    procedure View_DebitTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure btn_SaveClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_InsertClick(Sender: TObject);
    procedure tblBankMstAfterScroll(DataSet: TDataSet);
    procedure View_DebitColumn1PropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure View_DebitColumn1PropertiesCloseUp(Sender: TObject);
    procedure CB_PrintPropertiesChange(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure dxBarLargeButton1Click(Sender: TObject);
    procedure btn_ChangeDateClick(Sender: TObject);
    procedure tblBankDtlBeforePost(DataSet: TDataSet);
    procedure btn_EnableDisableClick(Sender: TObject);
    procedure VoucherNoPropertiesChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LC_AccountCodePropertiesCloseUp(Sender: TObject);
    procedure tblBankDtlBeforeInsert(DataSet: TDataSet);
    procedure btn_SaveLineClick(Sender: TObject);
    procedure LC_AccountCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure LC_CostCCodePropertiesCloseUp(Sender: TObject);
    procedure btn_AddLineClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_BankBook: Tfrm_BankBook;
  iLFormID: integer;

implementation
uses
  Unit_DM,
  Unit_LOV_Voucher, Unit_PrintOption, Unit_ChangeDate;
{$R *.dfm}

procedure Tfrm_BankBook.FormShow(Sender: TObject);
begin

  //ShowMessage( IntToStr(iFormID) + ': ' + sMasterTbl + ' : ' + sDetailTbl + ' : ' + sFormType + ' : ' + sFileName);
  //vDate.Properties.MinDate := dFYearFrom;
  //vDate.Properties.MaxDate := dFYearTo;

  //Dm.UserFormPrefrence(sUserName,iFormID);


  Bar_FormName.Caption := 'Bank Book';
  iLFormID := iFormID;

  btn_Insert.Enabled := bRightAdd;
  btn_Edit.Enabled := bRightEdit;
  btn_Delete.Enabled := bRightDelete;
  btn_ChangeDate.Enabled := bRightChangeDate;


  View_Debit.NavigatorButtons.Delete.Enabled := bRightDeleteLine;
  View_Debit.OptionsData.Deleting := bRightDeleteLine;

 
  /////


  //tblCashMst.DisableControls;
 // tblCashDtl.DisableControls;
  //tblCashMst.Close;
  //tblCashDtl.Close;

  //tblCashMst.TableName := 'tblBankMst';
  //tblCashDtl.TableName := 'tblBankDtl';

     // Set filter as per selected year
  if sUserType = 'U' then begin
    sFilterText := 'FYEAR = ' + QuotedStr(sFiscal) ; // + ' AND UserID = ' + QuotedStr(sUserName);
    tblBankMst.Filter := sFilterText; // 'FYEAR = ' + QuotedStr(sFiscal);
    tblBankMst.Filtered := true;
  end;


  tblBankMst.Open;
  tblBankDtl.Open;

 // tblCashMst.EnableControls;
 // tblCashDtl.EnableControls;

  sp_Util_LOV_COA_01.Close;
  sp_Util_LOV_COA_01.ParamByName('@sUserID').Value := sUserName;
  sp_Util_LOV_COA_01.ParamByName('@sType').Value := sFileName;
  sp_Util_LOV_COA_01.ParamByName('@Option').Value := 1;
  sp_Util_LOV_COA_01.ExecProc;

  sp_Util_LOV_COA_02.Close;
  sp_Util_LOV_COA_02.ParamByName('@sUserID').Value := sUserName;
  sp_Util_LOV_COA_02.ParamByName('@sType').Value := sFileName;
  sp_Util_LOV_COA_02.ParamByName('@Option').Value := 2;
  sp_Util_LOV_COA_02.ExecProc;

  sp_Util_LOV_COA_03.Close;
  sp_Util_LOV_COA_03.ParamByName('@sUserID').Value := sUserName;
  sp_Util_LOV_COA_03.ParamByName('@sType').Value := sFileName;
  sp_Util_LOV_COA_03.ParamByName('@Option').Value := 3;
  sp_Util_LOV_COA_03.ExecProc;


  dm.LOV_CostC.Close;
  dm.LOV_SubCostC.Close;
  dm.LOV_CostC.ParamByName('@Control').Value := 'CostC';
  dm.LOV_SubCostC.ParamByName('@Control').Value := 'SubCostC';
  dm.LOV_CostC.Open;
  dm.LOV_SubCostC.Open;

  {Set True}
  VoucherType.Visible := True;
  Panel_PR.Visible := True;
  Panel_CA.Visible := True;

  Panel_CA.Enabled := True;

  View_DebitDebit.Visible := False;
  View_DebitCredit.Visible := False;
  View_DebitNotCharge.Visible := False;
  Credit.Visible := False;
  lbl_Credit.Visible := False;

  lbl_Amount.Caption := 'Amount';
  View_DebitAmount.Visible := True;

  Panel_Diff.Visible := False;
   sLOV_FormName := 'Bank Voucher List';
    sMsp_Print := 'BANKVoucherPrint';
    sPrintFormat := sReportDirectory + 'CashVoucher.rpt';

  {if iLFormID = 502 then
  begin
    sSP_LOV := 'CashVoucherList';
    sLOV_FormName := 'Cash Voucher List';
    sMsp_Print := 'CashVoucherPrint';
    sPrintFormat := sReportDirectory + 'CashVoucher.rpt';
  end
  else if iLFormID = 503 then
  begin
    sSP_LOV := 'BankVoucherList';
    sLOV_FormName := 'Bank Voucher List';
    sMsp_Print := 'BANKVoucherPrint';
    sPrintFormat := sReportDirectory + 'CashVoucher.rpt';

  end

  else if iLFormID = 504 then
  begin
    sSP_LOV := 'JVList';
    sLOV_FormName := 'Journal Voucher List';
    sMsp_Print := 'JV_Print';
    sPrintFormat := sReportDirectory + 'CashVoucher.rpt';
    VoucherType.Visible := False;
    Panel_PR.Visible := False;
    Panel_CA.Visible := False;

    View_DebitAmount.Visible := False;
    View_DebitDebit.Visible := True;
    View_DebitCredit.Visible := True;

    Panel_Diff.Visible := True;

    // edit panel
    lbl_Amount.Caption := 'Debit';
    lbl_Credit.Visible := True;
    Amount.DataBinding.DataField := View_DebitDebit.DataBinding.FieldName;
    Credit.Visible := True

  end;  }


  CashVoucherPrint.StoredProcName := sMsp_Print;

  // if open from ledger

  //tblCashMst.Next;
  //tblCashMst.First;

  if Length(sRefNo) > 3 then
  begin
    tblBankMst.First;
    tblBankMst.Locate('VoucherNo', sRefNo, [loCaseInsensitive]);

    //tblCashDtl.First;
   // tblCashDtl.Locate('AccountCode', sAccountCode, [loCaseInsensitive]);
  end;

   // open from log book
  if iDoc_Filter > 0 then begin
       tblBankMst.First;
       tblBankMst.Locate('Folio', iDoc_Filter, [loCaseInsensitive]);

  end;


  sp_Get_Rlxn_Lov.ExecProc;
  sp_Get_Rlxn_Lov_SubC.ExecProc;

  {bEnabled := False;
  btn_EnableDisableClick(nil);}
  { if sp_Util_LOV_COA_01.RecordCount = 1 then
   begin
     Panel_CA.Enabled := False;
   end;}

end;

procedure Tfrm_BankBook.btn_doc_PrintClick(Sender: TObject);
begin

  if Folio.EditValue <> 0 then begin

  iFolio := Folio.EditValue ;

     sSQL := 'Exec dbo.sp_Print_BankVoucher ' + QuotedStr(IntToStr(iFolio)) + ',' + QuotedStr(sCompanyCode)  ;
   frm_PrintOption.MyPrintView(iFolio,sSQL,'CashVoucher.rpt');

   // frm_PrintOption.MyPrintView(iFolio,'sp_Print_BankVoucher','CashVoucher.rpt');

    end;
 { try
    CashVoucherPrint.Close;
    CashVoucherPrint.Params.ParamByName('@VoucherFrom').Value :=
      VoucherNo.EditValue;
    CashVoucherPrint.Params.ParamByName('@VoucherTo').Value :=
      VoucherNo.EditValue;
    CashVoucherPrint.Params.ParamByName('@CompanyId').Value := sCompanyCode;
    CashVoucherPrint.Active := True;
  except
    on E: Exception do
    begin

      MessageDlg(pAnsiChar(E.Message), mtError, [mbOK], 0);
    end;
  end;

  CrpeDS.DataSet := CashVoucherPrint;

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

procedure Tfrm_BankBook.btn_Document_findClick(Sender: TObject);
begin
  sFilterText := '';

  {if iFormID = 502 then

    sSP_LOV := '1' //'CashVoucherList'

  else if iFormID = 503 then

    sSP_LOV := '2' //'BankVoucherList'

  else if iFormID = 504 then

    sSP_LOV := '3'; //'JVList';
   }
     sSP_LOV := '2' ;

  if not Assigned(frm_LOV_Voucher) then

    frm_LOV_Voucher := Tfrm_LOV_Voucher.Create(Application);

  frm_LOV_Voucher.ShowModal;

  if sFilterText <> '' then
  begin
    tblBankMst.First;
    tblBankMst.Locate('VoucherNo', sFilterText, [loCaseInsensitive]);
  end;

end;

procedure Tfrm_BankBook.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

  if (Key = #27) then
  begin
    Close;
  end;
end;

procedure Tfrm_BankBook.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure
  Tfrm_BankBook.View_DebitTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems6GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  rDebit := 0;
  if AValue > 0 then
    rDebit := AValue;
end;

procedure
  Tfrm_BankBook.View_DebitTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems7GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  rCredit := 0;
  if AValue > 0 then
    rCredit := AValue;
end;

procedure Tfrm_BankBook.tblBankDtlAfterScroll(DataSet: TDataSet);
begin

  //if iFormID = 504 then begin
  Edit_Diff.EditValue := rDebit - rCredit;
  //end;

end;

procedure Tfrm_BankBook.Grid_DebitEnter(Sender: TObject);
begin
  if tblBankMst.State in [dsEdit] then
  begin

    tblBankMst.Post;

  end;

  // frm_BookEntry.KeyPreview := False;
  //tblCashDtl.Insert;
  //View_DebitAccountCode.FocusWithSelection;

end;

procedure
  Tfrm_BankBook.View_DebitTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  rDebit := 0;
  if AValue > 0 then
    rDebit := AValue;
end;

procedure Tfrm_BankBook.btn_SaveClick(Sender: TObject);
begin

  if tblBankMst.State in [dsEdit] then
  begin
    tblBankMst.Post;
    // tblCashMst.RefreshRecord;
  end;

  if tblBankDtl.State in [dsEdit] then
  begin
    tblBankDtl.Post;
    tblBankDtl.Refresh;
  end;

  if (iFormID = 502) or (iFormID = 503) then
  begin
    if LC_ControlAC.Text = '' then
    begin
      MessageDlg('Select the Control Account', mtError, [mbOK], 0);
      exit;
    end;

    if rDebit = 0 then
    begin

      MessageDlg('Empty voucher can not save.', mtError, [mbOK], 0);
      exit;

    end;
  end
  else if iFormID = 504 then
  begin

    if tblBankDtl.RecordCount = 0 then
    begin
      MessageDlg('Empty voucher can not save.', mtError, [mbOK], 0);
      exit;
    end;
    if (rDebit - rCredit <> 0) then
    begin

      MessageDlg('Un-balance voucher can not save', mtError, [mbOK], 0);
      exit;

    end;
  end;

  //if Length(lbl_vNumber.Caption) = 0 then
  if VoucherNo.EditValue = '0' then
  begin

    if MessageDlg(
      'Are you sure want to Save Voucher?',
      mtConfirmation,
      [mbYes, mbNo],
      0) = mrYes then
    begin

      iFolio := Folio.EditValue;

      sp_Util_Save_Voucher.Close;
      sp_Util_Save_Voucher.ParamByName('@sCompanyId').Value := sCompanyCode;
      sp_Util_Save_Voucher.ParamByName('@sUserID').Value := sUserName;
      sp_Util_Save_Voucher.ParamByName('@iFolio').Value := iFolio;
      sp_Util_Save_Voucher.ParamByName('@iFormID').Value := iLFormID;
      sp_Util_Save_Voucher.ParamByName('@Option').Value := 1;
      sp_Util_Save_Voucher.ExecProc;

      tblBankMst.Refresh;
      tblBankMst.First;
      tblBankMst.Locate('Folio', iFolio, [loCaseInsensitive]);

    end;

  end;


  try
      dm.SMS_Voucher(iFolio , 503);
    except
      on E: Exception do
      begin
          MessageDlg(pAnsiChar(E.Message), mtError, [mbOK], 0);
      end;
    end;


  bEnabled := False;
  btn_EnableDisableClick(nil);





end;

procedure Tfrm_BankBook.btn_EditClick(Sender: TObject);
begin

  if tblBankMst.FieldByName('Cancel').Value = '1' then
  begin
    MessageDlg('Voucher is Canceled. can not be edit.', mtError, [mbOK], 0);
    exit;
  end;

  bEnabled := True;
  btn_EnableDisableClick(nil);

end;

procedure Tfrm_BankBook.btn_InsertClick(Sender: TObject);
begin
  sp_Create_Header_Voucher.Close;
  sp_Create_Header_Voucher.ParamByName('@CompanyCode').Value := sCompanyCode;
  sp_Create_Header_Voucher.ParamByName('@UserID').Value := sUserName;
  sp_Create_Header_Voucher.ParamByName('@FiscalYear').Value := sFyear;
  sp_Create_Header_Voucher.ParamByName('@FormID').Value := iLFormID;
  sp_Create_Header_Voucher.ExecProc;

  iFolio := sp_Create_Header_Voucher.FieldValues['NextFolio'];

  {tblCashMst.Insert;
  tblCashMst.FieldByName('CompanyId').Value := sCompanyCode;
  tblCashMst.FieldByName('UserID').Value := sUserName;
  tblCashMst.Post;
  tblCashMst.RefreshRecord; }

  bEnabled := True;

  tblBankMst.Refresh;
  tblBankMst.First;
  tblBankMst.Locate('Folio', iFolio, [loCaseInsensitive]);

  if iFormID <> 504 then

    LC_ControlAC.SetFocus
  else if iFormID = 504 then
    Description.SetFocus;

end;

procedure Tfrm_BankBook.tblBankMstAfterScroll(DataSet: TDataSet);
begin

 // Edit_Diff.EditValue := rDebit - rCredit;

  if Length(VoucherNo.EditingText) > 3 then
    bEnabled := False
  else
    bEnabled := True;

  btn_EnableDisableClick(nil);

end;

procedure Tfrm_BankBook.View_DebitColumn1PropertiesValidate(
  Sender: TObject; var DisplayValue: Variant; var ErrorText: TCaption;
  var Error: Boolean);
begin

  srt01 := VarToStrDef(Description.EditValue, '.');

  if VoucherType.EditValue = 'R' then
    srt02 := 'C';
  if VoucherType.EditValue = 'P' then
    srt02 := 'D';

  View_DebitDescriptionEntry.EditValue := srt01;
  View_DebitType.EditValue := srt02;
  View_DebitChequeDate.EditValue := VDate.EditValue;

end;

procedure Tfrm_BankBook.View_DebitColumn1PropertiesCloseUp(
  Sender: TObject);
begin
  if View_DebitAccountCode.EditValue > '0' then
  begin
    View_DebitDescriptionEntry.FocusWithSelection;
  end;
end;

procedure Tfrm_BankBook.CB_PrintPropertiesChange(Sender: TObject);
begin
  sCB_Print := CB_Print.EditValue;
end;

procedure Tfrm_BankBook.btn_DeleteClick(Sender: TObject);
begin

  {if sUserName <> 'ADMIN' then
  begin
    MessageDlg('Only Admin Can Do this.', mtError, [mbOK], 0);
    exit;
  end;}

  if MessageDlg(
    'Are you sure want to delete Voucher ?',
    mtConfirmation,
    [mbYes, mbNo],
    0) = mrYes then
  begin

    dm.sp_Util_Voucher_Delete.Close;
    dm.sp_Util_Voucher_Delete.ParamByName('@sCompanyId').Value :=
      sCompanyCode;
    dm.sp_Util_Voucher_Delete.ParamByName('@sUserID').Value := sUserName;
    dm.sp_Util_Voucher_Delete.ParamByName('@iFolio').Value := Folio.EditValue;
    dm.sp_Util_Voucher_Delete.ParamByName('@iFormID').Value := iFormID;
    dm.sp_Util_Voucher_Delete.ParamByName('@Option').Value := 1;
    dm.sp_Util_Voucher_Delete.ExecProc;

    {tblCashMst.Edit;
    tblCashMst.FieldByName('Cancel').Value := 'C';
    tblCashMst.Post; }
    bEnabled := False;
    tblBankMst.Refresh;

  end;

end;

procedure Tfrm_BankBook.dxBarLargeButton1Click(Sender: TObject);
begin
  if VoucherNo.EditValue = '0' then
  begin
    tblBankMst.Edit;
    tblBankMst.FieldByName('VoucherDate').Value := Now;
    tblBankMst.Post;
  end;
  tblBankMst.Refresh;
  

end;

procedure Tfrm_BankBook.btn_ChangeDateClick(Sender: TObject);
begin
  dFromDate :=  vDate.Date;
  iFolio := Folio.EditValue;
  iFormID := iLFormID;
  sFormType := sFormType;
  sRefNo := VoucherNo.EditingText;

  dlg_ChangeDate.ShowModal;

  if dFromDate <> dToDate then
  begin
    tblBankMst.Refresh;
    tblBankMst.Locate('Folio', iFolio, [loCaseInsensitive]);

  end;

end;

procedure Tfrm_BankBook.tblBankDtlBeforePost(DataSet: TDataSet);
begin
  tblBankDtl.FieldByName('UserID').Value := sUserName;
end;

procedure Tfrm_BankBook.btn_EnableDisableClick(Sender: TObject);
begin

  Panel_Header.Enabled := bEnabled;
  Panel_PR.Enabled := bEnabled;
  GB_AddEdit.Enabled := bEnabled;
  //Grid_Debit.Enabled := bEnabled;
end;

procedure Tfrm_BankBook.VoucherNoPropertiesChange(Sender: TObject);
begin
  if Length(VoucherNo.EditingText) > 3 then
  begin
    VoucherType.Enabled := False;
    LC_ControlAC.Enabled := False;
    Description.Enabled := False;

  end
  else
  begin
    VoucherType.Enabled := True;
    LC_ControlAC.Enabled := True;
    Description.Enabled := True;

  end;
end;

procedure Tfrm_BankBook.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if MessageDlg(
    'Are you sure want to close?',
    mtConfirmation,
    [mbYes, mbNo],
    0) = mrNo then
    CanClose := False
  else
    CanClose := True;

end;

procedure Tfrm_BankBook.FormKeyDown(Sender: TObject; var Key: Word;
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

procedure Tfrm_BankBook.LC_AccountCodePropertiesCloseUp(Sender: TObject);
begin

  LC_CostCCode.EditValue := '';
  LC_SubCostCCode.EditValue := '';

  if Length(LC_AccountCode.EditText) > 3 then
  begin
    sp_Get_Rlxn_Lov.Close;
    sp_Get_Rlxn_Lov.ParamByName('@Link1').Value :=
      LC_AccountCode.InternalEditValue;
    sp_Get_Rlxn_Lov.ParamByName('@Link2').Value :=
      LC_AccountCode.InternalEditValue;
    sp_Get_Rlxn_Lov.ParamByName('@Control').Value := 'CostC';
    sp_Get_Rlxn_Lov.ExecProc;

    if sp_Get_Rlxn_Lov.RecordCount > 0 then
      bRequiredCostC := True
    else
      bRequiredCostC := False;

    LC_CostCCode.Enabled := bRequiredCostC;
    LC_SubCostCCode.Enabled := bRequiredCostC;

    tblBankDtl.FieldByName('CostCCode').Required := bRequiredCostC;
    tblBankDtl.FieldByName('SubCostCCode').Required := bRequiredCostC;

  end;
end;

procedure Tfrm_BankBook.tblBankDtlBeforeInsert(DataSet: TDataSet);
begin
  LC_AccountCode.SetFocus;
end;

procedure Tfrm_BankBook.btn_SaveLineClick(Sender: TObject);
begin


  if ChequeDate.EditValue < vDate.EditValue then begin

     MessageDlg('Cheque Date Must Greather then Voucher Date.', mtError, [mbOK], 0);
    Exit;
  end;

  rReal01 := 0;

  rDebit := 0;
  rCredit := 0;

  rReal01 := dm.IfNull(Amount.EditValue, 0);

  rDebit := dm.IfNull(Amount.EditValue, 0);
  rCredit := dm.IfNull(Credit.EditValue, 0);

  if (rReal01 + rDebit + rCredit) = 0 then
  begin
    MessageDlg('Must Enter Amount.', mtError, [mbOK], 0);
    Exit;

  end;

  if tblBankDtl.State in [dsEdit, dsInsert] then
  begin
    tblBankDtl.Post;
    tblBankDtl.Refresh;
  end;
end;

procedure Tfrm_BankBook.LC_AccountCodePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin
  srt01 := VarToStrDef(Description.EditValue, '.');

  if VoucherType.EditValue = 'R' then
    srt02 := 'C';
  if VoucherType.EditValue = 'P' then
    srt02 := 'D';

  View_DebitDescriptionEntry.EditValue := srt01;
  View_DebitType.EditValue := srt02;
  View_DebitChequeDate.EditValue := vDate.EditValue;

  LC_AccountCodePropertiesCloseUp(nil);

end;

procedure Tfrm_BankBook.LC_CostCCodePropertiesCloseUp(Sender: TObject);
begin
  if Length(LC_CostCCode.EditText) > 3 then
  begin
    sp_Get_Rlxn_Lov_SubC.Close;
    sp_Get_Rlxn_Lov_SubC.ParamByName('@Link1').Value :=
      LC_AccountCode.InternalEditValue;
    sp_Get_Rlxn_Lov_SubC.ParamByName('@Link2').Value :=
      LC_CostCCode.InternalEditValue;
    sp_Get_Rlxn_Lov_SubC.ParamByName('@Control').Value := 'CostS';
    sp_Get_Rlxn_Lov_SubC.ExecProc;

    if sp_Get_Rlxn_Lov_SubC.RecordCount > 0 then
      bRequiredSubCostC := True
    else
      bRequiredSubCostC := False;

    LC_SubCostCCode.EditValue := '';

    LC_SubCostCCode.Enabled := bRequiredSubCostC;
    tblBankDtl.FieldByName('SubCostCCode').Required := bRequiredSubCostC;
  end;
end;

procedure Tfrm_BankBook.btn_AddLineClick(Sender: TObject);
begin
  tblBankDtl.Append;
end;

end.
