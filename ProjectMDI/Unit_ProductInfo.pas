unit Unit_ProductInfo;

interface

uses
   Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinSilver, dxSkinsdxBarPainter, cxLabel,
  dxBarDBNav, dxBar, cxBarEditItem, cxClasses, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit, cxCurrencyEdit,
  cxVGrid, cxDBVGrid, cxInplaceContainer, DB, DBAccess, MSAccess, MemDS,
  cxMemo, cxDBLookupComboBox, dxSkinscxPCPainter, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxGridCustomTableView, cxGridCardView,
  cxGridCustomView, cxGridLevel, cxGrid, cxDBData, cxGridDBCardView,
  cxGridTableView, cxGridDBTableView;

type
  Tfrm_ProductInfo = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_XlsOut: TdxBarLargeButton;
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
    Item_Stock: TMSTable;
    ds_Item_Stock: TMSDataSource;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1CardView1: TcxGridCardView;
    cxGrid1CardView1Row1: TcxGridCardViewRow;
    cxGrid1CardView1Row2: TcxGridCardViewRow;
    cxGrid1CardView1Row3: TcxGridCardViewRow;
    cxGrid1CardView1Row4: TcxGridCardViewRow;
    cxGrid1CardView1Row5: TcxGridCardViewRow;
    cxGrid1CardView1Row6: TcxGridCardViewRow;
    cxGrid1DBCardView1: TcxGridDBCardView;
    cxGrid1DBCardView1ItemID: TcxGridDBCardViewRow;
    cxGrid1DBCardView1UPC: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Description: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ShortName: TcxGridDBCardViewRow;
    cxGrid1DBCardView1sItemType: TcxGridDBCardViewRow;
    cxGrid1DBCardView1UOM: TcxGridDBCardViewRow;
    cxGrid1DBCardView1UnitCost: TcxGridDBCardViewRow;
    cxGrid1DBCardView1UnitPrice: TcxGridDBCardViewRow;
    cxGrid1DBCardView1AvgCost: TcxGridDBCardViewRow;
    cxGrid1DBCardView1FixProfit: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Stock_Opening: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Stock_MinLevel: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Stock_MaxLevel: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Stock_InHand: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Date_LastPurchase: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Date_LastSale: TcxGridDBCardViewRow;
    cxGrid1DBCardView1IsActive: TcxGridDBCardViewRow;
    cxGrid1DBCardView1GLCode: TcxGridDBCardViewRow;
    cxGrid1DBCardView1FKWarrantyID: TcxGridDBCardViewRow;
    cxGrid1DBCardView1FKTraderID: TcxGridDBCardViewRow;
    cxGrid1DBCardView1sItemSubType: TcxGridDBCardViewRow;
    cxGrid1DBCardView1sBrand: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Price_ServiceMin: TcxGridDBCardViewRow;
    cxGrid1DBCardView1Price_ServiceMax: TcxGridDBCardViewRow;
    cxGrid1DBCardView1ModelNo: TcxGridDBCardViewRow;
    View: TcxGridDBTableView;
    gridLevel1: TcxGridLevel;
    grid: TcxGrid;
    ViewColumn1: TcxGridDBColumn;
    ViewItemID: TcxGridDBColumn;
    ViewUPC: TcxGridDBColumn;
    ViewDescription: TcxGridDBColumn;
    ViewShortName: TcxGridDBColumn;
    ViewsItemType: TcxGridDBColumn;
    ViewUOM: TcxGridDBColumn;
    ViewUnitCost: TcxGridDBColumn;
    ViewUnitPrice: TcxGridDBColumn;
    ViewAvgCost: TcxGridDBColumn;
    ViewFixProfit: TcxGridDBColumn;
    ViewStock_Opening: TcxGridDBColumn;
    ViewStock_MinLevel: TcxGridDBColumn;
    ViewStock_MaxLevel: TcxGridDBColumn;
    ViewStock_InHand: TcxGridDBColumn;
    ViewDate_LastPurchase: TcxGridDBColumn;
    ViewDate_LastSale: TcxGridDBColumn;
    ViewIsActive: TcxGridDBColumn;
    ViewGLCode: TcxGridDBColumn;
    warn: TMSTable;
    dswarn: TMSDataSource;
    UOM: TMSTable;
    dsUOM: TMSDataSource;
    ViewFKTraderID: TcxGridDBColumn;
    ViewsItemSubType: TcxGridDBColumn;
    ViewsBrand: TcxGridDBColumn;
    ViewPrice_ServiceMin: TcxGridDBColumn;
    ViewPrice_ServiceMax: TcxGridDBColumn;
    ViewFKWarnCode: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_DeleteClick(Sender: TObject);
    procedure btn_SaveClick(Sender: TObject);
    procedure Item_StockAfterScroll(DataSet: TDataSet);
    procedure btn_XlsOutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ClearForm();
    procedure OpenRecord();
  end;

