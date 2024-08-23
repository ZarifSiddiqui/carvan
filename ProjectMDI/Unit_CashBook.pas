unit Unit_CashBook;
  // formid = 502
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinSilver, Menus, StdCtrls,
  cxButtons, cxLabel, ToolWin, ComCtrls, cxGroupBox, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCalendar, DB, MemDS, DBAccess, MSAccess,
  dxSkinsdxStatusBarPainter, dxStatusBar, dxmdaset, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxDBData, cxCurrencyEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxDBEdit, cxDBLabel, cxDBEditRepository, cxMemo, dxSkinsdxBarPainter,
  dxBarDBNav, dxBar, cxBarEditItem, ExtCtrls, Grids, DBGrids, CRGrid;

type
  Tfrm_CashBook = class(TForm)
    V_CountrolAC: TcxLookupComboBox;
    cxLabel1: TcxLabel;
    txtPaidDesc: TcxTextEdit;
    cxLabel2: TcxLabel;
    Rg_VoucherType: TcxRadioGroup;
    V_Date: TcxDateEdit;
    cxLabel3: TcxLabel;
    txtVouhcerNo: TcxTextEdit;
    sp_CashVoucher_View: TMSStoredProc;
    sp_Util_LOV_COA_01: TMSStoredProc;
    ds_sp_Util_LOV_COA_01: TMSDataSource;
    cxLabel4: TcxLabel;
    txtDescription: TcxTextEdit;
    StatusBar: TdxStatusBar;
    dxMemData1: TdxMemData;
    MSDataSource1: TMSDataSource;
    Grid_Debit: TcxGrid;
    View_Debit: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    dxMemData1AccountCode: TStringField;
    dxMemData1DescriptionEntry: TStringField;
    dxMemData1CostCCode: TStringField;
    dxMemData1SubCostCCode: TStringField;
    View_DebitRecId: TcxGridDBColumn;
    View_DebitAccountCode: TcxGridDBColumn;
    View_DebitDescriptionEntry: TcxGridDBColumn;
    View_DebitAmount: TcxGridDBColumn;
    View_DebitCostCCode: TcxGridDBColumn;
    View_DebitSubCostCCode: TcxGridDBColumn;
    dxMemData1Type: TStringField;
    dxMemData1Sno: TStringField;
    View_DebitType: TcxGridDBColumn;
    View_DebitSno: TcxGridDBColumn;
    dxMemData1Amount: TCurrencyField;
    dxMemData1LineCode: TStringField;
    View_DebitLineCode: TcxGridDBColumn;
    sp_502_HeaderAddEdit: TMSStoredProc;
    sp_502_DetailAddEdit: TMSStoredProc;
    sp_Util_LOV_COA_02: TMSStoredProc;
    ds_sp_Util_LOV_COA_02: TMSDataSource;
    sp_Print_CashVoucher: TMSStoredProc;
    rg_Status: TcxRadioGroup;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_FirstRec: TdxBarLargeButton;
    btn_doc_Print: TdxBarLargeButton;
    btn_Document_find: TdxBarLargeButton;
    btn_Save: TdxBarLargeButton;
    btn_Edit: TdxBarLargeButton;
    btn_Add: TdxBarLargeButton;
    btn_Delete: TdxBarLargeButton;
    btn_AdminAction: TdxBarSubItem;
    btn_ChangeDate: TdxBarLargeButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    btn_Refresh: TdxBarDBNavButton;
    GB_AddEdit: TcxGroupBox;
    lbl_LineNo: TcxDBLabel;
    cxLabel9: TcxLabel;
    LC_AccountCode: TcxDBLookupComboBox;
    cxLabel8: TcxLabel;
    LC_LineCode: TcxDBLookupComboBox;
    cxLabel5: TcxLabel;
    txt_Desc: TcxDBTextEdit;
    lbl_Amount: TcxLabel;
    Amount: TcxDBCurrencyEdit;
    btnAddLine: TcxButton;
    btnSaveLine: TcxButton;
    pnl_Caption: TPanel;
    btn_BackRec: TdxBarLargeButton;
    btn_NextRec: TdxBarLargeButton;
    txtFolio: TcxCurrencyEdit;
    TDate: TcxDBDateEdit;
    cxLabel6: TcxLabel;
    View_DebitTDate: TcxGridDBColumn;
    btn_LastRec: TdxBarLargeButton;
    dxMemData1sTDate: TStringField;
    procedure btnFindClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LC_AccountCodePropertiesCloseUp(Sender: TObject);
    procedure btnSaveLineClick(Sender: TObject);
    procedure btnAddLineClick(Sender: TObject);
    procedure LC_AccountCodePropertiesValidate(Sender: TObject;
      var DisplayValue: Variant; var ErrorText: TCaption;
      var Error: Boolean);
    procedure btn_SaveDocClick(Sender: TObject);
    procedure View_DebitCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnPrintClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_ChangeDateClick(Sender: TObject);
    procedure btn_BackRecClick(Sender: TObject);
    procedure btn_NextRecClick(Sender: TObject);
    procedure btn_LastRecClick(Sender: TObject);
    procedure btn_FirstRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearForm();
    procedure EnableDisable(bVal: Boolean);
    procedure OpenVoucher(iVal: Integer);
  end;

