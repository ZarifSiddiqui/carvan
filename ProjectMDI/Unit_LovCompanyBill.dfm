object frm_Lov_CompanyBill: Tfrm_Lov_CompanyBill
  Left = 227
  Top = 157
  Width = 928
  Height = 480
  Caption = 'Lov UnPosed Bills'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 912
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 48
      Top = 14
      Width = 287
      Height = 16
      Caption = 'Search (Vehicle / Invoice # / Shipment # / PO # )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object btn_Select: TButton
      Left = 284
      Top = 35
      Width = 75
      Height = 34
      Caption = 'Search'
      TabOrder = 0
      OnClick = btn_SelectClick
    end
    object btn_RefreshAcc: TcxButton
      Left = 24
      Top = 36
      Width = 29
      Height = 30
      Caption = 'Refresh'
      TabOrder = 1
      TabStop = False
      Colors.Default = clWhite
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000002F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0010007E45ED0000000000000000000000000000000000000000000000000000
        00330000000F000000330000003300000033000000330000003300000000002C
        167500975DFF000000330000003300000033000000040000000000000012008B
        49FF00281453009B68FF00A06DFF00A269FF00AB6EFF009D5BFF0000001400A6
        79FF00B38BFF00A168FF00A66AFF009E5FFF000A053500000000002F177900AF
        84FF0022104C00AB8AFF00C2A4FF00CDA1FF00DBA5FF00B576FF0033186300BA
        A6FF00C29FFF00C99FFF00D2A0FF00E1A8FF006B3CC500000000009A65FF00C1
        A3FF002D17740055309600A170FF00A46BFF00AD70FF009E5CFF00000000009C
        67FF00B48EFF00A56CFF00A76EFF00D195FF00AC6CFF00000000009C6CFF00C1
        A2FF00AB74FF0000002E0000000C000000330000000000000000000000000011
        091F00945AFF000000000010084D00321884008B49FF00000000009E6EFF00BD
        9EFF00CAA0FF00894FEA001E0E63008746FF0000000000000000000000000000
        0000006938BD00000019009D66FF00C48FFF009556FF0000000000522B9800B8
        94FF00C59AFF00C891FF00D092FF00331A5F0000000000000000000000000000
        0000000000000045269700BC99FF00D5A1FF00B271FF00000000000000320096
        5DFF00C9A1FF00D6A1FF00AA6CFF000000000000000000000000000000000000
        00000000000000935CFF00C5A8FF00D19DFF007742D200000000008948FB009C
        63FF00A56EFF00AD70FF001B0D4E000000330000001A00000008000000330000
        0033000000330000003300915AF700AC74FF0000000000000000000000000000
        0000000000100000003300532BAE009E71FF004C2A9D00160C29008844FF00B4
        89FF00BC87FF009D5CFF00000019001B0E320000000000000000000000000000
        0000002B1550009A68FF00C29DFF00D1A1FF009B6FFF0000001300000018008C
        53F800CF9EFF00D197FF00452695000000000000000000000000000000000000
        00000000000000A274FF00C4A2FF00CD9CFF00E2A2FF003218810040229100B9
        8FFF00CD9CFF00CC90FF00AF70FF0000002F0000000000000000000000000000
        000000000000001F103B00AB7DFF00BD86FF007F49DD009E71FF00AF88FF00C8
        A4FF00C38EFF00452480006737C2008248ED0000000000000000000000000000
        0000000000000000000000180D2D00492588005E31B1009157FF00A274FF00A5
        6FFF008C54F20000000000000000000000000000000000000000}
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      PaintStyle = bpsGlyph
    end
    object Edit1: TEdit
      Left = 55
      Top = 36
      Width = 225
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Visible = False
    end
    object tn_Save: TButton
      Left = 508
      Top = 35
      Width = 75
      Height = 34
      Caption = 'Save Data'
      TabOrder = 3
      OnClick = tn_SaveClick
    end
    object cxLabel1: TcxLabel
      Left = 552
      Top = 8
      Caption = 'cxLabel1'
      ParentFont = False
    end
  end
  object Grid_Load: TcxGrid
    Left = 0
    Top = 81
    Width = 912
    Height = 360
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
      DataController.DataSource = ds_sp_LOV_CompanyBill_BR_ForRecon
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
      OptionsSelection.MultiSelect = True
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
    end
    object cxGridLevel5: TcxGridLevel
      Caption = 'Shoratge'
      GridView = ViewLoad_
    end
  end
  object sp_LOV_CompanyBill_BR_ForRecon: TMSStoredProc
    StoredProcName = 'dbo.sp_LOV_CompanyBill_BR_ForRecon'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL dbo.sp_LOV_CompanyBill_BR_ForRecon (:UserI' +
        'D, :PartyAC, :Op)}')
    Left = 432
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = 'UserID'
        ParamType = ptInput
        Size = 25
        Value = 'a'
      end
      item
        DataType = ftString
        Name = 'PartyAC'
        ParamType = ptInput
        Size = 25
        Value = '0101040009'
      end
      item
        DataType = ftInteger
        Name = 'Op'
        ParamType = ptInput
        Value = 3
      end>
    CommandStoredProcName = 'dbo.sp_LOV_CompanyBill_BR_ForRecon'
  end
  object ds_sp_LOV_CompanyBill_BR_ForRecon: TMSDataSource
    AutoEdit = False
    DataSet = sp_LOV_CompanyBill_BR_ForRecon
    Left = 376
  end
end
