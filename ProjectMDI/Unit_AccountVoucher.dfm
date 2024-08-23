object frm_AccountVoucher: Tfrm_AccountVoucher
  Left = 172
  Top = 129
  BorderStyle = bsDialog
  Caption = 'Account Voucher'
  ClientHeight = 523
  ClientWidth = 1070
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
  object RzStatusBar2: TRzStatusBar
    Left = 0
    Top = 504
    Width = 1070
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
    TabOrder = 0
    VisualStyle = vsClassic
    object RzDBStatusPane1: TRzDBStatusPane
      Left = 67
      Top = 1
      Width = 92
      Height = 17
      FillColor = clHighlight
      FrameStyle = fsPopup
      ParentFillColor = False
      Transparent = False
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'Create By'
      FieldLabelColor = clWhite
      AutoSize = True
      DataField = 'CreateBy'
      DataSource = ds_sp_Voucher_Master
    end
    object RzDBStatusPane2: TRzDBStatusPane
      Left = 242
      Top = 1
      Width = 104
      Height = 17
      FillColor = clHighlight
      FrameStyle = fsPopup
      ParentFillColor = False
      Transparent = False
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'LastEditUser'
      FieldLabelColor = clWhite
      AutoSize = True
      DataField = 'EditBy'
      DataSource = ds_sp_Voucher_Master
    end
    object RzDBStatusPane3: TRzDBStatusPane
      Left = 159
      Top = 1
      Width = 83
      Height = 17
      FillColor = clHighlight
      FrameStyle = fsPopup
      ParentFillColor = False
      Transparent = False
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'Created'
      FieldLabelColor = clWhite
      AutoSize = True
      DataField = 'CreateOn'
      DataSource = ds_sp_Voucher_Master
    end
    object RzDBStatusPane4: TRzDBStatusPane
      Left = 440
      Top = 1
      Width = 74
      Height = 17
      Hint = 'Status'
      FillColor = clHighlight
      FrameStyle = fsPopup
      ParentFillColor = False
      Transparent = False
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'IsPost'
      FieldLabelColor = clWhite
      AutoSize = True
      DataField = 'IsPost'
      DataSource = ds_sp_Voucher_Master
    end
    object RzDBStatusPane5: TRzDBStatusPane
      Left = 1
      Top = 1
      Width = 66
      Height = 17
      Hint = 'Folio'
      FillColor = clHighlight
      FrameStyle = fsPopup
      ParentFillColor = False
      Transparent = False
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'Folio'
      FieldLabelColor = clWhite
      Alignment = taRightJustify
      AutoSize = True
      DataField = 'Folio'
      DataSource = ds_sp_Voucher_Master
    end
    object RzDBStatusPane6: TRzDBStatusPane
      Left = 346
      Top = 1
      Width = 94
      Height = 17
      Hint = 'EditOn'
      FillColor = clHighlight
      FrameStyle = fsPopup
      ParentFillColor = False
      Transparent = False
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'LastEdited'
      FieldLabelColor = clWhite
      AutoSize = True
      DataField = 'EditOn'
      DataSource = ds_sp_Voucher_Master
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 42
    Width = 1070
    Height = 151
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object VG_Header: TcxDBVerticalGrid
      Left = 0
      Top = 0
      Width = 585
      Height = 151
      BorderStyle = cxcbsNone
      Align = alLeft
      LookAndFeel.Kind = lfStandard
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Silver'
      OptionsView.ScrollBars = ssNone
      OptionsView.GridLineColor = clBtnFace
      OptionsView.RowHeaderWidth = 205
      OptionsView.RowHeight = 25
      OptionsView.ShowButtons = False
      OptionsView.GridLines = vglHorizontal
      OptionsData.Editing = False
      OptionsData.Appending = False
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      Styles.Header = DM.cxStyle_DarkHeader
      TabOrder = 0
      DataController.DataSource = ds_sp_Voucher_Master
      Version = 1
      object VG_HeaderQuotNumber: TcxDBEditorRow
        Properties.Caption = 'Voucher Type'
        Properties.HeaderAlignmentHorz = taCenter
        Properties.HeaderAlignmentVert = vaCenter
        Properties.EditPropertiesClassName = 'TcxLabelProperties'
        Properties.EditProperties.Alignment.Horz = taCenter
        Properties.EditProperties.Alignment.Vert = taVCenter
        Properties.DataBinding.FieldName = 'VoucherType'
        Properties.Options.Editing = False
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object VG_HeaderQuotDate: TcxDBEditorRow
        Properties.Caption = 'Voucher Date'
        Properties.HeaderAlignmentHorz = taCenter
        Properties.HeaderAlignmentVert = vaCenter
        Properties.EditPropertiesClassName = 'TcxLabelProperties'
        Properties.EditProperties.Alignment.Horz = taCenter
        Properties.EditProperties.Alignment.Vert = taVCenter
        Properties.DataBinding.FieldName = 'VoucherDate'
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object VG_HeaderBillNo: TcxDBEditorRow
        Options.Focusing = False
        Properties.Caption = 'Voucher No.'
        Properties.HeaderAlignmentHorz = taCenter
        Properties.HeaderAlignmentVert = vaCenter
        Properties.EditPropertiesClassName = 'TcxLabelProperties'
        Properties.EditProperties.Alignment.Horz = taCenter
        Properties.EditProperties.Alignment.Vert = taVCenter
        Properties.DataBinding.FieldName = 'VoucherNo'
        Properties.Options.Editing = False
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object VG_HeaderDBEditorRow1: TcxDBEditorRow
        Properties.Caption = 'Control A/C'
        Properties.HeaderAlignmentHorz = taCenter
        Properties.HeaderAlignmentVert = vaCenter
        Properties.EditPropertiesClassName = 'TcxLabelProperties'
        Properties.EditProperties.Alignment.Horz = taCenter
        Properties.EditProperties.Alignment.Vert = taVCenter
        Properties.DataBinding.FieldName = 'ControlAccount'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object VG_HeaderDBEditorRow2: TcxDBEditorRow
        Properties.HeaderAlignmentHorz = taCenter
        Properties.HeaderAlignmentVert = vaCenter
        Properties.EditPropertiesClassName = 'TcxLabelProperties'
        Properties.EditProperties.Alignment.Horz = taLeftJustify
        Properties.DataBinding.FieldName = 'Description'
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
    end
  end
  object Grid_Advance: TcxGrid
    Left = 0
    Top = 193
    Width = 1070
    Height = 311
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderWidth = 5
    BorderStyle = cxcbsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    TabStop = False
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    object ViewDtl_: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Images = DM.cxImageList_navigation
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Insert.ImageIndex = 6
      NavigatorButtons.Delete.ImageIndex = 25
      NavigatorButtons.Edit.ImageIndex = 13
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Cancel.ImageIndex = 24
      NavigatorButtons.Refresh.Visible = False
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      DataController.DataSource = ds_sp_Voucher_Detail
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Filter.Active = True
      DataController.Options = [dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoInsertOnNewItemRowFocusing]
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
          Format = ',0'
          Kind = skSum
        end
        item
          Kind = skCount
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
          Format = ',0'
          Kind = skSum
        end
        item
          Format = ',0.00'
          Kind = skSum
        end
        item
          Kind = skCount
        end
        item
          Format = ',0'
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
          Format = ',0'
          Kind = skSum
          Column = ViewDtl_Amount
        end
        item
          Format = '0'
          Kind = skCount
          Column = ViewDtl_AccountTitle
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.SeparatorColor = 34301
      NewItemRow.SeparatorWidth = 5
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.DataRowSizing = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.NoDataToDisplayInfoText = '< no data found >'
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 26
      Styles.Selection = DM.cxStyle3
      Styles.Footer = DM.cxStyle_DarkHeader
      Styles.Header = DM.cxStyle_DarkHeader
      object ViewDtl_Seq: TcxGridDBColumn
        DataBinding.FieldName = 'Seq'
        Visible = False
      end
      object ViewDtl_FKFolio: TcxGridDBColumn
        DataBinding.FieldName = 'FKFolio'
        Visible = False
      end
      object ViewDtl_AccountTitle: TcxGridDBColumn
        DataBinding.FieldName = 'AccountTitle'
        Width = 238
      end
      object ViewDtl_LineDesc: TcxGridDBColumn
        Caption = 'Cost/SubCost Desc'
        DataBinding.FieldName = 'LineDesc'
        Width = 204
      end
      object ViewDtl_DescriptionEntry: TcxGridDBColumn
        DataBinding.FieldName = 'DescriptionEntry'
        Width = 257
      end
      object ViewDtl_ChequeDate: TcxGridDBColumn
        DataBinding.FieldName = 'ChequeDate'
        Width = 110
      end
      object ViewDtl_ChequeNo: TcxGridDBColumn
        DataBinding.FieldName = 'ChequeNo'
        Width = 105
      end
      object ViewDtl_ChqClear: TcxGridDBColumn
        DataBinding.FieldName = 'ChqClear'
        Visible = False
      end
      object ViewDtl_ChqClearDate: TcxGridDBColumn
        DataBinding.FieldName = 'ChqClearDate'
        Visible = False
      end
      object ViewDtl_StaxInvNo: TcxGridDBColumn
        DataBinding.FieldName = 'StaxInvNo'
        Visible = False
      end
      object ViewDtl_STaxInvDate: TcxGridDBColumn
        DataBinding.FieldName = 'STaxInvDate'
        Visible = False
      end
      object ViewDtl_Type: TcxGridDBColumn
        DataBinding.FieldName = 'Type'
        Visible = False
      end
      object ViewDtl_Amount: TcxGridDBColumn
        DataBinding.FieldName = 'Amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0'
        Width = 120
      end
      object ViewDtl_Debit: TcxGridDBColumn
        DataBinding.FieldName = 'Debit'
        Visible = False
      end
      object ViewDtl_Credit: TcxGridDBColumn
        DataBinding.FieldName = 'Credit'
        Visible = False
      end
      object ViewDtl_LineCode: TcxGridDBColumn
        DataBinding.FieldName = 'LineCode'
        Visible = False
      end
      object ViewDtl_CostCCode: TcxGridDBColumn
        DataBinding.FieldName = 'CostCCode'
        Visible = False
      end
      object ViewDtl_SubCostCCode: TcxGridDBColumn
        DataBinding.FieldName = 'SubCostCCode'
        Visible = False
      end
    end
    object cxGridLevel1: TcxGridLevel
      GridView = ViewDtl_
    end
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
    ImageOptions.DisabledImages = DM.cxImageList_navigation
    ImageOptions.DisabledLargeImages = DM.cxImageList_navigation
    ImageOptions.HotImages = DM.cxImageList_navigation
    ImageOptions.ImageListBkColor = clDefault
    ImageOptions.Images = DM.cxImageList_navigation
    ImageOptions.LargeImages = DM.cxImageList_navigation
    ImageOptions.SmoothGlyphs = True
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 712
    Top = 72
    DockControlHeights = (
      0
      0
      42
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
          ItemName = 'btn_Add'
        end
        item
          Visible = True
          ItemName = 'btn_Edit'
        end
        item
          Visible = True
          ItemName = 'btn_find'
        end
        item
          Visible = True
          ItemName = 'btn_Delete_Advance'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarDBNavRefresh1'
        end
        item
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
          BeginGroup = True
          Visible = True
          ItemName = 'Btn_Print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_AddLine'
        end
        item
          Visible = True
          ItemName = 'btn_EditLine'
        end
        item
          Visible = True
          ItemName = 'btnDelLine'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btn_find: TdxBarLargeButton
      Caption = 'Find'
      Category = 0
      Hint = 'Find'
      Visible = ivAlways
      LargeImageIndex = 11
      ShortCut = 16454
      OnClick = btn_findClick
    end
    object Bar_FormName: TcxBarEditItem
      Caption = 'Account Voucher'
      Category = 0
      Hint = 'Account Voucher'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
      StyleEdit = DM.cxStyle1
      InternalEditValue = nil
    end
    object Btn_Print: TdxBarLargeButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      LargeImageIndex = 5
      ShortCut = 16464
    end
    object btnDelLine: TdxBarLargeButton
      Caption = 'Delete Line'
      Category = 0
      Hint = 'Delete Line'
      Visible = ivAlways
      LargeImageIndex = 25
      SyncImageIndex = False
      ImageIndex = 24
    end
    object btn_Refresh: TdxBarLargeButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      LargeImageIndex = 15
      ShortCut = 116
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
    object btn_AddLine: TdxBarLargeButton
      Caption = 'Add Line'
      Category = 0
      Hint = 'Add Line'
      Visible = ivAlways
      LargeImageIndex = 6
      OnClick = btn_AddLineClick
    end
    object btn_EditLine: TdxBarLargeButton
      Caption = 'Edit Line'
      Category = 0
      Hint = 'Edit Line'
      Visible = ivAlways
      LargeImageIndex = 13
      OnClick = btn_EditLineClick
    end
    object btn_Delete_Advance: TdxBarLargeButton
      Caption = 'Delete Voucher'
      Category = 0
      Hint = 'Delete Voucher'
      Visible = ivAlways
      LargeImageIndex = 24
      SyncImageIndex = False
      ImageIndex = 24
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
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnRefresh
    end
  end
  object sp_Voucher_Master: TMSStoredProc
    StoredProcName = 'sp_Voucher_Master'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Voucher_Master (:CompanyCode, :UserID, ' +
        ':FiscalYear, :Folio, :BookType)}')
    AfterScroll = sp_Voucher_MasterAfterScroll
    KeyFields = 'Folio'
    Left = 544
    Top = 74
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
        Value = '0001'
      end
      item
        DataType = ftString
        Name = 'UserID'
        ParamType = ptInput
        Size = 25
        Value = 'Admin'
      end
      item
        DataType = ftString
        Name = 'FiscalYear'
        ParamType = ptInput
        Size = 10
        Value = '2021'
      end
      item
        DataType = ftInteger
        Name = 'Folio'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftString
        Name = 'BookType'
        ParamType = ptInput
        Size = 50
        Value = 'BB'
      end>
    CommandStoredProcName = 'sp_Voucher_Master'
  end
  object ds_sp_Voucher_Master: TMSDataSource
    DataSet = sp_Voucher_Master
    Left = 592
    Top = 74
  end
  object sp_Voucher_Detail: TMSStoredProc
    StoredProcName = 'sp_Voucher_Detail'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Voucher_Detail (:Folio, :Seq, :BookType' +
        ')}')
    Left = 536
    Top = 144
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
      end
      item
        DataType = ftString
        Name = 'BookType'
        ParamType = ptInput
        Size = 50
        Value = 'BB'
      end>
    CommandStoredProcName = 'sp_Voucher_Detail'
  end
  object ds_sp_Voucher_Detail: TMSDataSource
    DataSet = sp_Voucher_Detail
    Left = 584
    Top = 138
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = ds_sp_Voucher_Master
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnRefresh]
    Left = 752
    Top = 50
  end
end