var
  frm_CashBook: Tfrm_CashBook;
  iLFormID: integer;
implementation
uses Unit_DM, Unit_LOV_Voucher, DateUtils, Unit_PrintOption, Unit_Index,
  Unit_ChangeDate;
{$R *.dfm}

procedure Tfrm_CashBook.EnableDisable(bVal: Boolean);
begin
   // Header
 V_CountrolAC.Enabled := bVal;
  txtPaidDesc.Enabled := bVal;
  txtDescription.Enabled := bVal;
  Rg_VoucherType.Enabled := bVal;

  //Line AddEdit
  //GB_AddEdit.Enabled := bVal;
  LC_AccountCode.Enabled := bVal;
  LC_AccountCode.Enabled := bVal;
  LC_LineCode.Enabled := bVal;
  txt_Desc.Enabled := bVal;
  Amount.Enabled := bVal;
  btnAddLine.Enabled := bVal;
  btnSaveLine.Enabled := bVal;
  TDate.Enabled := bVal ;
  



end;

procedure Tfrm_CashBook.OpenVoucher(iVal: Integer);
begin

  sp_CashVoucher_View.Close;
  sp_CashVoucher_View.ParamByName('@FYear').Value := sFiscal;
  sp_CashVoucher_View.ParamByName('@CompanyCode').Value := sCompanyCode;
  sp_CashVoucher_View.ParamByName('@sUserID').Value := sUserName;
  sp_CashVoucher_View.ParamByName('@Folio').Value := iVal;
  sp_CashVoucher_View.ParamByName('@VoucherNo').Value := sRefNo;
  sp_CashVoucher_View.ParamByName('@Option').Value := 1;

  sp_CashVoucher_View.Execute;



  txtVouhcerNo.EditValue := sp_CashVoucher_View.FieldValues['VoucherNo'];
  txtFolio.EditValue := sp_CashVoucher_View.FieldValues['Folio'];

  V_Date.EditValue := sp_CashVoucher_View.FieldValues['VoucherDate'];
  V_CountrolAC.InternalEditValue := sp_CashVoucher_View.FieldValues['BookAccount'];
  Rg_VoucherType.EditValue := sp_CashVoucher_View.FieldValues['vouchertype'];

  rg_Status.EditValue := sp_CashVoucher_View.FieldValues['Cancel'];

  txtPaidDesc.EditValue := sp_CashVoucher_View.FieldValues['Paid_Desc'];
  txtDescription.EditValue := sp_CashVoucher_View.FieldValues['Description'];

  srt01 := sp_CashVoucher_View.FieldValues['UserID'];
  srt02 := sp_CashVoucher_View.FieldValues['EntryDate'];

  StatusBar.Panels[0].Text := 'Create By : ' + srt01;
  StatusBar.Panels[1].Text := 'Entry Date : ' + srt02; // DateToStr(sp_CashVoucher_View.FieldValues['EntryDate']);


  sp_CashVoucher_View.Close;

  sp_CashVoucher_View.ParamByName('@Option').Value := 2;

  sp_CashVoucher_View.Execute;

  dxMemData1.Close;
  dxMemData1.Open;
  sp_CashVoucher_View.SetOrderBy('Sno');
  sp_CashVoucher_View.First;
  while not sp_CashVoucher_View.Eof do
  begin

    dxMemData1.Insert;
    dxMemData1AccountCode.Value := sp_CashVoucher_View.FieldValues['AccountCode'];
    dxMemData1DescriptionEntry.Value := sp_CashVoucher_View.FieldValues['DescriptionEntry'];
    dxMemData1Amount.Value := sp_CashVoucher_View.FieldValues['Amount'];

    dxMemData1CostCCode.Value := sp_CashVoucher_View.FieldValues['CostCCode'];
    dxMemData1SubCostCCode.Value := sp_CashVoucher_View.FieldValues['SubCostCCode'];
    dxMemData1Type.Value := sp_CashVoucher_View.FieldValues['Type'];
    dxMemData1Sno.Value := sp_CashVoucher_View.FieldValues['Sno'];
    dxMemData1LineCode.Value := sp_CashVoucher_View.FieldValues['LineCode'];
    dxMemData1sTDate.Value := sp_CashVoucher_View.FieldValues['ChequeDate'];
    dxMemData1.Post;
    sp_CashVoucher_View.Next;
  end;


