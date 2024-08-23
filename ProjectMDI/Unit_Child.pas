unit Unit_Child;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, DBAccess, MSAccess, MemDS;

type
  Tfrm_Child = class(TForm)
    Panel1: TPanel;
    lbl_sfileName: TLabel;
    lbl_sTableName: TLabel;
    MSTable: TMSTable;
    ds_MSTable: TMSDataSource;
    Grid_Detail: TcxGrid;
    View_Detail: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Child: Tfrm_Child;

implementation
uses
  Unit_Index;
    // Unit_DM ;
{$R *.dfm}

procedure Tfrm_Child.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrm_Child.FormCreate(Sender: TObject);
begin
{lbl_sfileName.Caption :=      sFileName ;
lbl_sTableName.Caption := sTBL_Name ; }

{MSTable.Close ;
MSTable.TableName := sDetailTbl ;
MSTable.Open ;

   View_Detail.ClearItems;
    View_Detail.DataController.CreateAllItems();}

end;

procedure Tfrm_Child.FormActivate(Sender: TObject);
begin
   //MSTable.Refresh ;
end;

procedure Tfrm_Child.FormKeyPress(Sender: TObject; var Key: Char);
begin
// on key press , form keyprivew = true

  if (Key = #27) then begin
    Close;
  end;


end;

end.
