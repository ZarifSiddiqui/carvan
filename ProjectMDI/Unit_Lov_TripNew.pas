unit Unit_Lov_TripNew;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinSilver, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, StdCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, DBAccess, MSAccess, MemDS, Menus,
  cxButtons, ExtCtrls;

type
  Tfrm_Lov_TripNew = class(TForm)
    ds_sp_Trip_LOV_New: TMSDataSource;
    cxGrid2: TcxGrid;
    ViewLOV_: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Edit1: TEdit;
    Label2: TLabel;
    btn_Select: TButton;
    sp_Trip_LOV_New: TMSStoredProc;
    ViewLOV_Folio: TcxGridDBColumn;
    ViewLOV_RefNo: TcxGridDBColumn;
    ViewLOV_RefDate: TcxGridDBColumn;
    ViewLOV_Vehicle: TcxGridDBColumn;
    ViewLOV_InvoiceNo: TcxGridDBColumn;
    ViewLOV_InvoiceDate: TcxGridDBColumn;
    ViewLOV_DO_Number: TcxGridDBColumn;
    ViewLOV_Order_Number: TcxGridDBColumn;
    ViewLOV_LocationFrom: TcxGridDBColumn;
    ViewLOV_LocationTo: TcxGridDBColumn;
    ViewLOV_sStatus: TcxGridDBColumn;
    ViewLOV_ShipmentNo: TcxGridDBColumn;
    btn_RefreshAcc: TcxButton;
    Panel1: TPanel;
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_SelectClick(Sender: TObject);
    procedure ViewLOV_CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_RefreshAccClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Lov_TripNew: Tfrm_Lov_TripNew;

implementation
    uses
    Unit_dm ;
{$R *.dfm}

procedure Tfrm_Lov_TripNew.Edit1Change(Sender: TObject);
begin
   sVal2 := quotedstr('*' + edit1.Text + '*');

  sVal1 := '';
  sVal1 := '';
  sVal1 := ' RefNo like ( ' + sVal2 + ' )' +
    'Or Vehicle like ( ' + sVal2 + ' )'
    + 'Or InvoiceNo like ( ' + sVal2 + ' )'
    + 'Or Order_Number like ( ' + sVal2 + ' )'
    + 'Or ShipmentNo like ( ' + sVal2 + ' )';
    
  if sVal2 <> '' then
  begin

    sp_Trip_LOV_New.Filter := sVal1;
    sp_Trip_LOV_New.Filtered := true;

  end
  else
  begin
    sp_Trip_LOV_New.Filtered := false;
  end;
end;

procedure Tfrm_Lov_TripNew.FormShow(Sender: TObject);
begin
Edit1.Text := '' ;
Edit1.SetFocus ;


if sp_Trip_LOV_New.Active = False then begin

sp_Trip_LOV_New.Close ;
sp_Trip_LOV_New.ParamByName('@UserID').Value := sUserName ;
sp_Trip_LOV_New.ParamByName('@CompanyID').Value := sCompanyCode ;
sp_Trip_LOV_New.ParamByName('@FYear').Value := sFyear ;
sp_Trip_LOV_New.ExecProc ;

end;

end;

procedure Tfrm_Lov_TripNew.btn_SelectClick(Sender: TObject);
begin
  sFilterText := sp_Trip_LOV_New.FieldValues['RefNo'] ; // VoucherNo.EditText;
  iFolio := StrToInt(sp_Trip_LOV_New.FieldValues['Folio'] ) ;
  frm_Lov_TripNew.Close;
end;

procedure Tfrm_Lov_TripNew.ViewLOV_CellDblClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
btn_SelectClick(nil);
end;

procedure Tfrm_Lov_TripNew.btn_RefreshAccClick(Sender: TObject);
begin
     sp_Trip_LOV_New.Refresh ; 
end;

end.
