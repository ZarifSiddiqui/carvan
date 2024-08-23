object frm_FreightRate: Tfrm_FreightRate
  Left = 295
  Top = 100
  BorderStyle = bsDialog
  Caption = 'Freight Rate'
  ClientHeight = 550
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object vgAct_dtl: TcxDBVerticalGrid
    Left = 72
    Top = 64
    Width = 417
    Height = 153
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    OptionsView.ScrollBars = ssNone
    OptionsView.ShowEditButtons = ecsbAlways
    OptionsView.RowHeaderWidth = 146
    Styles.Header = DM.cxStyle4
    TabOrder = 0
    DataController.DataSource = ds_mst
    Version = 1
    object vgAct_dtlCompanyCode: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'CompanyCode'
      Visible = False
      ID = 0
      ParentID = -1
      Index = 0
      Version = 1
    end
    object vgAct_dtlRefNo: TcxDBEditorRow
      Properties.RepositoryItem = DM.Decimal_0
      Properties.DataBinding.FieldName = 'RefNo'
      Properties.Options.Editing = False
      Styles.Content = DM.cxStyle_DarkHeader
      ID = 1
      ParentID = -1
      Index = 1
      Version = 1
    end
    object vgAct_dtlRefDate: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'RefDate'
      ID = 2
      ParentID = -1
      Index = 2
      Version = 1
    end
    object vgAct_dtlAccountCode: TcxDBEditorRow
      Properties.Caption = 'Party'
      Properties.EditPropertiesClassName = 'TcxLookupComboBoxProperties'
      Properties.EditProperties.KeyFieldNames = 'AccountCode'
      Properties.EditProperties.ListColumns = <
        item
          FieldName = 'AccountName'
        end>
      Properties.EditProperties.ListSource = DM.ds_LOV_Client
      Properties.DataBinding.FieldName = 'AccountCode'
      ID = 3
      ParentID = -1
      Index = 3
      Version = 1
    end
    object vgAct_dtlDescription1: TcxDBEditorRow
      Properties.Caption = 'Description'
      Properties.DataBinding.FieldName = 'Description1'
      ID = 4
      ParentID = -1
      Index = 4
      Version = 1
    end
    object vgAct_dtlUserID: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'UserID'
      Visible = False
      ID = 5
      ParentID = -1
      Index = 5
      Version = 1
    end
    object vgAct_dtlComputerID: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'ComputerID'
      Visible = False
      ID = 6
      ParentID = -1
      Index = 6
      Version = 1
    end
    object vgAct_dtlLastEdited: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'LastEdited'
      Visible = False
      ID = 7
      ParentID = -1
      Index = 7
      Version = 1
    end
    object vgAct_dtlIsDelete: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'IsDelete'
      Visible = False
      ID = 8
      ParentID = -1
      Index = 8
      Version = 1
    end
    object vgAct_dtlSoNo: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'SoNo'
      Visible = False
      ID = 9
      ParentID = -1
      Index = 9
      Version = 1
    end
    object vgAct_dtlDateFrom: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'DateFrom'
      ID = 10
      ParentID = -1
      Index = 10
      Version = 1
    end
    object vgAct_dtlDateTo: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'DateTo'
      ID = 11
      ParentID = -1
      Index = 11
      Version = 1
    end
    object vgAct_dtlFYEAR: TcxDBEditorRow
      Properties.DataBinding.FieldName = 'FYEAR'
      Visible = False
      ID = 12
      ParentID = -1
      Index = 12
      Version = 1
    end
  end
  object cxGrid1: TcxGrid
    Left = 72
    Top = 240
    Width = 697
    Height = 289
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = cxcbsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    object cxGrid1DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_dtl
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.Navigator = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object cxGrid1DBTableView1CompanyCode: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyCode'
        Visible = False
      end
      object cxGrid1DBTableView1RefNo: TcxGridDBColumn
        DataBinding.FieldName = 'RefNo'
        Visible = False
        Options.Editing = False
        Width = 57
      end
      object cxGrid1DBTableView1EntrySequence: TcxGridDBColumn
        Caption = 'Line#'
        DataBinding.FieldName = 'EntrySequence'
        Width = 33
      end
      object cxGrid1DBTableView1Location_Filling: TcxGridDBColumn
        DataBinding.FieldName = 'Location_Filling'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'LocationCode'
        Properties.ListColumns = <
          item
            FieldName = 'Location'
          end
          item
            FieldName = 'LocationCode'
          end>
        Properties.ListSource = DM.ds_LOV_FromLocation
        Width = 195
      end
      object cxGrid1DBTableView1Location_Destination: TcxGridDBColumn
        DataBinding.FieldName = 'Location_Destination'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'LocationCode'
        Properties.ListColumns = <
          item
            FieldName = 'Location'
          end
          item
            FieldName = 'LocationNo'
          end>
        Properties.ListSource = DM.ds_LOV_ToLocation
        Width = 207
      end
      object cxGrid1DBTableView1ProductCode: TcxGridDBColumn
        Caption = 'Product'
        DataBinding.FieldName = 'ProductCode'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ProductCode'
        Properties.ListColumns = <
          item
            FieldName = 'ProductName'
          end>
        Properties.ListSource = DM.ds_LOV_Product
        Width = 96
      end
      object cxGrid1DBTableView1Freight: TcxGridDBColumn
        DataBinding.FieldName = 'Freight'
        RepositoryItem = DM.Decimal_6
        Width = 84
      end
      object cxGrid1DBTableView1Quantity: TcxGridDBColumn
        DataBinding.FieldName = 'Quantity'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object ds_mst: TMSDataSource
    AutoEdit = False
    DataSet = PI_FreightRateMasterTAB
    Left = 432
    Top = 96
  end
  object ds_dtl: TMSDataSource
    AutoEdit = False
    DataSet = PI_FreightRateDetailTAB
    Left = 432
    Top = 144
  end
  object PI_FreightRateMasterTAB: TMSTable
    TableName = 'PI_FreightRateMasterTAB'
    OrderFields = 'RefNo'
    Connection = DM.MSConnection
    BeforeInsert = PI_FreightRateMasterTABBeforeInsert
    Left = 384
    Top = 96
  end
  object PI_FreightRateDetailTAB: TMSTable
    TableName = 'PI_FreightRateDetailTAB'
    OrderFields = 'EntrySequence'
    MasterFields = 'RefNo'
    DetailFields = 'RefNo'
    MasterSource = ds_mst
    Connection = DM.MSConnection
    Filtered = True
    Left = 392
    Top = 136
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = True
    DataSource = ds_mst
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnInsert, dxbnEdit, dxbnPost, dxbnCancel, dxbnRefresh]
    Left = 568
    Top = 50
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
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
    ImageOptions.Images = DM.cxImageList_navigation
    ImageOptions.LargeImages = DM.cxImageList_navigation
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 528
    Top = 56
    DockControlHeights = (
      0
      0
      42
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
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
          ItemName = 'dxBarDBNavInsert1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavEdit1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPost1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavRefresh1'
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
          ItemName = 'btn_doc_Print'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      LargeImageIndex = 14
      ShortCut = 113
      AutoGrayScale = False
    end
    object btn_ViewLedger: TdxBarLargeButton
      Caption = 'View Ledger'
      Category = 0
      Hint = 'View Ledger'
      Visible = ivAlways
      LargeImageIndex = 8
    end
    object btn_AddNew: TdxBarButton
      Caption = 'AddNew'
      Category = 0
      Hint = 'AddNew'
      Visible = ivAlways
      ImageIndex = 13
    end
    object btn_doc_Print: TdxBarLargeButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      LargeImageIndex = 5
      OnClick = btn_doc_PrintClick
    end
    object btn_Document_find: TdxBarLargeButton
      Caption = 'Find'
      Category = 0
      Hint = 'Find'
      Visible = ivAlways
      LargeImageIndex = 11
    end
    object Bar_FormName: TcxBarEditItem
      Caption = 'Chart Of Account'#39's'
      Category = 0
      Hint = 'Chart Of Account'#39's'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
      StyleEdit = DM.cxStyle1
      InternalEditValue = nil
    end
    object btn_AddChildAccount: TdxBarButton
      Caption = 'Create Child Account'
      Category = 0
      Hint = 'Create Child Account'
      Visible = ivAlways
      ImageIndex = 6
    end
    object btn_AddSameLevelAccount: TdxBarButton
      Caption = 'Create Same Level Account'
      Category = 0
      Hint = 'Create Same Level Account'
      Visible = ivAlways
      ImageIndex = 0
    end
    object btn_MoveTransAccount: TdxBarButton
      Caption = 'Move Transaction'#39's'
      Category = 0
      Hint = 'Move Transaction'#39's'
      Visible = ivAlways
      ImageIndex = 15
      PaintStyle = psCaptionGlyph
    end
    object btn_DeleteAccount: TdxBarButton
      Caption = 'Delete Account'
      Category = 0
      Hint = 'Delete Account'
      Visible = ivAlways
      ImageIndex = 24
    end
    object btn_Edit: TdxBarButton
      Caption = 'Edit Account'
      Category = 0
      Hint = 'Edit Account'
      Visible = ivAlways
      ImageIndex = 13
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
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object dxBarDBNavInsert1: TdxBarDBNavButton
      Caption = 'Insert'
      Category = 1
      Enabled = False
      Hint = 'Insert'
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
      BarDBNavigator = dxBarDBNavigator1
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
      BarDBNavigator = dxBarDBNavigator1
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
      BarDBNavigator = dxBarDBNavigator1
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
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnCancel
    end
    object dxBarDBNavRefresh1: TdxBarDBNavButton
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
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnRefresh
    end
  end
end
