unit Unit_AccountVoucher;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RzStatus, RzDBStat, ExtCtrls, RzPanel, dxSkinsCore,
  cxLabel, dxBar, cxBarEditItem,
  cxClasses, dxSkinSilver, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxEdit,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, DB,
  cxDBData, cxCurrencyEdit, DBAccess, MSAccess, MemDS, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridCustomView, cxGrid, cxVGrid, cxDBVGrid, cxInplaceContainer,
  dxBarDBNav;

type
  Tfrm_AccountVoucher = class(TForm)
    RzStatusBar2: TRzStatusBar;
    RzDBStatusPane1: TRzDBStatusPane;
    RzDBStatusPane2: TRzDBStatusPane;
    RzDBStatusPane3: TRzDBStatusPane;
    RzDBStatusPane4: TRzDBStatusPane;
    RzDBStatusPane5: TRzDBStatusPane;
    RzDBStatusPane6: TRzDBStatusPane;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    btn_find: TdxBarLargeButton;
    Bar_FormName: TcxBarEditItem;
    Btn_Print: TdxBarLargeButton;
    btnDelLine: TdxBarLargeButton;
    btn_Refresh: TdxBarLargeButton;
    btn_Edit: TdxBarLargeButton;
    btn_Add: TdxBarLargeButton;
    btn_AddLine: TdxBarLargeButton;
    btn_EditLine: TdxBarLargeButton;
    btn_Delete_Advance: TdxBarLargeButton;
    Panel1: TPanel;
    VG_Header: TcxDBVerticalGrid;
    VG_HeaderQuotNumber: TcxDBEditorRow;
    VG_HeaderQuotDate: TcxDBEditorRow;
    VG_HeaderBillNo: TcxDBEditorRow;
    VG_HeaderDBEditorRow1: TcxDBEditorRow;
    VG_HeaderDBEditorRow2: TcxDBEditorRow;
    Grid_Advance: TcxGrid;
    ViewDtl_: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    sp_Voucher_Master: TMSStoredProc;
    ds_sp_Voucher_Master: TMSDataSource;
    sp_Voucher_Detail: TMSStoredProc;
    ds_sp_Voucher_Detail: TMSDataSource;
    ViewDtl_Seq: TcxGridDBColumn;
    ViewDtl_FKFolio: TcxGridDBColumn;
    ViewDtl_AccountTitle: TcxGridDBColumn;
    ViewDtl_DescriptionEntry: TcxGridDBColumn;
    ViewDtl_ChequeDate: TcxGridDBColumn;
    ViewDtl_ChequeNo: TcxGridDBColumn;
    ViewDtl_ChqClear: TcxGridDBColumn;
    ViewDtl_ChqClearDate: TcxGridDBColumn;
    ViewDtl_StaxInvNo: TcxGridDBColumn;
    ViewDtl_STaxInvDate: TcxGridDBColumn;
    ViewDtl_Type: TcxGridDBColumn;
    ViewDtl_Amount: TcxGridDBColumn;
    ViewDtl_Debit: TcxGridDBColumn;
    ViewDtl_Credit: TcxGridDBColumn;
    ViewDtl_LineCode: TcxGridDBColumn;
    ViewDtl_LineDesc: TcxGridDBColumn;
    ViewDtl_CostCCode: TcxGridDBColumn;
    ViewDtl_SubCostCCode: TcxGridDBColumn;
    dxBarDBNavigator1: TdxBarDBNavigator;
    dxBarDBNavFirst1: TdxBarDBNavButton;
    dxBarDBNavPrev1: TdxBarDBNavButton;
    dxBarDBNavNext1: TdxBarDBNavButton;
    dxBarDBNavLast1: TdxBarDBNavButton;
    dxBarDBNavRefresh1: TdxBarDBNavButton;
    procedure FormShow(Sender: TObject);
    procedure sp_Voucher_MasterAfterScroll(DataSet: TDataSet);
    procedure btn_findClick(Sender: TObject);
    procedure btn_AddLineClick(Sender: TObject);
    procedure btn_EditLineClick(Sender: TObject);
    procedure btn_AddClick(Sender: TObject);
    procedure btn_EditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure OpenMaster(iKey: integer; sBook: string);
    procedure OpenDetail(iKey: integer; sBook: string);
    procedure OpenChild();