var
  frm_ProductInfo: Tfrm_ProductInfo;

implementation
uses Unit_DM, DateUtils, Unit_PrintOption;
{$R *.dfm}

procedure Tfrm_ProductInfo.ClearForm();
begin
  {UPC.Properties.Value := '0';
  ModelNo.Properties.Value := '';
  Description.Properties.Value := '';
  SKU.Properties.Value := '';

  Cost.Properties.Value := 0;
  Price.Properties.Value := 0;
  RateSerMin.Properties.Value := 0;
  RateSerMax.Properties.Value := 0;

  Brand.Properties.Value := '';
  Group.Properties.Value := '';
  SubGroup.Properties.Value := '';
  UOM.Properties.Value := '';
  WDays.Properties.Value := '';

  StockOpen.Properties.Value := 0;
  StockMin.Properties.Value := 0;
  StockMax.Properties.Value := 0;
  StockInhand.Properties.Value := 0; }

end;

procedure Tfrm_ProductInfo.OpenRecord();
begin
{
  UPC.Properties.Value := Item_Stock.FieldValues['UPC'];
  ModelNo.Properties.Value := Item_Stock.FieldValues['ModelNo'];
  Description.Properties.Value := Item_Stock.FieldValues['Description'];

  SKU.Properties.Value := Item_Stock.FieldValues['ShortName'];

  Cost.Properties.Value := Item_Stock.FieldValues['UnitCost'];
  Price.Properties.Value := Item_Stock.FieldValues['UnitPrice'];
  RateSerMin.Properties.Value := Item_Stock.FieldValues['Price_ServiceMin'];
  RateSerMax.Properties.Value := Item_Stock.FieldValues['Price_ServiceMax'];

  Brand.Properties.Value := Item_Stock.FieldValues['sBrand'];
  Group.Properties.Value := Item_Stock.FieldValues['sItemType'];
  SubGroup.Properties.Value := Item_Stock.FieldValues['sItemSubType'];
  UOM.Properties.Value := Item_Stock.FieldValues['UOM'];
  WDays.Properties.Value := Item_Stock.FieldValues['FKWarrantyID'];

  StockOpen.Properties.Value := Item_Stock.FieldValues['Stock_Opening'];
  StockMin.Properties.Value := Item_Stock.FieldValues['Stock_MinLevel'];
  StockMax.Properties.Value := Item_Stock.FieldValues['Stock_MaxLevel'];
  StockInhand.Properties.Value := Item_Stock.FieldValues['Stock_InHand'];
  }
  

end;

procedure Tfrm_ProductInfo.FormShow(Sender: TObject);
begin

   dm.UserFormPrefrence(sUserName, iFormID);

  btn_Add.Enabled := bRightAdd;
  btn_Edit.Enabled := bRightEdit;
  btn_Delete.Enabled := bRightDelete;


  DM.LOV_ProductGroup.Close;
  DM.LOV_ProductGroup.ParamByName('@Control').Value := 'ProductGroup' ;
  DM.LOV_ProductGroup.Open;

  DM.LOV_SubGroup.Close;
   DM.LOV_SubGroup.ParamByName('@Control').Value := 'SubGroup' ;
  DM.LOV_SubGroup.Open;

    DM.LOV_Brand.Close;
   DM.LOV_Brand.ParamByName('@Control').Value := 'Brand' ;
  DM.LOV_Brand.Open;

  DM.LOV_UOM.Close;
   DM.LOV_UOM.ParamByName('@Control').Value := 'UOM' ;
  DM.LOV_UOM.Open;

  warn.close;
  warn.Open ;
  uom.Close ;
  uom.Open ;
  

  Item_Stock.Close;
  Item_Stock.Open;

  View.OptionsData.Editing := False ;

end;

procedure Tfrm_ProductInfo.btn_EditClick(Sender: TObject);
begin

View.OptionsData.Editing := True ;
Item_Stock.Edit ;

end;

procedure Tfrm_ProductInfo.btn_AddClick(Sender: TObject);
begin
View.OptionsData.Editing := True ;
Item_Stock.Insert ;
end;

procedure Tfrm_ProductInfo.btn_DeleteClick(Sender: TObject);
begin
//View.OptionsData.Editing := True ;
 ViewIsActive.EditValue := False  ;

end;

procedure Tfrm_ProductInfo.btn_SaveClick(Sender: TObject);
begin
if Item_Stock.State in ([dsEdit, dsInsert]) then
    Item_Stock.Post;
    View.OptionsData.Editing := False ;

end;

procedure Tfrm_ProductInfo.Item_StockAfterScroll(DataSet: TDataSet);
begin
      View.OptionsData.Editing := False ;
end;

procedure Tfrm_ProductInfo.btn_XlsOutClick(Sender: TObject);
begin
frm_PrintOption.GridXls(grid,'InventoryItem');
end;

end.

