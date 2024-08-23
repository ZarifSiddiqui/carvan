object frm_ClientIndex: Tfrm_ClientIndex
  Left = 262
  Top = 131
  Width = 928
  Height = 480
  Caption = 'Party Index'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object grid: TcxGrid
    Left = 0
    Top = 43
    Width = 912
    Height = 398
    Align = alClient
    TabOrder = 0
    object view: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_tblAccounts
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skCount
          Column = viewAccountCode
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.Visible = True
      FilterRow.ApplyChanges = fracImmediately
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object viewAccountCode: TcxGridDBColumn
        DataBinding.FieldName = 'AccountCode'
        Options.Editing = False
        Options.Focusing = False
        Styles.Content = DM.cxStyle_ReadOnly
        Width = 141
      end
      object viewAccountName: TcxGridDBColumn
        Caption = 'Party Name'
        DataBinding.FieldName = 'AccountName'
        Width = 281
      end
      object viewContactPerson: TcxGridDBColumn
        DataBinding.FieldName = 'ContactPerson'
        Width = 145
      end
      object viewAddress1: TcxGridDBColumn
        DataBinding.FieldName = 'Address1'
        Width = 200
      end
      object viewAddress2: TcxGridDBColumn
        DataBinding.FieldName = 'Address2'
        Width = 198
      end
      object viewPhone: TcxGridDBColumn
        DataBinding.FieldName = 'Phone'
        Width = 160
      end
      object viewFax: TcxGridDBColumn
        DataBinding.FieldName = 'Fax'
        Width = 139
      end
      object viewEmail: TcxGridDBColumn
        DataBinding.FieldName = 'Email'
        Width = 135
      end
      object viewMobileNo: TcxGridDBColumn
        DataBinding.FieldName = 'MobileNo'
        Width = 142
      end
      object viewGstNo: TcxGridDBColumn
        DataBinding.FieldName = 'GstNo'
        Width = 145
      end
      object viewNtnNo: TcxGridDBColumn
        DataBinding.FieldName = 'NtnNo'
        Width = 114
      end
      object viewOpeningBalance: TcxGridDBColumn
        DataBinding.FieldName = 'OpeningBalance'
        Width = 97
      end
      object viewCreditDays: TcxGridDBColumn
        DataBinding.FieldName = 'CreditDays'
        Width = 67
      end
      object viewIsActive: TcxGridDBColumn
        DataBinding.FieldName = 'IsActive'
        Options.Focusing = False
        Styles.Content = DM.cxStyle_ReadOnly
      end
    end
    object gridLevel1: TcxGridLevel
      GridView = view
    end
  end
  object tblAccounts: TMSTable
    TableName = 'tblAccounts'
    Connection = DM.MSConnection
    RefreshOptions = [roAfterUpdate]
    BeforePost = tblAccountsBeforePost
    AfterScroll = tblAccountsAfterScroll
    Options.FlatBuffers = True
    FilterSQL = 'AccountType = '#39'Customer'#39
    Left = 272
    Top = 208
  end
  object ds_tblAccounts: TMSDataSource
    DataSet = tblAccounts
    Left = 376
    Top = 200
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
          Visible = True
          ItemName = 'btn_Delete'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
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
      Caption = 'Customer Index'
      Category = 0
      Hint = 'Customer Index'
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
  object sp_Util_COA_NEXTID: TMSStoredProc
    StoredProcName = 'sp_Util_COA_NEXTID'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Util_COA_NEXTID (:sCompanyId, :AccountT' +
        'ype)}')
    Left = 408
    Top = 152
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'sCompanyId'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftString
        Name = 'AccountType'
        ParamType = ptInput
        Size = 25
      end>
    CommandStoredProcName = 'sp_Util_COA_NEXTID'
  end
  object sp_Util_COA_Delete: TMSStoredProc
    StoredProcName = 'sp_Util_COA_Delete'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Util_COA_Delete (:sUserID, :sAccountCod' +
        'e, :Option)}')
    Left = 760
    Top = 56
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'sUserID'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftString
        Name = 'sAccountCode'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftInteger
        Name = 'Option'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'sp_Util_COA_Delete'
    object sp_Util_COA_DeletesNextAccountCode: TStringField
      FieldName = 'sNextAccountCode'
      ReadOnly = True
      Size = 25
    end
  end
end
