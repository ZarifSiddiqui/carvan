unit Unit_FreightRate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinSilver, cxStyles, cxEdit, cxDBLookupComboBox,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, dxSkinsdxBarPainter, cxLabel, dxBarDBNav, dxBar, cxBarEditItem,
  cxClasses, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxGridCustomView, cxGrid, cxVGrid, cxDBVGrid,
  cxInplaceContainer, MemDS, DBAccess, MSAccess;

type
  Tfrm_FreightRate = class(TForm)
    ds_mst: TMSDataSource;
    ds_dtl: TMSDataSource;
    PI_FreightRateMasterTAB: TMSTable;
    PI_FreightRateDetailTAB: TMSTable;
    vgAct_dtl: TcxDBVerticalGrid;
    vgAct_dtlCompanyCode: TcxDBEditorRow;
    vgAct_dtlRefNo: TcxDBEditorRow;
    vgAct_dtlRefDate: TcxDBEditorRow;
    vgAct_dtlDescription1: TcxDBEditorRow;
    vgAct_dtlUserID: TcxDBEditorRow;
    vgAct_dtlComputerID: TcxDBEditorRow;
    vgAct_dtlLastEdited: TcxDBEditorRow;
    vgAct_dtlIsDelete: TcxDBEditorRow;
    vgAct_dtlSoNo: TcxDBEditorRow;
    vgAct_dtlDateFrom: TcxDBEditorRow;
    vgAct_dtlDateTo: TcxDBEditorRow;
    vgAct_dtlAccountCode: TcxDBEditorRow;
    vgAct_dtlFYEAR: TcxDBEditorRow;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1CompanyCode: TcxGridDBColumn;
    cxGrid1DBTableView1RefNo: TcxGridDBColumn;
    cxGrid1DBTableView1Location_Filling: TcxGridDBColumn;
    cxGrid1DBTableView1Location_Destination: TcxGridDBColumn;
    cxGrid1DBTableView1ProductCode: TcxGridDBColumn;
    cxGrid1DBTableView1Freight: TcxGridDBColumn;
    cxGrid1DBTableView1EntrySequence: TcxGridDBColumn;
    cxGrid1DBTableView1Quantity: TcxGridDBColumn;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    btn_ViewLedger: TdxBarLargeButton;
    btn_AddNew: TdxBarButton;
    btn_doc_Print: TdxBarLargeButton;
    btn_Document_find: TdxBarLargeButton;
    Bar_FormName: TcxBarEditItem;
    btn_AddChildAccount: TdxBarButton;
    btn_AddSameLevelAccount: TdxBarButton;
    btn_MoveTransAccount: TdxBarButton;
    btn_DeleteAccount: TdxBarButton;
    btn_Edit: TdxBarButton;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavInsert1: TdxBarDBNavButton;
    dxBarDBNavEdit1: TdxBarDBNavButton;
    dxBarDBNavPost1: TdxBarDBNavButton;
    dxBarDBNavCancel1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    procedure btn_doc_PrintClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PI_FreightRateMasterTABBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_FreightRate: Tfrm_FreightRate;

implementation
   uses
  Unit_DM, DateUtils, Unit_LOV_Voucher,Unit_PrintOption;
{$R *.dfm}

procedure Tfrm_FreightRate.btn_doc_PrintClick(Sender: TObject);
begin
  iInvoiceType :=  1; // sp_SalesBill_Master.FieldValues['TypeCode'];
  iFolio := PI_FreightRateMasterTAB.FieldValues['RefNo'] ;
  if  iInvoiceType = 1 then begin
  sPrintFormat := 'FreightRate.rpt';
  end;

     //Var Companycode , Folio
  sMsp_Print := 'sp_Print_FreightRate';

  frm_PrintOption.btn_PrintClick(Sender);
end;

procedure Tfrm_FreightRate.FormShow(Sender: TObject);
begin
PI_FreightRateMasterTAB.Close ;
PI_FreightRateDetailTAB.Close ;

dm.LOV_Client.Open ;
dm.LOV_FromLocation.Open ;
dm.LOV_ToLocation.Open ;
dm.LOV_Product.Open ;

 PI_FreightRateMasterTAB.Open ;
PI_FreightRateDetailTAB.Open ;
end;

procedure Tfrm_FreightRate.PI_FreightRateMasterTABBeforeInsert(
  DataSet: TDataSet);
begin
//CompanyCode , RefNo ,  UserID , LastEdited , IsDelete

   iValue01 := StrToInt(PI_FreightRateMasterTAB.FieldValues['RefNo']) ;


    PI_FreightRateMasterTAB.FieldValues['CompanyCode'] := sCompanyCode ;
    PI_FreightRateMasterTAB.FieldValues['RefNo']  := iValue01 ;
    PI_FreightRateMasterTAB.FieldValues['UserID'] := sUserName;
     PI_FreightRateMasterTAB.FieldValues['LastEdited'] := Now();
      PI_FreightRateMasterTAB.FieldValues['IsDelete'] := '0';
end;

end.
