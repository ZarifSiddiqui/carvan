unit Unit_LovCompanyBill;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, DB,
  DBAccess, MSAccess, MemDS, StdCtrls, cxButtons, ExtCtrls, cxControls,
  cxStyles, dxSkinsCore, dxSkinSilver, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxTextEdit,
  cxCurrencyEdit, cxCalendar, cxCheckBox, cxLabel, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxClasses, cxGridCustomView, cxGrid, cxContainer;

type
  Tfrm_Lov_CompanyBill = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    btn_Select: TButton;
    btn_RefreshAcc: TcxButton;
    Edit1: TEdit;
    sp_LOV_CompanyBill_BR_ForRecon: TMSStoredProc;
    ds_sp_LOV_CompanyBill_BR_ForRecon: TMSDataSource;
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
    tn_Save: TButton;
    cxLabel1: TcxLabel;
    procedure btn_SelectClick(Sender: TObject);
    procedure tn_SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ReadFilterData();
  end;

var
  frm_Lov_CompanyBill: Tfrm_Lov_CompanyBill;

implementation
    uses  unit_DM, DateUtils ; 
{$R *.dfm}
procedure Tfrm_Lov_CompanyBill.ReadFilterData();
var
  I,iCount, ARecIndex: Integer;
  AValue ,AValue2 , AValue3   : Variant;
begin

  //Memo1.Clear;

  iCount := ViewLoad_.DataController.FilteredRecordCount;
  //Memo1.Lines.Add('iCount : ' + inttostr(iCount));
  ViewLoad_.DataController.GotoFirst;


  //ViewLoad_.DataController.SelectAll;

  for I := 0 to ViewLoad_.Controller.SelectedRecordCount - 1 do
  begin
    ARecIndex := ViewLoad_.Controller.SelectedRecords[I].RecordIndex;
    AValue := ViewLoad_.DataController.Values[ARecIndex, ViewLoad_Seq.Index];
    AValue2 := ViewLoad_.DataController.Values[ARecIndex, ViewLoad_FKFolio.Index];

    // Add Record
    //Memo1.Lines.Add('AValue : ' + inttostr(AValue));
    dm.PaymentReconBillAddEdit(0,iFolio,AValue2,AValue);

  end;
end;



procedure Tfrm_Lov_CompanyBill.btn_SelectClick(Sender: TObject);
begin


sp_LOV_CompanyBill_BR_ForRecon.Close ;
sp_LOV_CompanyBill_BR_ForRecon.ParamByName('@UserID').Value := sUserName ;
sp_LOV_CompanyBill_BR_ForRecon.ParamByName('@PartyAC').Value := sAccountCode ;
sp_LOV_CompanyBill_BR_ForRecon.ParamByName('@Op').Value := 3 ;
sp_LOV_CompanyBill_BR_ForRecon.ExecProc ; 

end;

procedure Tfrm_Lov_CompanyBill.tn_SaveClick(Sender: TObject);
begin
      ReadFilterData() ;
      Close ; 
end;

procedure Tfrm_Lov_CompanyBill.FormShow(Sender: TObject);
begin
    cxLabel1.EditValue := sTipfileName + ' / '+ sAccountCode   ;

end;

end.