end;

procedure Tfrm_CashBook.ClearForm();
begin
  dxMemData1.Close;
  txtVouhcerNo.EditValue := '0';
  txtFolio.EditValue := '0';
  V_Date.EditValue := Today();

  Rg_VoucherType.EditValue := 'P';

  txtPaidDesc.EditValue := '';
  txtDescription.EditValue := '';

  StatusBar.Panels[0].Text := 'Create By : ';
  StatusBar.Panels[1].Text := 'Entry Date : ';

end;


procedure Tfrm_CashBook.btnFindClick(Sender: TObject);
begin
  iFolio := 0;
  sFilterText := '';
  sSP_LOV := '1'; //'CashVoucherList'

  { BForm := Tfrm_LOV_Voucher.Create(self);
  BForm.FormStyle := fsMDIChild;
  BForm.OnCloseQuery := frm_Index.OnCloseQuery;
    BForm.OnClose := frm_Index.OnClose;
    BForm.OnKeyPress := frm_Index.OnKeyPress ;
 
    BForm.Icon := frm_Index.Icon;
    BForm.Position := poMainFormCenter ;
  BForm.Show;
  BForm.FreeOnRelease;}

  if not Assigned(frm_LOV_Voucher) then

    frm_LOV_Voucher := Tfrm_LOV_Voucher.Create(Application);

  frm_LOV_Voucher.ShowModal;


  if iFolio <> 0 then begin

    OpenVoucher(iFolio);
  end;
end;

procedure Tfrm_CashBook.FormShow(Sender: TObject);
begin

