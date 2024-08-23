unit Unit_ClientIndex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinSilver, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  dxSkinsdxBarPainter, cxLabel, MSAccess, dxBarDBNav, dxBar, cxBarEditItem,
  cxClasses, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  DBAccess, MemDS, cxGridLevel, cxGridCustomView, cxGrid;

type
  Tfrm_ClientIndex = class(TForm)
    grid: TcxGrid;
    view: TcxGridDBTableView;
    gridLevel1: TcxGridLevel;
    tblAccounts: TMSTable;
    ds_tblAccounts: TMSDataSource;
    viewAccountCode: TcxGridDBColumn;
    viewAccountName: TcxGridDBColumn;
    viewAddress1: TcxGridDBColumn;
    viewAddress2: TcxGridDBColumn;
    viewPhone: TcxGridDBColumn;
    viewFax: TcxGridDBColumn;
    viewEmail: TcxGridDBColumn;
    viewContactPerson: TcxGridDBColumn;
    viewMobileNo: TcxGridDBColumn;
    viewGstNo: TcxGridDBColumn;
    viewNtnNo: TcxGridDBColumn;
    viewCreditDays: TcxGridDBColumn;
    viewIsActive: TcxGridDBColumn;
    viewOpeningBalance: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton1: TdxBarButton;
    btn_doc_Print: TdxBarLargeButton;
    btn_Document_find: TdxBarLargeButton;
    Bar_FormName: TcxBarEditItem;
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
    sp_Util_COA_NEXTID: TMSStoredProc;
    sp_Util_COA_Delete: TMSStoredProc;
    sp_Util_COA_DeletesNextAccountCode: TStringField;
    procedure FormShow(Sender: TObject);
    procedure tblAccountsBeforePost(DataSet: TDataSet);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure tblAccountsAfterScroll(DataSet: TDataSet);
    procedure btn_DeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure  NextNumber();
  end;

var
  frm_ClientIndex: Tfrm_ClientIndex;
  sLFormType , sLFilter : string ;
implementation
   uses
   Unit_DM ;
{$R *.dfm}

procedure  Tfrm_ClientIndex.NextNumber();
begin
sp_Util_COA_NEXTID.Close ;
sp_Util_COA_NEXTID.ParamByName('@sCompanyId').Value := sCompanyCode ;
sp_Util_COA_NEXTID.ParamByName('@AccountType').Value := sLFormType ;
sp_Util_COA_NEXTID.Execute ;

sFormatNumber := sp_Util_COA_NEXTID.FieldValues['sNextAccountCode'];
sGroupAct := sp_Util_COA_NEXTID.FieldValues['sGroupAct'];

end;
procedure Tfrm_ClientIndex.FormShow(Sender: TObject);
begin

sLFormType := sFileName ;
sLFilter := sMapFields ;

Bar_FormName.Caption := sLFormType + ' Index' ;
tblAccounts.Close ;
tblAccounts.FilterSQL :=  sLFilter ;
tblAccounts.Filtered:= True ;

tblAccounts.Open ; 
end;

procedure Tfrm_ClientIndex.tblAccountsBeforePost(DataSet: TDataSet);
begin
 if  tblAccounts.State in [dsInsert] then begin
  NextNumber() ; 
 tblAccounts.FieldByName('AccountCode').Value := sFormatNumber ;
 end;
  tblAccounts.FieldByName('GroupAct').Value := sGroupAct ;
    tblAccounts.FieldByName('UserID').Value := sUserName;

  tblAccounts.FieldByName('AccountType').Value := sLFormType ;
  tblAccounts.FieldByName('ActLevelDigit').Value := '4' ;
  tblAccounts.FieldByName('AccountNature').Value := '1' ;
  tblAccounts.FieldByName('AccountLevel').Value := 'Detail' ;

end;

procedure Tfrm_ClientIndex.btn_AddClick(Sender: TObject);
begin
View.OptionsData.Editing := True ;
tblAccounts.Insert ;
end;

procedure Tfrm_ClientIndex.btn_EditClick(Sender: TObject);
begin
View.OptionsData.Editing := True ;
tblAccounts.Edit ;
end;

procedure Tfrm_ClientIndex.btn_SaveClick(Sender: TObject);
begin
if tblAccounts.State in ([dsEdit, dsInsert]) then
tblAccounts.Post ;
    View.OptionsData.Editing := False ;
end;

procedure Tfrm_ClientIndex.tblAccountsAfterScroll(DataSet: TDataSet);
begin
 View.OptionsData.Editing := False ;
end;

procedure Tfrm_ClientIndex.btn_DeleteClick(Sender: TObject);
begin
 if sUserName <> 'ADMIN' then
  begin
    MessageDlg('Only Admin Can Do this.', mtError, [mbOK], 0);
    exit;
  end;

  if MessageDlg(
    'Are you sure want to Delete Account?',
    mtConfirmation,
    [mbYes, mbNo],
    0) = mrYes then
  begin
     iAccountType := 3;

     sAccountCode := tblAccounts.FieldValues['AccountCode'];


  try
    begin
      sp_Util_COA_Delete.Close;
      sp_Util_COA_Delete.ParamByName('@sUserID').Value := sUserName;
      sp_Util_COA_Delete.ParamByName('@sAccountCode').Value := sAccountCode;
      sp_Util_COA_Delete.ParamByName('@Option').Value := 1;
      sp_Util_COA_Delete.ExecProc;
    end
  except
    on E: Exception do
      MessageDlg(E.Message, mtError, [mbOK], 0);
  end;

  tblAccounts.Refresh;
  end;
end;

end.