//    procedure OpenAddEdit(iOP: integer);
  end;

var
  frm_AccountVoucher: Tfrm_AccountVoucher;
    iLFormID: integer;
    sLBookType : string ;
implementation
uses
  Unit_DM, Unit_LOV_Voucher, Unit_PrintOption, uVouhcerLine;
{$R *.dfm}

procedure Tfrm_AccountVoucher.OpenMaster(iKey: integer; sBook: string);
begin
  sp_Voucher_Master.Close;
  sp_Voucher_Master.ParamByName('@CompanyCode').Value := sCompanyCode;
  sp_Voucher_Master.ParamByName('@UserID').Value := sUserName;
  sp_Voucher_Master.ParamByName('@FiscalYear').Value := sFyear;
  sp_Voucher_Master.ParamByName('@Folio').Value := iKey;
  sp_Voucher_Master.ParamByName('@BookType').Value := sBook;


  sp_Voucher_Master.ExecProc;
end;

procedure Tfrm_AccountVoucher.OpenDetail(iKey: integer; sBook: string);
begin
  sp_Voucher_Detail.Close;
  sp_Voucher_Detail.ParamByName('@Folio').Value := iKey;
  sp_Voucher_Detail.ParamByName('@Seq').Value := 0;
  sp_Voucher_Detail.ParamByName('@BookType').Value := sBook;
  sp_Voucher_Detail.ExecProc;
end;

procedure Tfrm_AccountVoucher.FormShow(Sender: TObject);
begin
  iLFormID := iFormID;

  sLBookType := sMasterTbl ;

  OpenMaster(0,sLBookType);

  if Length(sRefNo) > 3 then begin

    //iFolio := StrToInt(DM.ExtractNumberInString(sRefNo));

    sp_Voucher_Master.Locate('VoucherNo', sRefNo, [loCaseInsensitive]);


  end;
end;

procedure Tfrm_AccountVoucher.sp_Voucher_MasterAfterScroll(
  DataSet: TDataSet);
begin
  iFolio := DataSet.FieldValues['Folio'];
  OpenDetail(iFolio,sLBookType);
end;

procedure Tfrm_AccountVoucher.btn_findClick(Sender: TObject);
begin
  sFilterText := '';
  sSP_LOV := '2' ;

  if not Assigned(frm_LOV_Voucher) then

    frm_LOV_Voucher := Tfrm_LOV_Voucher.Create(Application);

  frm_LOV_Voucher.ShowModal;

  if sFilterText <> '' then
  begin

    sp_Voucher_Master.Locate('VoucherNo', sFilterText, [loCaseInsensitive]);

  end;

end;

procedure Tfrm_AccountVoucher.btn_AddLineClick(Sender: TObject);
begin
   iFolio := sp_Voucher_Master.FieldValues['Folio'] ;
   iSeq := 0 ;
        OpenChild ;
end;

procedure Tfrm_AccountVoucher.btn_EditLineClick(Sender: TObject);
begin
     iFolio := sp_Voucher_Master.FieldValues['Folio'] ;
     iSeq := sp_Voucher_Detail.FieldValues['Seq'] ;
          OpenChild ;
end;

procedure Tfrm_AccountVoucher.btn_AddClick(Sender: TObject);
begin
      iFolio := 0 ;
     iSeq := 0 ;
     OpenChild ;
end;

procedure Tfrm_AccountVoucher.OpenChild();
begin

   frm_BookDetail_Entry := Tfrm_BookDetail_Entry.Create(Application);

   frm_BookDetail_Entry.ShowModal;

end;
procedure Tfrm_AccountVoucher.btn_EditClick(Sender: TObject);
begin
     iFolio := sp_Voucher_Master.FieldValues['Folio'] ;
   iSeq := 0 ;
        OpenChild ;
end;

end.