NullStrictConvert := false;

  iLFormID := iFormID;
  ClearForm();
   //Dm.UserFormPrefrence(sUserName,iFormID);

  btn_ChangeDate.Enabled := bRightChangeDate;
  btn_Add.Enabled := bRightAdd;
  btn_Edit.Enabled := bRightEdit;
  btn_Delete.Enabled := bRightDelete;

  EnableDisable(False);


  StatusBar.Panels[2].Text := 'Login User : ' + sUserName;
  sp_Util_LOV_COA_01.Close;
  sp_Util_LOV_COA_01.ParamByName('@sUserID').Value := sUserName;
  sp_Util_LOV_COA_01.ParamByName('@sType').Value := 'Cash Book';
  sp_Util_LOV_COA_01.ParamByName('@Option').Value := 1;
  sp_Util_LOV_COA_01.ExecProc;


  {if sp_Util_LOV_COA_01.RecordCount = 1 then begin
    V_CountrolAC.Enabled := False;
  end else begin
    V_CountrolAC.Enabled := True;
  end;}

  V_CountrolAC.InternalEditValue := sp_Util_LOV_COA_01.FieldValues['AccountCode'];

   // open account lov
  sp_Util_LOV_COA_02.Close;
  sp_Util_LOV_COA_02.ParamByName('@sUserID').Value := sUserName;
  sp_Util_LOV_COA_02.ParamByName('@sType').Value := 'Cash Book';
  sp_Util_LOV_COA_02.ParamByName('@Option').Value := 2;
  sp_Util_LOV_COA_02.ExecProc;

   // open cost rlxn all
  dm.sp_Get_Rlxn_Lov_MixAll.Close;
  dm.sp_Get_Rlxn_Lov_MixAll.ParamByName('@Link1').Value := 'na';
  dm.sp_Get_Rlxn_Lov_MixAll.ParamByName('@Link2').Value := 'na';
  dm.sp_Get_Rlxn_Lov_MixAll.ParamByName('@Control').Value := 'MixAll';
  dm.sp_Get_Rlxn_Lov_MixAll.ExecProc;

  if Length(sRefNo) > 3 then
  begin
    dm.MSQuery1.Close;
    dm.MSQuery1.SQL.Clear;
    dm.MSQuery1.SQL.Add('Select Top 1 Folio From dbo.tblCashMst where VoucherNo = ' + QuotedStr(sRefNo));
    dm.MSQuery1.Execute;

    iFolio := 0;
    iFolio := StrToInt(dm.MSQuery1.FieldValues['Folio']);


    OpenVoucher(iFolio);

  end;

  if iDoc_Filter > 0 then begin
    OpenVoucher(iDoc_Filter);
  end;
  if  iDoc_Filter = 0 then begin
   OpenVoucher(1);
  end;
end;

procedure Tfrm_CashBook.LC_AccountCodePropertiesCloseUp(Sender: TObject);
begin
  LC_LineCode.EditValue := '';


  if Length(LC_AccountCode.EditText) > 3 then
  begin
    sVal1 := LC_AccountCode.InternalEditValue;

    DM.FilterCostCentre(sVal1);

    LC_LineCode.Enabled := bRequiredCostC;

    //dxMemData1LineCode.Required := bRequiredCostC;



  end;
end;

procedure Tfrm_CashBook.btnSaveLineClick(Sender: TObject);
begin
  rReal01 := 0;

  rDebit := 0;
  rCredit := 0;

  rReal01 := dm.IfNull(Amount.EditValue, 0);



  if (rReal01 + rDebit + rCredit) = 0 then
  begin
    MessageDlg('Must Enter Amount.', mtError, [mbOK], 0);
    Exit;

  end;

  if dxMemData1.State in [dsEdit, dsInsert] then
  begin
   // dxMemData1vDate.Value := V_Date.EditValue ; 
    dxMemData1.Post;
   // dxMemData1.Refresh;
  end;

 //  LC_LineCode.Properties.ListSource :=  DM.ds_sp_Get_Rlxn_Lov_MixAll    ;
end;

procedure Tfrm_CashBook.btnAddLineClick(Sender: TObject);
begin
  srt01 := VarToStrDef(txtDescription.EditValue, '.');

  dxMemData1.Append;
  LC_AccountCode.SetFocus;
  dm.sp_Get_Rlxn_Lov_MixFilter.Close;
  txt_Desc.EditValue := srt01;
  Amount.EditValue := '0';
  dxMemData1Sno.Value := '0';
  TDate.EditValue := Today() ;
  
  


