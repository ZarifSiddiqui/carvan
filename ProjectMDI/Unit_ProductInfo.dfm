object frm_ProductInfo: Tfrm_ProductInfo
  Left = 213
  Top = 103
  Width = 1026
  Height = 576
  Caption = 'Product'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid1: TcxGrid
    Left = 880
    Top = 384
    Width = 481
    Height = 145
    TabOrder = 0
    Visible = False
    object cxGrid1CardView1: TcxGridCardView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      LayoutDirection = ldVertical
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      object cxGrid1CardView1Row1: TcxGridCardViewRow
        Caption = 'UPC'
        Position.BeginsLayer = True
      end
      object cxGrid1CardView1Row2: TcxGridCardViewRow
        Position.BeginsLayer = True
      end
      object cxGrid1CardView1Row3: TcxGridCardViewRow
        Position.BeginsLayer = True
      end
      object cxGrid1CardView1Row4: TcxGridCardViewRow
        Position.BeginsLayer = True
      end
      object cxGrid1CardView1Row5: TcxGridCardViewRow
        Position.BeginsLayer = True
      end
      object cxGrid1CardView1Row6: TcxGridCardViewRow
        Position.BeginsLayer = True
      end
    end
    object cxGrid1DBCardView1: TcxGridDBCardView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataModeController.GridMode = True
      DataController.DataModeController.GridModeBufferCount = 1
      DataController.DataSource = ds_Item_Stock
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      LayoutDirection = ldVertical
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsData.Inserting = False
      OptionsSelection.CardBorderSelection = False
      OptionsView.CellEndEllipsis = True
      OptionsView.ScrollBars = ssNone
      OptionsView.CaptionSeparator = #0
      OptionsView.CardAutoWidth = True
      OptionsView.CardBorderWidth = 12
      OptionsView.CardIndent = 12
      OptionsView.CardWidth = 458
      OptionsView.CategoryRowCaptionInRowAlternateCaption = True
      OptionsView.CellAutoHeight = True
      OptionsView.CellTextMaxLineCount = 2
      OptionsView.LayerSeparatorWidth = 12
      OptionsView.RowCaptionAutoHeight = True
      OptionsView.RowCaptionEndEllipsis = True
      OptionsView.SeparatorColor = clHotLight
      OptionsView.SeparatorWidth = 26
      RowLayout = rlVertical
      Styles.LayerSeparator = DM.cxStyle_Focus
      Styles.RowCaption = DM.cxStyle_DarkHeader
      object cxGrid1DBCardView1ItemID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ItemID'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.Moving = False
        Position.BeginsLayer = True
      end
      object cxGrid1DBCardView1ModelNo: TcxGridDBCardViewRow
        DataBinding.FieldName = 'ModelNo'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
        Styles.Content = DM.cxStyle1
      end
      object cxGrid1DBCardView1UPC: TcxGridDBCardViewRow
        DataBinding.FieldName = 'UPC'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1ShortName: TcxGridDBCardViewRow
        Caption = 'SKU'
        DataBinding.FieldName = 'ShortName'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1sItemType: TcxGridDBCardViewRow
        Caption = 'ItemType'
        DataBinding.FieldName = 'sItemType'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'VALUE'
        Properties.ListColumns = <
          item
            FieldName = 'VALUE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_LOV_ProductGroup
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1Description: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Description'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
        Styles.Content = DM.cxStyle1
      end
      object cxGrid1DBCardView1UnitCost: TcxGridDBCardViewRow
        Caption = 'Cost'
        DataBinding.FieldName = 'UnitCost'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1UnitPrice: TcxGridDBCardViewRow
        Caption = 'Price'
        DataBinding.FieldName = 'UnitPrice'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1Price_ServiceMin: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Price_ServiceMin'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1Price_ServiceMax: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Price_ServiceMax'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1AvgCost: TcxGridDBCardViewRow
        DataBinding.FieldName = 'AvgCost'
        Visible = False
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1FixProfit: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FixProfit'
        Visible = False
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1Date_LastPurchase: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Date_LastPurchase'
        Visible = False
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1Date_LastSale: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Date_LastSale'
        Visible = False
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1IsActive: TcxGridDBCardViewRow
        DataBinding.FieldName = 'IsActive'
        Visible = False
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1GLCode: TcxGridDBCardViewRow
        DataBinding.FieldName = 'GLCode'
        Visible = False
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1sBrand: TcxGridDBCardViewRow
        Caption = 'Brand'
        DataBinding.FieldName = 'sBrand'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'VALUE'
        Properties.ListColumns = <
          item
            FieldName = 'VALUE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_LOV_Brand
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1FKWarrantyID: TcxGridDBCardViewRow
        Caption = 'Warranty Days'
        DataBinding.FieldName = 'FKWarrantyID'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1UOM: TcxGridDBCardViewRow
        DataBinding.FieldName = 'UOM'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'VALUE'
        Properties.ListColumns = <
          item
            FieldName = 'VALUE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_LOV_UOM
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1sItemSubType: TcxGridDBCardViewRow
        Caption = 'Sub-Group'
        DataBinding.FieldName = 'sItemSubType'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'VALUE'
        Properties.ListColumns = <
          item
            FieldName = 'VALUE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_LOV_SubGroup
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1Stock_Opening: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Stock_Opening'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1Stock_MinLevel: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Stock_MinLevel'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1Stock_MaxLevel: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Stock_MaxLevel'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1Stock_InHand: TcxGridDBCardViewRow
        DataBinding.FieldName = 'Stock_InHand'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Options.Editing = False
        Options.Filtering = False
        Options.Focusing = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
      object cxGrid1DBCardView1FKTraderID: TcxGridDBCardViewRow
        DataBinding.FieldName = 'FKTraderID'
        Visible = False
        Options.Filtering = False
        Options.Moving = False
        Position.BeginsLayer = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBCardView1
    end
  end
  object grid: TcxGrid
    Left = 0
    Top = 43
    Width = 1010
    Height = 494
    Align = alClient
    TabOrder = 5
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    object View: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_Item_Stock
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      Styles.Header = DM.cxStyle_DarkHeader
      object ViewItemID: TcxGridDBColumn
        DataBinding.FieldName = 'ItemID'
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = DM.cxStyle_ReadOnly
      end
      object ViewColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'ModelNo'
        Width = 121
      end
      object ViewUPC: TcxGridDBColumn
        DataBinding.FieldName = 'UPC'
        Width = 123
      end
      object ViewDescription: TcxGridDBColumn
        DataBinding.FieldName = 'Description'
        Width = 198
      end
      object ViewShortName: TcxGridDBColumn
        DataBinding.FieldName = 'ShortName'
        Width = 141
      end
      object ViewGLCode: TcxGridDBColumn
        DataBinding.FieldName = 'GLCode'
        Width = 88
      end
      object ViewsItemType: TcxGridDBColumn
        Caption = 'ItemType'
        DataBinding.FieldName = 'sItemType'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'VALUE'
        Properties.ListColumns = <
          item
            FieldName = 'VALUE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_LOV_ProductGroup
        Width = 107
      end
      object ViewsItemSubType: TcxGridDBColumn
        Caption = 'SubType'
        DataBinding.FieldName = 'sItemSubType'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'VALUE'
        Properties.ListColumns = <
          item
            FieldName = 'VALUE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_LOV_SubGroup
        Width = 75
      end
      object ViewsBrand: TcxGridDBColumn
        Caption = 'Brand'
        DataBinding.FieldName = 'sBrand'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'VALUE'
        Properties.ListColumns = <
          item
            FieldName = 'VALUE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_LOV_Brand
        Width = 56
      end
      object ViewFKWarnCode: TcxGridDBColumn
        Caption = 'Warranty'
        DataBinding.FieldName = 'FKWarnCode'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.GridMode = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'WCODE'
        Properties.ListColumns = <
          item
            FieldName = 'WTYPE'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dswarn
        Width = 66
      end
      object ViewUOM: TcxGridDBColumn
        DataBinding.FieldName = 'UOM'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'UOM_Desc'
        Properties.ListColumns = <
          item
            FieldName = 'UOM_Desc'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsUOM
        Width = 66
      end
      object ViewUnitCost: TcxGridDBColumn
        DataBinding.FieldName = 'UnitCost'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0'
      end
      object ViewFixProfit: TcxGridDBColumn
        DataBinding.FieldName = 'FixProfit'
        Visible = False
      end
      object ViewUnitPrice: TcxGridDBColumn
        DataBinding.FieldName = 'UnitPrice'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0'
      end
      object ViewPrice_ServiceMin: TcxGridDBColumn
        DataBinding.FieldName = 'Price_ServiceMin'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0'
        Width = 86
      end
      object ViewPrice_ServiceMax: TcxGridDBColumn
        DataBinding.FieldName = 'Price_ServiceMax'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0'
        Width = 90
      end
      object ViewStock_Opening: TcxGridDBColumn
        DataBinding.FieldName = 'Stock_Opening'
      end
      object ViewStock_MinLevel: TcxGridDBColumn
        DataBinding.FieldName = 'Stock_MinLevel'
      end
      object ViewStock_MaxLevel: TcxGridDBColumn
        DataBinding.FieldName = 'Stock_MaxLevel'
      end
      object ViewStock_InHand: TcxGridDBColumn
        DataBinding.FieldName = 'Stock_InHand'
        Visible = False
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = DM.cxStyle_ReadOnly
      end
      object ViewAvgCost: TcxGridDBColumn
        DataBinding.FieldName = 'AvgCost'
        Visible = False
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = DM.cxStyle_ReadOnly
      end
      object ViewDate_LastPurchase: TcxGridDBColumn
        DataBinding.FieldName = 'Date_LastPurchase'
        Visible = False
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = DM.cxStyle_ReadOnly
      end
      object ViewDate_LastSale: TcxGridDBColumn
        DataBinding.FieldName = 'Date_LastSale'
        Visible = False
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = DM.cxStyle_ReadOnly
      end
      object ViewIsActive: TcxGridDBColumn
        DataBinding.FieldName = 'IsActive'
        Options.Focusing = False
        Styles.Content = DM.cxStyle_ReadOnly
      end
      object ViewFKTraderID: TcxGridDBColumn
        DataBinding.FieldName = 'FKTraderID'
        Visible = False
      end
    end
    object gridLevel1: TcxGridLevel
      GridView = View
    end
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
    WaitForDockingTime = 5
    Left = 664
    Top = 8
    DockControlHeights = (
      0
      0
      43
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 267
      FloatTop = 392
      FloatClientWidth = 554
      FloatClientHeight = 37
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Bar_FormName'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Add'
        end
        item
          Visible = True
          ItemName = 'btn_Edit'
        end
        item
          Visible = True
          ItemName = 'btn_Save'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Delete'
        end
        item
          Visible = True
          ItemName = 'btn_XlsOut'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object btn_XlsOut: TdxBarLargeButton
      Caption = 'Xls Out'
      Category = 0
      Hint = 'Xls Out'
      Visible = ivAlways
      LargeImageIndex = 26
      ShortCut = 16472
      OnClick = btn_XlsOutClick
      AutoGrayScale = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      LargeImageIndex = 15
      ShortCut = 116
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object btn_doc_Print: TdxBarLargeButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      LargeImageIndex = 5
      ShortCut = 16464
    end
    object btn_Document_find: TdxBarLargeButton
      Caption = 'Find'
      Category = 0
      Hint = 'Find'
      Visible = ivAlways
      LargeImageIndex = 11
      ShortCut = 16454
    end
    object Bar_FormName: TcxBarEditItem
      Caption = 'Product Info'
      Category = 0
      Hint = 'Product Info'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
      StyleEdit = DM.cxStyle1
      InternalEditValue = nil
    end
    object btn_Save: TdxBarLargeButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      LargeImageIndex = 14
      ShortCut = 16467
      OnClick = btn_SaveClick
    end
    object btn_Edit: TdxBarLargeButton
      Caption = 'Edit'
      Category = 0
      Hint = 'Edit'
      Visible = ivAlways
      LargeImageIndex = 13
      ShortCut = 113
      OnClick = btn_EditClick
    end
    object btn_Add: TdxBarLargeButton
      Caption = 'New'
      Category = 0
      Hint = 'New'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 112
      OnClick = btn_AddClick
    end
    object btn_Delete: TdxBarLargeButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Delete'
      Visible = ivAlways
      LargeImageIndex = 24
      OnClick = btn_DeleteClick
    end
    object btn_AdminAction: TdxBarSubItem
      Caption = 'Admin Action'
      Category = 0
      Visible = ivAlways
      LargeImageIndex = 35
      ItemLinks = <>
    end
    object btn_ChangeDate: TdxBarLargeButton
      Caption = 'Change Date'
      Category = 0
      Hint = 'Change Date'
      Visible = ivAlways
      LargeImageIndex = 36
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
      NavButton = dxbnLast
    end
    object dxBarDBNavInsert1: TdxBarDBNavButton
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
      NavButton = dxbnInsert
    end
    object dxBarDBNavEdit1: TdxBarDBNavButton
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
      NavButton = dxbnEdit
    end
    object dxBarDBNavPost1: TdxBarDBNavButton
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
      NavButton = dxbnPost
    end
    object dxBarDBNavCancel1: TdxBarDBNavButton
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
      NavButton = dxbnRefresh
    end
  end
  object Item_Stock: TMSTable
    TableName = 'Item_Stock'
    Connection = DM.MSConnection
    RefreshOptions = [roAfterUpdate]
    AfterScroll = Item_StockAfterScroll
    Options.FlatBuffers = True
    Left = 272
    Top = 208
  end
  object ds_Item_Stock: TMSDataSource
    DataSet = Item_Stock
    Left = 376
    Top = 200
  end
  object warn: TMSTable
    TableName = 'warn'
    Connection = DM.MSConnection
    RefreshOptions = [roAfterUpdate]
    Options.FlatBuffers = True
    Left = 272
    Top = 288
  end
  object dswarn: TMSDataSource
    DataSet = warn
    Left = 376
    Top = 280
  end
  object UOM: TMSTable
    TableName = 'UOM'
    Connection = DM.MSConnection
    RefreshOptions = [roAfterUpdate]
    Options.FlatBuffers = True
    Left = 272
    Top = 352
  end
  object dsUOM: TMSDataSource
    DataSet = UOM
    Left = 376
    Top = 344
  end
end
