unit uLOV_ATT;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinSilver,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  DBAccess, MSAccess, MemDS;

type
  Tfrm_LOV_ATT = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btn_Select: TButton;
    Edit1: TEdit;
    q_List: TMSQuery;
    ds_q_List: TMSDataSource;
    cxGrid2: TcxGrid;
    ViewLOV_: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    ViewLOV_sCD: TcxGridDBColumn;
    ViewLOV_sValue: TcxGridDBColumn;
    procedure Edit1Change(Sender: TObject);
    procedure btn_SelectClick(Sender: TObject);
    procedure ViewLOV_CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_LOV_ATT: Tfrm_LOV_ATT;

implementation
  uses
  unit_dm, unit_index, dateutils ;
{$R *.dfm}

procedure Tfrm_LOV_ATT.Edit1Change(Sender: TObject);
var
sV1 , sV2   : string ;
begin
sV2 := quotedstr('*' + edit1.Text + '*');
  sV1 := '';
  sV1 := ' sValue like ( ' + sV2 + ' )' ;


  if sV2 <> '' then
  begin

    q_List.Filter := sVal1;
    q_List.Filtered := true;

  end
  else
  begin
    q_List.Filtered := false;
  end;
end;

procedure Tfrm_LOV_ATT.btn_SelectClick(Sender: TObject);
begin

  sFilter_CD := q_List.FieldValues['sCD'] ; 
  sFilter_NM :=  q_List.FieldValues['sValue'] ;
  frm_LOV_ATT.Close;
end;

procedure Tfrm_LOV_ATT.ViewLOV_CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
    btn_SelectClick(nil);
end;

procedure Tfrm_LOV_ATT.FormShow(Sender: TObject);
begin


  q_List.DisableControls;
  q_List.Close;

  q_List.SQL.Clear ;
  q_List.SQL.Add(sSQL);

  q_List.Active := True ;
  q_List.EnableControls;

  q_List.First ;

  Edit1.Text := '' ;
  Edit1.SetFocus ;
end;

end.
