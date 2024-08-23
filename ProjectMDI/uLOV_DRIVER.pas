unit uLOV_DRIVER;

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
  Tfrm_LOV_DVR = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    btn_Select: TButton;
    Edit1: TEdit;
    q_DVR_List: TMSQuery;
    ds_q_DVR_List: TMSDataSource;
    cxGrid2: TcxGrid;
    ViewLOV_: TcxGridDBTableView;
    cxGridLevel2: TcxGridLevel;
    ViewLOV_EmployeeCode: TcxGridDBColumn;
    ViewLOV_EmployeeName: TcxGridDBColumn;
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
  frm_LOV_DVR: Tfrm_LOV_DVR;

implementation
         uses
  unit_dm, unit_index, dateutils ;
{$R *.dfm}

procedure Tfrm_LOV_DVR.Edit1Change(Sender: TObject);
begin
sVal2 := quotedstr('*' + edit1.Text + '*');
  sVal1 := '';
  sVal1 := ' EmployeeName like ( ' + sVal2 + ' )' ;


  if sVal2 <> '' then
  begin

    q_DVR_List.Filter := sVal1;
    q_DVR_List.Filtered := true;

  end
  else
  begin
    q_DVR_List.Filtered := false;
  end;
end;

procedure Tfrm_LOV_DVR.FormShow(Sender: TObject);
begin


  q_DVR_List.DisableControls;
  q_DVR_List.Close;

  q_DVR_List.Active := True ;
  q_DVR_List.EnableControls;

  q_DVR_List.First ;

  Edit1.Text := '' ;
  Edit1.SetFocus ;
end;

procedure Tfrm_LOV_DVR.btn_SelectClick(Sender: TObject);
begin
//e.EmployeeCode, e.EmployeeName
  sFilter_CD := q_DVR_List.FieldValues['EmployeeCode'] ; // VoucherNo.EditText;
  sFilter_NM :=  q_DVR_List.FieldValues['EmployeeName'] ;
  frm_LOV_DVR.Close;
end;

procedure Tfrm_LOV_DVR.ViewLOV_CellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   btn_SelectClick(nil);
end;

end.
