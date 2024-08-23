unit Unit_BckXLS;

interface

uses
  cxGridExportLink, shellapi, DateUtils, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinSilver, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxCurrencyEdit, StdCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Grids, DBGrids, ComCtrls, DBAccess, MSAccess, MemDS, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxLabel, ExtCtrls, DBCtrls,
  FileCtrl, cxCheckListBox, cxPC, cxGroupBox, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxCheckBox;

type
  Tfrm_BakcupXLS = class(TForm)
    sp_AccountingReports_Me: TMSStoredProc;
    ds_AccountingReports: TMSDataSource;
    sp_PowerPlay_Post_Lock: TMSStoredProc;
    PC: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    DBText1: TDBText;
    cxTabSheet2: TcxTabSheet;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    cxTabSheet3: TcxTabSheet;
    Grid_LGR: TcxGrid;
    ViewLedger_: TcxGridDBTableView;
    ViewLedger_CompanyId: TcxGridDBColumn;
    ViewLedger_BookType: TcxGridDBColumn;
    ViewLedger_VoucherNo: TcxGridDBColumn;
    ViewLedger_VoucherDate: TcxGridDBColumn;
    ViewLedger_AccountCode: TcxGridDBColumn;
    ViewLedger_AccountName: TcxGridDBColumn;
    ViewLedger_OppAccount: TcxGridDBColumn;
    ViewLedger_OppAccountName: TcxGridDBColumn;
    ViewLedger_Description: TcxGridDBColumn;
    ViewLedger_ChequeNo: TcxGridDBColumn;
    ViewLedger_ChequeDate: TcxGridDBColumn;
    ViewLedger_CheqNo_Date: TcxGridDBColumn;
    ViewLedger_Debit: TcxGridDBColumn;
    ViewLedger_Credit: TcxGridDBColumn;
    ViewLedger_Balance: TcxGridDBColumn;
    ViewLedger_ChqClear: TcxGridDBColumn;
    ViewLedger_ChqClearDate: TcxGridDBColumn;
    ViewLedger_BankStDate: TcxGridDBColumn;
    ViewLedger_EntryType: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    cxLabel3: TcxLabel;
    CB_Month: TComboBox;
    cxLabel5: TcxLabel;
    FromDate: TcxDateEdit;
    ToDate: TcxDateEdit;
    cxLabel6: TcxLabel;
    cxGroupBox2: TcxGroupBox;
    DriveComboBox1: TDriveComboBox;
    Edit1: TEdit;
    DirectoryListBox1: TDirectoryListBox;
    cxGroupBox3: TcxGroupBox;
    btn_View: TButton;
    Label1: TLabel;
    cxGroupBox4: TcxGroupBox;
    cxCheckListBox1: TcxCheckListBox;
    Button1: TButton;
    btnExport: TButton;
    Label2: TLabel;
    Q_AccountType: TMSQuery;
    ds_Q_AccountType: TMSDataSource;
    cxLabel7: TcxLabel;
    lc_AccountType: TcxLookupComboBox;
    Q_FilterACC: TMSQuery;
    ds_Q_FilterACC: TMSDataSource;
    vwFilterAcc_: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    vwFilterAcc_AccountName: TcxGridDBColumn;
    vwFilterAcc_AccountCode: TcxGridDBColumn;
    vwFilterAcc_AccountType: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btn_ViewClick(Sender: TObject);
    procedure CB_MonthChange(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
    procedure lc_AccountTypePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ExportXls(sFileName: string);
    procedure FillDataSet(sAccCode: string);
  end;

var
  frm_BakcupXLS: Tfrm_BakcupXLS;

implementation
uses
  Unit_DM;
{$R *.dfm}


procedure Tfrm_BakcupXLS.ExportXls(sFileName: string);
var
  MyGrid: TcxGrid;
begin
  MyGrid := Grid_LGR;

  ExportGridToExcel(sFileFolder + sFileName + '.xls', MyGrid);
  //ShellExecute(Self.Handle, 'open', PChar(sFileName + '.xls'), nil, nil,SW_SHOW);
end;

procedure Tfrm_BakcupXLS.FillDataSet(sAccCode: string);
begin

  sp_AccountingReports_Me.Close;
  sp_AccountingReports_Me.ParamByName('@CompanyId').Value := sCompanyCode;
  sp_AccountingReports_Me.ParamByName('@DateFrom').Value := FromDate.EditValue;

  sp_AccountingReports_Me.ParamByName('@DateUpto').Value := ToDate.EditValue;

  sp_AccountingReports_Me.ParamByName('@AccountFrom').Value := sAccCode;
  sp_AccountingReports_Me.ParamByName('@AccountTo').Value := sAccCode;
  sp_AccountingReports_Me.ParamByName('@CostCCode').Value := srt04;
  sp_AccountingReports_Me.ParamByName('@SubCostCCode').Value := srt05;


  sp_AccountingReports_Me.ParamByName('@BookType').Value := 'ALL';
  sp_AccountingReports_Me.ParamByName('@AccountDigit').Value := iValue01;
  sp_AccountingReports_Me.ParamByName('@FromLocation').Value := srt04;
  sp_AccountingReports_Me.ParamByName('@ToLocation').Value := srt05;
  sp_AccountingReports_Me.ParamByName('@ReportType').Value := sPrintOption;

 // ShowMessage(sp_AccountingReports_Me.SQL.Text);
  sp_AccountingReports_Me.DisableControls;
  sp_AccountingReports_Me.ExecProc;
  sp_AccountingReports_Me.EnableControls;


end;

procedure Tfrm_BakcupXLS.FormShow(Sender: TObject);
begin
  FromDate.EditValue := Today() - 30;

  ToDate.EditValue := Today();

  Q_AccountType.Close ;
  Q_AccountType.Open ;

  Q_FilterACC.Close ;
  
  //DM.LOV_FromAcc.Close;
 // DM.LOV_FromAcc.ExecProc;


end;

procedure Tfrm_BakcupXLS.btn_ViewClick(Sender: TObject);
var
  before, after: string;
begin


  if Length(Edit1.Text) = 0 then begin
    MessageDlg('Select the backup Path.', mtError, [mbOK], 0);
    DirectoryListBox1.SetFocus ;
    Exit;

  end;



  sFileFolder := DirectoryListBox1.Directory + '\';
  Edit1.Text := sFileFolder;
  sPrintFormat := 'Ledger.rpt';
  sPrintOption := 'General Ledger';


   if Q_FilterACC.RecordCount = 0 then begin
    MessageDlg('Select Account Type', mtError, [mbOK], 0);
    lc_AccountType.SetFocus ;
    Exit;

  end;


  Q_FilterACC.First;

  while not Q_FilterACC.Eof do
  begin
    sFocusedItem := stringreplace(Q_FilterACC.FieldValues['AccountName'], '/', '_', [rfReplaceAll, rfIgnoreCase]);


    srt01 := VarToStrDef(Q_FilterACC.FieldValues['AccountCode'], '00000000000000');


    srt02 := srt01; // VarToStrDef(VG_ToAcc.Properties.Value, 'zzzzzzzzzzzzzz');

    iValue01 := 0; //View_FormsAccountDigit.EditValue;
    srt04 := '0000'; // VarToStrDef(VG_SectorCode.Properties.Value, '');
    srt05 := 'zzzzzzz'; // VarToStrDef(VG_CompanyCode.Properties.Value, '');
    srt06 := '0000'; //VarToStrDef(VG_CostCCode.Properties.Value, '');
    srt07 := 'zzzzzzz'; //VarToStrDef(VG_SubCostCCode.Properties.Value, '');

    FillDataSet(srt01);

    if sp_AccountingReports_Me.RecordCount > 0 then begin
      ExportXls(sFocusedItem);
    end;

    Q_FilterACC.Next;
  end;


  if MessageDlg(
    'Backup Completed. Open Directory ?',
    mtConfirmation,
    [mbYes, mbNo],
    0) = mrYes then
  begin
    ShellExecute(Self.Handle, 'open', PChar(sFileFolder), nil, nil,
        SW_SHOW);
  end ;




end;

procedure Tfrm_BakcupXLS.CB_MonthChange(Sender: TObject);
var
  iMonthNumber: Integer;
  myYear, myMonth, myDay: Word;
begin
  iMonthNumber := 0;
  iMonthNumber := CB_Month.ItemIndex + 1;
  DecodeDate(Today, myYear, myMonth, myDay);
  FromDate.EditValue := StartOfTheMonth(EncodeDate(myYear, iMonthNumber,
    DaysInAMonth(myYear, iMonthNumber)));
  ToDate.EditValue := EndOfAMonth(myYear, iMonthNumber);
end;

procedure Tfrm_BakcupXLS.DirectoryListBox1Change(Sender: TObject);
begin
  sFileFolder := DirectoryListBox1.Directory;
  Edit1.Text := sFileFolder;
end;

procedure Tfrm_BakcupXLS.Button1Click(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to cxCheckListBox1.Items.Count - 1 do
  begin
    cxCheckListBox1.Items[i].Checked := true;
  end;
end;

procedure Tfrm_BakcupXLS.btnExportClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to cxCheckListBox1.Items.Count - 1 do
  begin
    if cxCheckListBox1.Items[i].Checked = true then begin

      sVal1 := cxCheckListBox1.Items[i].Text;
      iValue01 := cxCheckListBox1.ItemIndex;
      sp_PowerPlay_Post_Lock.Close;
      sp_PowerPlay_Post_Lock.ParamByName('@CompanyCode').Value := sCompanyCode;
      sp_PowerPlay_Post_Lock.ParamByName('@UserID').Value := sUserName;
      sp_PowerPlay_Post_Lock.ParamByName('@sControl').Value := sVal1;
      sp_PowerPlay_Post_Lock.ParamByName('@DateFrom').Value := FromDate.EditValue;
      sp_PowerPlay_Post_Lock.ParamByName('@DateUpto').Value := ToDate.EditValue;

      sp_PowerPlay_Post_Lock.ParamByName('@Option').Value := iValue01;
      sp_PowerPlay_Post_Lock.ExecProc ;
      
      //ShowMessage(cxCheckListBox1.Items[i].Text);
    end;
  end;

end;

procedure Tfrm_BakcupXLS.lc_AccountTypePropertiesChange(Sender: TObject);
begin
sFilterText := lc_AccountType.Text ;
Q_FilterACC.Close ;
Q_FilterACC.ParamByName('P1').Value := sFilterText ;
Q_FilterACC.Open ;


end;

end.