end;

procedure Tfrm_CashBook.LC_AccountCodePropertiesValidate(Sender: TObject;
  var DisplayValue: Variant; var ErrorText: TCaption; var Error: Boolean);
begin

  srt01 := VarToStrDef(txtDescription.EditValue, '.');
 // txt_Desc.Text := srt01 ;
  View_DebitDescriptionEntry.EditValue := srt01;

  srt01 := '';

end;

procedure Tfrm_CashBook.btn_SaveDocClick(Sender: TObject);
begin
   // Post Header
   V_Date.Update;
   
   V_Date.Enabled := False ;
  // ShowMessage(V_Date.EditText);
 { if dxMemData1.State in [dsEdit, dsInsert] then
  begin
    dxMemData1.Post;
  end; }

  iCount := dm.IfNull(dxMemData1.RecordCount, 0);
  if iCount = 0 then begin
    MessageDlg('Empty voucher can not save.', mtError, [mbOK], 0);
    exit;
  end;


   iFolio :=  dm.IfNull (txtFolio.EditValue,0);
  sRefNo := dm.IfNull (txtVouhcerNo.EditValue,'');
  sVoucherType := dm.IfNull ( Rg_VoucherType.EditValue,'P');

  sDocDate :=  V_Date.EditText;


  if iFolio = 0 then begin

    sp_502_HeaderAddEdit.Close;
    sp_502_HeaderAddEdit.ParamByName('@CompanyCode').Value := sCompanyCode;
    sp_502_HeaderAddEdit.ParamByName('@UserID').Value := sUserName;
    sp_502_HeaderAddEdit.ParamByName('@FiscalYear').Value := sFiscal;
    sp_502_HeaderAddEdit.ParamByName('@Folio').Value := iFolio;
    sp_502_HeaderAddEdit.ParamByName('@VoucherNo').Value := sRefNo;
    sp_502_HeaderAddEdit.ParamByName('@ControlAccount').Value := V_CountrolAC.InternalEditValue;
    sp_502_HeaderAddEdit.ParamByName('@VoucherType').Value := sVoucherType;
    sp_502_HeaderAddEdit.ParamByName('@PaidDesc').Value := txtPaidDesc.EditValue;
    sp_502_HeaderAddEdit.ParamByName('@Narration').Value := txtDescription.EditValue;
    sp_502_HeaderAddEdit.ParamByName('@VoucherDate').Value := V_Date.EditValue;
    sp_502_HeaderAddEdit.Execute;


    iFolio := sp_502_HeaderAddEdit.FieldValues['NextFolio'];
    sRefNo := sp_502_HeaderAddEdit.FieldValues['NextVoucherNo'];

    txtFolio.EditValue := iFolio;
    txtVouhcerNo.EditValue := sRefNo;

  end;




    // Post Detail


  if iFolio > 0 then begin
    dxMemData1.First;
    while not dxMemData1.Eof do
    begin
      sVal1 := VarToStrDef(dxMemData1Sno.Value, '0');
      if Length(sVal1) = 0 then sVal1 := '0';
      iSeq := StrToInt(sVal1);
      sAccountCode := dm.IfNull(dxMemData1AccountCode.Value,'0');

      srt01 := dm.IfNull(dxMemData1LineCode.Value,'0');
      srt02 := dxMemData1DescriptionEntry.Value;

      rReal01 := dm.IfNull(dxMemData1Amount.Value, 0);

      //
      srt014 := dxMemData1sTDate.Value ; //DateToStr(dxMemData1sTDate.Value)  ;
     // ShowMessage(srt014);
      // Date Format
      sp_502_DetailAddEdit.Close;

      sp_502_DetailAddEdit.ParamByName('@CompanyCode').Value := sCompanyCode;
      sp_502_DetailAddEdit.ParamByName('@UserID').Value := sUserName;
      sp_502_DetailAddEdit.ParamByName('@FiscalYear').Value := sFiscal;
      sp_502_DetailAddEdit.ParamByName('@Folio').Value := iFolio;
      sp_502_DetailAddEdit.ParamByName('@VoucherNo').Value := sRefNo;
      sp_502_DetailAddEdit.ParamByName('@AccountCode').Value := sAccountCode;
      sp_502_DetailAddEdit.ParamByName('@VoucherType').Value := sVoucherType;

      sp_502_DetailAddEdit.ParamByName('@Narration').Value := srt02;
      sp_502_DetailAddEdit.ParamByName('@VoucherDate').Value :=   srt014 ;  //sDocDate;
      sp_502_DetailAddEdit.ParamByName('@Amount').Value := rReal01;
      sp_502_DetailAddEdit.ParamByName('@LineCode').Value := srt01;
      sp_502_DetailAddEdit.ParamByName('@Seq').Value := iSeq;
      sp_502_DetailAddEdit.Execute;

      if iSeq = 0 then begin
        iSeq := sp_502_DetailAddEdit.FieldValues['iNextSeq'];
        dxMemData1.Edit;
        dxMemData1Sno.Value := IntToStr(iSeq);
        dxMemData1.Post;
      end;

      dxMemData1.Next;
    end;
  end;


  EnableDisable(False);
  try
      dm.SMS_Voucher(iFolio , 502);
    except
      on E: Exception do
      begin
          MessageDlg(pAnsiChar(E.Message), mtError, [mbOK], 0);
      end;
    end;
