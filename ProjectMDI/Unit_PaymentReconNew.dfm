object frm_PaymentReconNew: Tfrm_PaymentReconNew
  Left = 299
  Top = 123
  Width = 1074
  Height = 612
  Caption = 'Payment Recon'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 41
    Width = 1058
    Height = 224
    Align = alTop
    TabOrder = 0
    object cxGrid1: TcxGrid
      Left = 1
      Top = 1
      Width = 688
      Height = 222
      Align = alLeft
      Enabled = False
      TabOrder = 0
      TabStop = False
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      object CardView_: TcxGridDBCardView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataModeController.GridMode = True
        DataController.DataModeController.GridModeBufferCount = 1
        DataController.DataSource = ds_sp_PaymentRecon_Master
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        LayoutDirection = ldVertical
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.CardBorderSelection = False
        OptionsView.ScrollBars = ssNone
        OptionsView.CaptionWidth = 150
        OptionsView.CardAutoWidth = True
        OptionsView.CardBorderWidth = 1
        OptionsView.CardWidth = 738
        OptionsView.LayerSeparatorWidth = 10
        OptionsView.SeparatorWidth = 10
        Styles.RowCaption = DM.cxStyle3
        object CardView_CompanyCode: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CompanyCode'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_Folio: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Folio'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_RefNo: TcxGridDBCardViewRow
          Caption = 'Payment Recon No'
          DataBinding.FieldName = 'RefNo'
          Position.BeginsLayer = True
        end
        object CardView_RefDate: TcxGridDBCardViewRow
          Caption = 'Recon Create Date'
          DataBinding.FieldName = 'RefDate'
          Position.BeginsLayer = False
        end
        object CardView_PartyName: TcxGridDBCardViewRow
          Caption = 'Client(Company)'
          DataBinding.FieldName = 'PartyName'
          Position.BeginsLayer = True
        end
        object CardView_CompBillNo: TcxGridDBCardViewRow
          Caption = 'Bill No'
          DataBinding.FieldName = 'CompBillNo'
          Position.BeginsLayer = True
        end
        object CardView_PostingDate: TcxGridDBCardViewRow
          DataBinding.FieldName = 'PostingDate'
          Position.BeginsLayer = False
        end
        object CardView_IsPost: TcxGridDBCardViewRow
          DataBinding.FieldName = 'IsPost'
          Position.BeginsLayer = False
        end
        object CardView_BillingMonthName: TcxGridDBCardViewRow
          Caption = 'Billing Month'
          DataBinding.FieldName = 'BillingMonthName'
          Position.BeginsLayer = True
        end
        object CardView_InvoiceType: TcxGridDBCardViewRow
          Caption = 'Invoice Type'
          DataBinding.FieldName = 'InvoiceType'
          Position.BeginsLayer = False
        end
        object CardView_CHQNO: TcxGridDBCardViewRow
          Caption = 'Cheque No'
          DataBinding.FieldName = 'CHQNO'
          Position.BeginsLayer = True
        end
        object CardView_CHQDate: TcxGridDBCardViewRow
          Caption = 'Payment  Date'
          DataBinding.FieldName = 'CHQDate'
          Position.BeginsLayer = False
        end
        object CardView_CHQRefNumber: TcxGridDBCardViewRow
          Caption = 'Payment Ref'
          DataBinding.FieldName = 'CHQRefNumber'
          Position.BeginsLayer = False
        end
        object CardView_BillRemarks: TcxGridDBCardViewRow
          Caption = 'Bill Remarks'
          DataBinding.FieldName = 'BillRemarks'
          Position.BeginsLayer = True
        end
        object CardView_CHQAmt: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CHQAmt'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_PartyAccount: TcxGridDBCardViewRow
          DataBinding.FieldName = 'PartyAccount'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_Description: TcxGridDBCardViewRow
          Caption = 'Recon Remarks'
          DataBinding.FieldName = 'Description'
          Position.BeginsLayer = True
        end
        object CardView_Folio_CompanyBill: TcxGridDBCardViewRow
          DataBinding.FieldName = 'Folio_CompanyBill'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_CHQFolio: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CHQFolio'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_IsCancel: TcxGridDBCardViewRow
          DataBinding.FieldName = 'IsCancel'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_sState: TcxGridDBCardViewRow
          DataBinding.FieldName = 'sState'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_UserID: TcxGridDBCardViewRow
          DataBinding.FieldName = 'UserID'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_EditUserID: TcxGridDBCardViewRow
          DataBinding.FieldName = 'EditUserID'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_BillAmount: TcxGridDBCardViewRow
          DataBinding.FieldName = 'BillAmount'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_BalanceAmt: TcxGridDBCardViewRow
          DataBinding.FieldName = 'BalanceAmt'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_iReconMonth: TcxGridDBCardViewRow
          DataBinding.FieldName = 'iReconMonth'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_iReconYear: TcxGridDBCardViewRow
          DataBinding.FieldName = 'iReconYear'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_FYEAR: TcxGridDBCardViewRow
          DataBinding.FieldName = 'FYEAR'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_vDate: TcxGridDBCardViewRow
          DataBinding.FieldName = 'vDate'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_CreateOn: TcxGridDBCardViewRow
          DataBinding.FieldName = 'CreateOn'
          Visible = False
          Position.BeginsLayer = True
        end
        object CardView_EditOn: TcxGridDBCardViewRow
          DataBinding.FieldName = 'EditOn'
          Visible = False
          Position.BeginsLayer = True
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = CardView_
      end
    end
    object cxGrid2: TcxGrid
      Left = 696
      Top = 1
      Width = 361
      Height = 222
      Align = alRight
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      RootLevelStyles.Tab = DM.cxStyle_DarkHeader
      object viewWithheld_: TcxGridDBBandedTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = ds_sp_CompanyBill_Total_PaymentRecon
        DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = '0'
            Kind = skCount
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Format = ',0.00'
            Kind = skSum
          end
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <>
        DateTimeHandling.DateFormat = 'dd/mm/yyyy'
        FilterRow.ApplyChanges = fracImmediately
        OptionsBehavior.FocusCellOnTab = True
        OptionsBehavior.FocusFirstCellOnNewRecord = True
        OptionsBehavior.GoToNextCellOnEnter = True
        OptionsBehavior.NavigatorHints = True
        OptionsBehavior.FocusCellOnCycle = True
        OptionsCustomize.DataRowSizing = True
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.HideFocusRectOnExit = False
        OptionsSelection.HideSelection = True
        OptionsSelection.InvertSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.ScrollBars = ssNone
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        OptionsView.HeaderEndEllipsis = True
        Styles.Selection = DM.cxStyle2
        Styles.Footer = DM.cxStyle2
        Styles.Header = DM.cxStyle_Focus
        Styles.BandHeader = DM.cxStyle_DarkHeader
        Bands = <
          item
            Caption = 'TAX WITHELD/PAID (CLIENT)'
            Width = 239
          end>
        object viewWithheld_Province: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Province'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object viewWithheld_PaidByClient: TcxGridDBBandedColumn
          Caption = 'Paid By Client'
          DataBinding.FieldName = 'PaidByClient'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object viewWithheld_WitheldAmt: TcxGridDBBandedColumn
          Caption = 'Witheld By Client'
          DataBinding.FieldName = 'WitheldAmt'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object viewWithheld_TotalPayable: TcxGridDBBandedColumn
          Caption = 'Total Payable'
          DataBinding.FieldName = 'TotalPayable'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00'
          HeaderAlignmentHorz = taCenter
          HeaderAlignmentVert = vaCenter
          Width = 92
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object viewWithheld_PRFolio: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRFolio'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object viewWithheld_PKSeq: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PKSeq'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
      end
      object cxGridLevel1: TcxGridLevel
        Caption = 'Shoratge'
        GridView = viewWithheld_
      end
    end
  end
  object Grid_Load: TcxGrid
    Left = 0
    Top = 265
    Width = 1058
    Height = 289
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvRaised
    BevelKind = bkSoft
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    RootLevelStyles.Tab = DM.cxStyle_DarkHeader
    object ViewLoad_: TcxGridDBBandedTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_sp_PaymentRecon_LoadDTL
      DataController.Options = [dcoAnsiSort, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0.00'
          Kind = skSum
        end
        item
          Format = ',0.00'
          Kind = skSum
        end
        item
          Format = ',0.00'
          Kind = skSum
        end
        item
          Format = ',0.00'
          Kind = skSum
        end
        item
          Format = ',0.00'
          Kind = skSum
        end
        item
          Format = '0'
          Kind = skCount
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_Short_CompAmt
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_Net_Amt
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_WHT_Amt
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_Commision_Amt
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_STAX_Amt
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_Short_TotalAmt
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_TotalFreight
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_Quantity
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_Short_Qty
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_FromFreight
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_ToFreight
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_FromTaxAmt
        end
        item
          Format = ',0.00'
          Kind = skSum
          Column = ViewLoad_ToTaxAmt
        end
        item
          Kind = skCount
          Column = ViewLoad_RefNo
        end>
      DataController.Summary.SummaryGroups = <>
      DateTimeHandling.DateFormat = 'dd/mm/yyyy'
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.NavigatorHints = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.DataRowSizing = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.CellAutoHeight = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.HeaderEndEllipsis = True
      OptionsView.HeaderHeight = 40
      OptionsView.Indicator = True
      Styles.Selection = DM.cxStyle3
      Styles.Footer = DM.cxStyle2
      Styles.BandHeader = DM.cxStyle_DarkHeader
      Bands = <
        item
          Caption = 'Load Detail'
        end
        item
          Caption = 'Billing Info'
          Width = 578
        end
        item
          Caption = 'Product/Freight'
          Width = 1060
        end
        item
          Caption = 'Freight/Tax Break'
          Width = 831
        end
        item
          Caption = 'Company Shortage'
        end>
      object ViewLoad_Seq: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Seq'
        Visible = False
        Options.Editing = False
        Width = 43
        Position.BandIndex = 0
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewLoad_FKFolio: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FKFolio'
        Visible = False
        Options.Editing = False
        Width = 45
        Position.BandIndex = 0
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewLoad_FKFromLoaction: TcxGridDBBandedColumn
        Caption = 'SP Name'
        DataBinding.FieldName = 'FromLocation'
        PropertiesClassName = 'TcxTextEditProperties'
        Options.Editing = False
        Width = 146
        Position.BandIndex = 0
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ViewLoad_FKToLocation: TcxGridDBBandedColumn
        Caption = 'DP/CS Name'
        DataBinding.FieldName = 'ToLocation'
        PropertiesClassName = 'TcxTextEditProperties'
        Options.Editing = False
        Width = 100
        Position.BandIndex = 0
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object ViewLoad_LoadType: TcxGridDBBandedColumn
        DataBinding.FieldName = 'LoadType'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 66
        Position.BandIndex = 0
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object ViewLoad_FKProductCode: TcxGridDBBandedColumn
        Caption = 'Product'
        DataBinding.FieldName = 'ProductName'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 80
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewLoad_Quantity: TcxGridDBBandedColumn
        Caption = 'Load Qty (L)'
        DataBinding.FieldName = 'Quantity'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 90
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewLoad_Freight: TcxGridDBBandedColumn
        Caption = 'Freight (PKR)'
        DataBinding.FieldName = 'Freight'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 59
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewLoad_TotalFreight: TcxGridDBBandedColumn
        Caption = 'Gross Freight'
        DataBinding.FieldName = 'TotalFreight'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 112
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ViewLoad_Short_Qty: TcxGridDBBandedColumn
        Caption = 'Short Qty (L)'
        DataBinding.FieldName = 'Short_Qty'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Styles.Header = DM.cxStyle2
        Width = 78
        Position.BandIndex = 2
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ViewLoad_Short_Rate: TcxGridDBBandedColumn
        Caption = 'Shortage Rate (PKR)'
        DataBinding.FieldName = 'Short_Rate'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Styles.Header = DM.cxStyle2
        Width = 96
        Position.BandIndex = 2
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ViewLoad_Short_TotalAmt: TcxGridDBBandedColumn
        Caption = 'Shortage Amt (PKR)'
        DataBinding.FieldName = 'Short_TotalAmt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Styles.Header = DM.cxStyle2
        Width = 110
        Position.BandIndex = 2
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object ViewLoad_STAX_Rate: TcxGridDBBandedColumn
        Caption = 'ST %'
        DataBinding.FieldName = 'STAX_Rate'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        Options.Editing = False
        Width = 50
        Position.BandIndex = 2
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object ViewLoad_STAX_Amt: TcxGridDBBandedColumn
        Caption = 'GST Amount (PKR)'
        DataBinding.FieldName = 'STAX_Amt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 97
        Position.BandIndex = 2
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object ViewLoad_Net_Amt: TcxGridDBBandedColumn
        Caption = 'Net Amount (PKR)'
        DataBinding.FieldName = 'Net_Amt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 143
        Position.BandIndex = 2
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object ViewLoad_InvoiceNo: TcxGridDBBandedColumn
        Caption = 'Invoice No'
        DataBinding.FieldName = 'InvoiceNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 137
        Position.BandIndex = 1
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewLoad_InvoiceDate: TcxGridDBBandedColumn
        Caption = 'Invoice Date'
        DataBinding.FieldName = 'InvoiceDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 91
        Position.BandIndex = 1
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewLoad_DO_Number: TcxGridDBBandedColumn
        Caption = 'Delivery No'
        DataBinding.FieldName = 'DO_Number'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 108
        Position.BandIndex = 1
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ViewLoad_Order_Number: TcxGridDBBandedColumn
        Caption = 'Purchase No.'
        DataBinding.FieldName = 'Order_Number'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 86
        Position.BandIndex = 1
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ViewLoad_InvoiceAttached: TcxGridDBBandedColumn
        Caption = 'Inv. Attch'
        DataBinding.FieldName = 'InvoiceAttached'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.Alignment = taCenter
        Options.Editing = False
        Width = 43
        Position.BandIndex = 1
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ViewLoad_Short_AdjDate: TcxGridDBBandedColumn
        Caption = 'AdjDate'
        DataBinding.FieldName = 'Short_AdjDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Styles.Header = DM.cxStyle2
        Width = 83
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewLoad_Short_CompAmt: TcxGridDBBandedColumn
        Caption = 'Comp.Amt'
        DataBinding.FieldName = 'Short_CompAmt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Styles.Header = DM.cxStyle2
        Width = 141
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewLoad_Shortage_Number: TcxGridDBBandedColumn
        Caption = 'Shortage Invoice No'
        DataBinding.FieldName = 'Shortage_Number'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Styles.Header = DM.cxStyle2
        Width = 122
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewLoad_ShipmentNo: TcxGridDBBandedColumn
        Caption = 'Shipment No'
        DataBinding.FieldName = 'ShipmentNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 113
        Position.BandIndex = 1
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewLoad_Commision_Rate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Commision_Rate'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object ViewLoad_Commision_Amt: TcxGridDBBandedColumn
        Caption = 'Commision (PKR)'
        DataBinding.FieldName = 'Commision_Amt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 92
        Position.BandIndex = 2
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object ViewLoad_WHT_Rate: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WHT_Rate'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object ViewLoad_WHT_Amt: TcxGridDBBandedColumn
        Caption = 'WHT Amt (PKR)'
        DataBinding.FieldName = 'WHT_Amt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 103
        Position.BandIndex = 2
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object ViewLoad_Column1: TcxGridDBBandedColumn
        Caption = 'SP Province'
        DataBinding.FieldName = 'FromProvince'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Width = 89
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object ViewLoad_Column2: TcxGridDBBandedColumn
        Caption = 'DP/CS Province'
        DataBinding.FieldName = 'ToProvince'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taLeftJustify
        Properties.Alignment.Vert = taVCenter
        Width = 62
        Position.BandIndex = 3
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ViewLoad_FromFreight: TcxGridDBBandedColumn
        Caption = 'Freg. SP (PKR)'
        DataBinding.FieldName = 'FromFreight'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 79
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewLoad_ToFreight: TcxGridDBBandedColumn
        Caption = 'Freg. DP/CS (PKR)'
        DataBinding.FieldName = 'ToFreight'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 59
        Position.BandIndex = 3
        Position.ColIndex = 6
        Position.RowIndex = 0
      end
      object ViewLoad_FromTaxRate: TcxGridDBBandedColumn
        Caption = 'TaxOrigin'
        DataBinding.FieldName = 'FromTaxRate'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 7
        Position.RowIndex = 0
      end
      object ViewLoad_ToTaxRate: TcxGridDBBandedColumn
        Caption = 'TaxDestination'
        DataBinding.FieldName = 'ToTaxRate'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 3
        Position.ColIndex = 8
        Position.RowIndex = 0
      end
      object ViewLoad_FromTaxAmt: TcxGridDBBandedColumn
        Caption = 'Tax SP (PKR)'
        DataBinding.FieldName = 'FromTaxAmt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 77
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ViewLoad_ToTaxAmt: TcxGridDBBandedColumn
        Caption = 'Tax DP/CS (PKR)'
        DataBinding.FieldName = 'ToTaxAmt'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.Alignment.Vert = taVCenter
        Properties.DecimalPlaces = 4
        Properties.DisplayFormat = ',0.0000'
        Options.Editing = False
        Width = 69
        Position.BandIndex = 3
        Position.ColIndex = 9
        Position.RowIndex = 0
      end
      object ViewLoad_IsBilled: TcxGridDBBandedColumn
        DataBinding.FieldName = 'IsClear'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Visible = False
        Width = 46
        Position.BandIndex = 0
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object ViewLoad_Folio: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Folio'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 10
        Position.RowIndex = 0
      end
      object ViewLoad_RefNo: TcxGridDBBandedColumn
        Caption = 'Trip No'
        DataBinding.FieldName = 'RefNo'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 11
        Position.RowIndex = 0
      end
      object ViewLoad_RefDate: TcxGridDBBandedColumn
        Caption = 'Trip Create Date'
        DataBinding.FieldName = 'RefDate'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 65
        Position.BandIndex = 0
        Position.ColIndex = 12
        Position.RowIndex = 0
      end
      object ViewLoad_PartyAccount: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PartyAccount'
        Visible = False
        Options.Editing = False
        Position.BandIndex = 0
        Position.ColIndex = 13
        Position.RowIndex = 0
      end
      object ViewLoad_PartyName: TcxGridDBBandedColumn
        DataBinding.FieldName = 'PartyName'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Visible = False
        Options.Editing = False
        Width = 157
        Position.BandIndex = 0
        Position.ColIndex = 14
        Position.RowIndex = 0
      end
      object ViewLoad_Vehicle: TcxGridDBBandedColumn
        DataBinding.FieldName = 'VRN'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Vert = taVCenter
        Options.Editing = False
        Width = 62
        Position.BandIndex = 0
        Position.ColIndex = 15
        Position.RowIndex = 0
      end
      object ViewLoad_Column3: TcxGridDBBandedColumn
        Caption = 'SP Invoice Type'
        DataBinding.FieldName = 'BillType'
        Options.Editing = False
        Styles.Content = DM.cxStyle2
        Width = 120
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object ViewLoad_Column4: TcxGridDBBandedColumn
        Caption = 'Supply Point Code'
        DataBinding.FieldName = 'FromCode'
        Options.Editing = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object ViewLoad_Column5: TcxGridDBBandedColumn
        Caption = 'DP/CS Code'
        DataBinding.FieldName = 'ToCode'
        Options.Editing = False
        Width = 72
        Position.BandIndex = 0
        Position.ColIndex = 5
        Position.RowIndex = 0
      end
      object ViewLoad_Column6: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FP_GLCode'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 16
        Position.RowIndex = 0
      end
      object ViewLoad_Column7: TcxGridDBBandedColumn
        DataBinding.FieldName = 'TP_GLCode'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 17
        Position.RowIndex = 0
      end
      object ViewLoad_Column8: TcxGridDBBandedColumn
        Caption = 'DP/CS Invoice Type'
        DataBinding.FieldName = 'BilltypeTO'
        Options.Editing = False
        Styles.Content = DM.cxStyle2
        Width = 110
        Position.BandIndex = 3
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object ViewLoad_FKFolio_Bill: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FKFolio_Bill'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 18
        Position.RowIndex = 0
      end
      object ViewLoad_FKSeq_Bill: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FKSeq_Bill'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 19
        Position.RowIndex = 0
      end
      object ViewLoad_Billmonth: TcxGridDBBandedColumn
        DataBinding.FieldName = 'Billmonth'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 20
        Position.RowIndex = 0
      end
      object ViewLoad_BillTypeFlag: TcxGridDBBandedColumn
        DataBinding.FieldName = 'BillTypeFlag'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 21
        Position.RowIndex = 0
      end
      object ViewLoad_FKLoadSeq: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FKLoadSeq'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 22
        Position.RowIndex = 0
      end
      object ViewLoad_FromCity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FromCity'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 23
        Position.RowIndex = 0
      end
      object ViewLoad_ToCity: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ToCity'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 24
        Position.RowIndex = 0
      end
      object ViewLoad_FKProductCode1: TcxGridDBBandedColumn
        DataBinding.FieldName = 'FKProductCode'
        Visible = False
        Position.BandIndex = 0
        Position.ColIndex = 25
        Position.RowIndex = 0
      end
    end
    object cxGridLevel5: TcxGridLevel
      Caption = 'Shoratge'
      GridView = ViewLoad_
    end
  end
  object RzStatusBar2: TRzStatusBar
    Left = 0
    Top = 554
    Width = 1058
    Height = 19
    AutoStyle = False
    SimpleFrameStyle = fsNone
    BorderInner = fsPopup
    BorderOuter = fsNone
    BorderSides = [sdLeft, sdTop, sdRight, sdBottom]
    BorderWidth = 0
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    ParentFont = False
    TabOrder = 6
    VisualStyle = vsClassic
    object RzDBStatusPane1: TRzDBStatusPane
      Left = 67
      Top = 1
      Width = 92
      Height = 17
      Hint = 'UserID'
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'Create By'
      AutoSize = True
      DataField = 'UserID'
      DataSource = ds_sp_PaymentRecon_Master
    end
    object RzDBStatusPane2: TRzDBStatusPane
      Left = 242
      Top = 1
      Width = 104
      Height = 17
      Hint = 'EditUserID'
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'LastEditUser'
      AutoSize = True
      DataField = 'EditUserID'
      DataSource = ds_sp_PaymentRecon_Master
    end
    object RzDBStatusPane3: TRzDBStatusPane
      Left = 159
      Top = 1
      Width = 83
      Height = 17
      Hint = 'CreateOn'
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'Created'
      AutoSize = True
      DataField = 'CreateOn'
      DataSource = ds_sp_PaymentRecon_Master
    end
    object RzDBStatusPane4: TRzDBStatusPane
      Left = 346
      Top = 1
      Width = 94
      Height = 17
      Hint = 'EditOn'
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'LastEdited'
      AutoSize = True
      DataField = 'EditOn'
      DataSource = ds_sp_PaymentRecon_Master
    end
    object RzStatusPane1: TRzStatusPane
      Left = 440
      Top = 1
      Height = 17
      Align = alLeft
    end
    object RzDBStatusPane5: TRzDBStatusPane
      Left = 1
      Top = 1
      Width = 66
      Height = 17
      Hint = 'Folio'
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'Folio'
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'Folio'
      DataSource = ds_sp_PaymentRecon_Master
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = True
    DataSource = ds_sp_PaymentRecon_Master
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnInsert, dxbnEdit, dxbnPost, dxbnCancel, dxbnRefresh]
    Left = 680
    Top = 74
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.LargeImages = DM.cxImageList_navigation
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = False
    Left = 688
    Top = 104
    DockControlHeights = (
      0
      0
      41
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 1
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 164
      FloatTop = 134
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Bar_FormName'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrev1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
        end
        item
          Visible = True
          ItemName = 'btn_New'
        end
        item
          Visible = True
          ItemName = 'btn_Lov'
        end
        item
          Visible = True
          ItemName = 'btnEdit'
        end
        item
          Visible = True
          ItemName = 'btn_DeleteLine'
        end
        item
          Visible = True
          ItemName = 'btn_EditTax'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'btn_Post'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_New: TdxBarLargeButton
      Caption = 'New Recon'
      Category = 0
      Hint = 'New Recon'
      Visible = ivAlways
      LargeImageIndex = 16
      ShortCut = 123
      OnClick = btn_NewClick
    end
    object Bar_FormName: TcxBarEditItem
      Caption = 'Payment Reconciliation'
      Category = 0
      Hint = 'Payment Reconciliation'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
      StyleEdit = DM.cxStyle1
      InternalEditValue = nil
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      LargeImageIndex = 15
      ShortCut = 116
      OnClick = dxBarLargeButton7Click
    end
    object btn_XlsOut: TdxBarLargeButton
      Caption = 'Xls Out Load Detail'
      Category = 0
      Hint = 'Xls Out Load Detail'
      Visible = ivAlways
      LargeImageIndex = 26
      OnClick = btn_XlsOutClick
    end
    object btn_Post: TdxBarLargeButton
      Caption = 'Lock and Post'
      Category = 0
      Hint = 'Lock and Post'
      Visible = ivAlways
      LargeImageIndex = 27
      ShortCut = 117
      OnClick = btn_PostClick
    end
    object btn_AddLine: TdxBarLargeButton
      Caption = 'Add Trip'
      Category = 0
      Hint = 'Add Trip'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 113
    end
    object btnEdit: TdxBarLargeButton
      Caption = 'Edit Recon'
      Category = 0
      Hint = 'Edit Recon'
      Visible = ivAlways
      LargeImageIndex = 13
      OnClick = btnEditClick
    end
    object btn_EditTax: TdxBarLargeButton
      Caption = 'Edit Tax'
      Category = 0
      Hint = 'Edit Tax'
      Visible = ivAlways
      LargeImageIndex = 21
      OnClick = btn_EditTaxClick
    end
    object btn_Lov: TdxBarLargeButton
      Caption = 'List UnClear'
      Category = 0
      Hint = 'List UnClear'
      Visible = ivAlways
      LargeImageIndex = 10
      OnClick = btn_LovClick
    end
    object btn_DeleteLine: TdxBarLargeButton
      Caption = 'Delete Line'
      Category = 0
      Hint = 'Delete Line'
      Visible = ivAlways
      LargeImageIndex = 24
      OnClick = btn_DeleteLineClick
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'XLS Out'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 26
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_XlsOut'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'XLX Out Tax Withheld/Paid'
      Category = 0
      Hint = 'XLX Out Tax Withheld/Paid'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      LargeImageIndex = 2
      ShortCut = 36
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Caption = 'Prior'
      Category = 1
      Enabled = False
      Hint = 'Prior'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      ShortCut = 33
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Caption = 'Next'
      Category = 1
      Enabled = False
      Hint = 'Next'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      ShortCut = 34
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Caption = 'Last'
      Category = 1
      Enabled = False
      Hint = 'Last'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      ShortCut = 35
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object btn_Insert: TdxBarDBNavButton
      Caption = 'New'
      Category = 1
      Enabled = False
      Hint = 'New'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777000777
        7777777777000777777777777700077777777770000000007777777000000000
        7777777000000000777777777700077777777777770007777777777777000777
        7777777777777777777777777777777777777777777777777777}
      PaintStyle = psCaptionGlyph
      ShortCut = 112
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnInsert
    end
    object btn_Edit: TdxBarDBNavButton
      Caption = 'Edit'
      Category = 1
      Enabled = False
      Hint = 'Edit'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777777777777700000000007777777000000007777777770000007
        7777777777000077777777777770077777777777777777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      PaintStyle = psCaptionGlyph
      ShortCut = 113
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnEdit
    end
    object btn_Save: TdxBarDBNavButton
      Caption = 'Save'
      Category = 1
      Enabled = False
      Hint = 'Save'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777770777777
        7777777700077777777777700000777777777700070007777777770077700077
        7777777777770007777777777777700077777777777777000777777777777770
        0777777777777777777777777777777777777777777777777777}
      PaintStyle = psCaptionGlyph
      ShortCut = 16467
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPost
    end
    object btn_Cancel: TdxBarDBNavButton
      Caption = 'Cancel'
      Category = 1
      Enabled = False
      Hint = 'Cancel'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777007777700
        7777777000777000777777770007000777777777700000777777777777000777
        7777777770000077777777770007000777777770007770007777777007777700
        7777777777777777777777777777777777777777777777777777}
      PaintStyle = psCaptionGlyph
      ShortCut = 27
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnCancel
    end
    object btn_Refresh: TdxBarDBNavButton
      Caption = 'Refresh'
      Category = 1
      Enabled = False
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777778087777777777780087777
        7777777700877777777777780877777777777770077777777777777007770000
        0777777008777800077777780087800007777777000000080777777778000877
        0777777777777777777777777777777777777777777777777777}
      PaintStyle = psCaptionGlyph
      ShortCut = 116
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnRefresh
    end
  end
  object sp_PaymentRecon_Master: TMSStoredProc
    StoredProcName = 'sp_PaymentRecon_Master'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_PaymentRecon_Master (:CompanyCode, :Use' +
        'rID, :FiscalYear, :Folio)}')
    BeforeScroll = sp_PaymentRecon_MasterBeforeScroll
    AfterScroll = sp_PaymentRecon_MasterAfterScroll
    KeyFields = 'Folio'
    Left = 328
    Top = 77
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = 'CompanyCode'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'UserID'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftString
        Name = 'FiscalYear'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'Folio'
        ParamType = ptInput
        Value = 0
      end>
    CommandStoredProcName = 'sp_PaymentRecon_Master'
  end
  object ds_sp_PaymentRecon_Master: TMSDataSource
    DataSet = sp_PaymentRecon_Master
    Left = 376
    Top = 96
  end
  object sp_CompanyBill_Total_PaymentRecon: TMSStoredProc
    StoredProcName = 'sp_CompanyBill_Total_PaymentRecon'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_CompanyBill_Total_PaymentRecon (:Folio)' +
        '}')
    Left = 760
    Top = 93
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Folio'
        ParamType = ptInput
        Value = 1
      end>
    CommandStoredProcName = 'sp_CompanyBill_Total_PaymentRecon'
  end
  object ds_sp_CompanyBill_Total_PaymentRecon: TMSDataSource
    AutoEdit = False
    DataSet = sp_CompanyBill_Total_PaymentRecon
    Left = 816
    Top = 80
  end
  object sp_PaymentRecon_LoadDTL: TMSStoredProc
    StoredProcName = 'sp_PaymentRecon_LoadDTL'
    Connection = DM.MSConnection
    SQL.Strings = (
      '{:RETURN_VALUE = CALL sp_PaymentRecon_LoadDTL (:Folio, :Seq)}')
    Left = 384
    Top = 285
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'Folio'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftInteger
        Name = 'Seq'
        ParamType = ptInput
        Value = 0
      end>
    CommandStoredProcName = 'sp_PaymentRecon_LoadDTL'
  end
  object ds_sp_PaymentRecon_LoadDTL: TMSDataSource
    AutoEdit = False
    DataSet = sp_PaymentRecon_LoadDTL
    Left = 440
    Top = 288
  end
  object sp_ReconWitheldAmt_AddEdit: TMSStoredProc
    StoredProcName = 'sp_ReconWitheldAmt_AddEdit'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_ReconWitheldAmt_AddEdit (:FKFolio, :FKS' +
        'eq, :WitheldAmt)}')
    Left = 616
    Top = 109
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'FKFolio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FKSeq'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'WitheldAmt'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'sp_ReconWitheldAmt_AddEdit'
  end
end
