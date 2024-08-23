unit uLOV_VRN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinSilver, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, DBAccess,
  MSAccess, MemDS, StdCtrls, ExtCtrls, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid;

type
  Tfrm_LOV_VRN = class(TForm)
    cxGrid2: TcxGrid;
    ViewLOV_: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    Panel1: TPanel;
    Label1: TLabel;
    btn_Select: TButton;
    Edit1: TEdit;
    q_VRN_List: TMSQuery;
    ds_q_VRN_List: TMSDataSource;
    ViewLOV_VehicleCode: TcxGridDBColumn;
    ViewLOV_Vehicle: TcxGridDBColumn;
    ViewLOV_VehicleAccount: TcxGridDBColumn;
    ViewLOV_Description: TcxGridDBColumn;
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_SelectClick(Sender: TObject);
    procedure ViewLOV_CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_LOV_VRN: Tfrm_LOV_VRN;

implementation
      uses
  unit_dm, unit_index, dateutils ;
{$R *.dfm}

procedure Tfrm_LOV_VRN.Edit1Change(Sender: TObject);
begin
  sVal2 := quotedstr('*' + edit1.Text + '*');
  sVal1 := '';
  sVal1 := ' Vehicle like ( ' + sVal2 + ' )' ;


  if sVal2 <> '' then
  begin

    q_VRN_List.Filter := sVal1;
    q_VRN_List.Filtered := true;

  end
  else
  begin
    q_VRN_List.Filtered := false;
  end;
end;

procedure Tfrm_LOV_VRN.FormShow(Sender: TObject);
begin


  q_VRN_List.DisableControls;
  q_VRN_List.Close;

  q_VRN_List.Active := True ;
  q_VRN_List.EnableControls;

  q_VRN_List.First ;

  Edit1.Text := '' ;
  Edit1.SetFocus ;

end;

procedure Tfrm_LOV_VRN.btn_SelectClick(Sender: TObject);
begin

  sFilter_CD := q_VRN_List.FieldValues['VehicleCode'] ; // VoucherNo.EditText;
  sFilter_NM :=  q_VRN_List.FieldValues['Vehicle'] ;
  frm_LOV_VRN.Close;
end;

procedure Tfrm_LOV_VRN.ViewLOV_CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
       btn_SelectClick(nil);
end;

end.