end;

procedure Tfrm_CashBook.View_DebitCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin

  DM.FilterCostCentre(View_DebitAccountCode.EditValue);
 // LC_LineCode.Enabled := bRequiredCostC;
end;

procedure Tfrm_CashBook.btn_AddClick(Sender: TObject);
begin


  ClearForm();

  dxMemData1.Close;
  dxMemData1.Open;


  EnableDisable(True);

  //txtPaidDesc.SetFocus;

  StatusBar.Panels[0].Text := 'Create By : ' + sUserName;
  StatusBar.Panels[1].Text := 'Entry Date : ' + DateToStr(Today());

end;

procedure Tfrm_CashBook.btn_EditClick(Sender: TObject);
begin
  if rg_Status.EditValue = '1' then
  begin
    MessageDlg('Voucher is Canceled. can not be edit.', mtError, [mbOK], 0);
    exit;
  end;
  EnableDisable(True);
end;

procedure Tfrm_CashBook.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 { F2 Edit   }if (Key = vk_F2) then
  begin
    btn_EditClick(nil);
  end;
  { F12 New   }if (Key = vk_F12) then
  begin
    btn_AddClick(nil);
  end;
  { F6 find   }if (Key = vk_F6) then
  begin
    btnFindClick(nil);
  end;

   { F9 Print Device   }if (Key = vk_F9) then
  begin
    if not Assigned(frm_PrintOption) then

      frm_PrintOption := Tfrm_PrintOption.Create(Application);
    frm_PrintOption.ShowModal;
  end;

   { F10 Print    }if (Key = vk_F10) then
  begin
    btnPrintClick(nil);
  end;

   //case key of
    { vk_Down: if Edit_Barcode.Focused then cxGrid_LineItems.SetFocus;
     vk_Escape: if NB.Visible then NB.Visible := False;
     vk_F2: Btn_Item_FindClick(nil); }
     //vk_F8: cxGridDBTableView_LineItemsDblClick(nil);
   // vk_F9: frm_PrintOption.ShowModal;
    // vk_F10: Btn_Document_PrintClick(nil);
 // end;

end;

procedure Tfrm_CashBook.btnPrintClick(Sender: TObject);
begin

  if txtFolio.EditValue <> 0 then begin

  iFolio := txtFolio.EditValue ;

   sSQL := 'Exec dbo.sp_Print_CashVoucher ' + QuotedStr(IntToStr(iFolio)) + ',' + QuotedStr(sCompanyCode)  ;
   frm_PrintOption.MyPrintView(iFolio,sSQL,'CashVoucher.rpt');

   { try
      sp_Print_CashVoucher.Close;
      sp_Print_CashVoucher.ParamByName('@iFolio').Value := txtFolio.EditValue;
      sp_Print_CashVoucher.ParamByName('@CompanyId').Value := sCompanyCode;
      sp_Print_CashVoucher.Active := True;
    except
      on E: Exception do
      begin

        MessageDlg(pAnsiChar(E.Message), mtError, [mbOK], 0);
      end;
    end; }
  //sPrintFormat := 'CashVoucher.rpt';
    //sPrintFormat := sReportDirectory + 'CashVoucher.rpt';



   // frm_PrintOption.PrintReport(sp_Print_CashVoucher, sPrintFormat);

  end;

end;

procedure Tfrm_CashBook.btn_DeleteClick(Sender: TObject);
begin

  iFolio := txtFolio.EditValue;
  sRefNo := txtVouhcerNo.EditValue;


  if MessageDlg(
    'Are you sure want to delete Voucher ?',
    mtConfirmation,
    [mbYes, mbNo],
    0) = mrYes then
  begin

    dm.sp_Util_Voucher_Delete.Close;
    dm.sp_Util_Voucher_Delete.ParamByName('@sCompanyId').Value := sCompanyCode;
    dm.sp_Util_Voucher_Delete.ParamByName('@sUserID').Value := sUserName;
    dm.sp_Util_Voucher_Delete.ParamByName('@iFolio').Value := iFolio;
    dm.sp_Util_Voucher_Delete.ParamByName('@iFormID').Value := iLFormID;
    dm.sp_Util_Voucher_Delete.ParamByName('@Option').Value := 1;
    dm.sp_Util_Voucher_Delete.ExecProc;


    OpenVoucher(iFolio);
  end;
end;

procedure Tfrm_CashBook.btn_ChangeDateClick(Sender: TObject);
begin

V_Date.Enabled := True ; 
{  //dFromDate := V_Date.EditValue; // StrToDate(V_Date.EditValue); // vDate.Date;
  iFolio := 0; // txtFolio.EditValue;
  iFormID := iLFormID;
  sFormType := sFormType;
  sRefNo := txtVouhcerNo.EditValue;
  dlg_ChangeDate.FromDate.EditValue :=  V_Date.EditValue ;

  dlg_ChangeDate.ShowModal;

  if dFromDate <> dToDate then
  begin

    V_Date.EditValue := dToDate;

  end; }
end;

procedure Tfrm_CashBook.btn_BackRecClick(Sender: TObject);
begin
  iFolio := txtFolio.EditValue;
  if iFolio > 1 then begin
    OpenVoucher(iFolio - 1);
  end;
end;

procedure Tfrm_CashBook.btn_NextRecClick(Sender: TObject);
begin
 iFolio := txtFolio.EditValue;
  if iFolio > 0 then begin
    OpenVoucher(iFolio + 1);
  end;
end;

procedure Tfrm_CashBook.btn_LastRecClick(Sender: TObject);
begin
DM.executeSQL('Select Max(Folio) as MaxID From tblCashMst ');
iRecID := dm.MSQuery1.FieldValues['MaxID'] ;
 OpenVoucher(iRecID);
  iRecID := 0 ;
end;

procedure Tfrm_CashBook.btn_FirstRecClick(Sender: TObject);
begin
    DM.executeSQL('Select Min(Folio) as MinID From tblCashMst ');
iRecID := dm.MSQuery1.FieldValues['MinID'] ;
 OpenVoucher(iRecID);
 iRecID := 0 ;
end;

end.

