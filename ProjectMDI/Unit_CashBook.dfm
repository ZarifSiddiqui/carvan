object frm_CashBook: Tfrm_CashBook
  Left = 114
  Top = 63
  Width = 1156
  Height = 634
  Caption = 'Cash Voucher'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    1140
    595)
  PixelsPerInch = 96
  TextHeight = 16
  object V_CountrolAC: TcxLookupComboBox
    Left = 128
    Top = 89
    ParentFont = False
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'AccountCode'
    Properties.ListColumns = <
      item
        FieldName = 'AccountName'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = ds_sp_Util_LOV_COA_01
    TabOrder = 0
    Width = 209
  end
  object cxLabel1: TcxLabel
    Left = 32
    Top = 89
    Caption = 'Control A/C'
    ParentFont = False
  end
  object txtPaidDesc: TcxTextEdit
    Left = 128
    Top = 117
    ParentFont = False
    TabOrder = 2
    Width = 401
  end
  object cxLabel2: TcxLabel
    Left = 32
    Top = 117
    Caption = 'Paid/Recevice'
    ParentFont = False
  end
  object Rg_VoucherType: TcxRadioGroup
    Left = 544
    Top = 96
    Alignment = alTopCenter
    Caption = 'Voucher Type'
    ParentFont = False
    Properties.Columns = 2
    Properties.ImmediatePost = True
    Properties.Items = <
      item
        Caption = 'Payment'
        Value = 'P'
      end
      item
        Caption = 'Receipt'
        Value = 'R'
      end>
    Style.BorderStyle = ebsSingle
    Style.Shadow = False
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = False
    TabOrder = 4
    Height = 47
    Width = 185
  end
  object V_Date: TcxDateEdit
    Left = 408
    Top = 89
    Enabled = False
    ParentFont = False
    Properties.ImmediatePost = True
    Properties.InputKind = ikMask
    Properties.SaveTime = False
    Properties.ShowTime = False
    TabOrder = 5
    Width = 121
  end
  object cxLabel3: TcxLabel
    Left = 368
    Top = 89
    Caption = 'Date'
    ParentFont = False
  end
  object txtVouhcerNo: TcxTextEdit
    Left = 200
    Top = 58
    Enabled = False
    ParentFont = False
    TabOrder = 7
    Text = 'VouhcerNo'
    Width = 121
  end
  object cxLabel4: TcxLabel
    Left = 32
    Top = 150
    Caption = 'Description'
    ParentFont = False
  end
  object txtDescription: TcxTextEdit
    Left = 128
    Top = 150
    ParentFont = False
    TabOrder = 9
    Width = 601
  end
  object StatusBar: TdxStatusBar
    Left = 0
    Top = 575
    Width = 1140
    Height = 20
    Panels = <
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
        Fixed = False
      end
      item
        PanelStyleClassName = 'TdxStatusBarTextPanelStyle'
      end>
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Grid_Debit: TcxGrid
    Left = 16
    Top = 296
    Width = 1115
    Height = 273
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvNone
    BevelOuter = bvRaised
    BevelKind = bkSoft
    BorderWidth = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object View_Debit: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      NavigatorButtons.Images = DM.cxImageList_navigation
      NavigatorButtons.First.Visible = False
      NavigatorButtons.PriorPage.Visible = False
      NavigatorButtons.Prior.Visible = False
      NavigatorButtons.Next.Visible = False
      NavigatorButtons.NextPage.Visible = False
      NavigatorButtons.Last.Visible = False
      NavigatorButtons.Delete.ImageIndex = 24
      NavigatorButtons.Post.Visible = False
      NavigatorButtons.Refresh.Visible = True
      NavigatorButtons.SaveBookmark.Visible = False
      NavigatorButtons.GotoBookmark.Visible = False
      NavigatorButtons.Filter.Visible = False
      OnCellClick = View_DebitCellClick
      DataController.DataSource = MSDataSource1
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
          Column = View_DebitAmount
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.SeparatorWidth = 5
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.DataRowSizing = True
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.FocusRect = False
      OptionsView.NoDataToDisplayInfoText = '< No data found >'
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.HeaderHeight = 42
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 26
      Styles.Footer = DM.cxStyle_DarkHeader
      Styles.Header = DM.cxStyle_DarkHeader
      object View_DebitRecId: TcxGridDBColumn
        Caption = 'SNo'
        DataBinding.FieldName = 'RecId'
        PropertiesClassName = 'TcxTextEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.Alignment.Vert = taVCenter
        GroupSummaryAlignment = taLeftJustify
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Options.Sorting = False
        SortIndex = 0
        SortOrder = soAscending
        Width = 48
      end
      object View_DebitAccountCode: TcxGridDBColumn
        Caption = 'A/C'
        DataBinding.FieldName = 'AccountCode'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'AccountCode'
        Properties.ListColumns = <
          item
            FieldName = 'AccountName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_sp_Util_LOV_COA_02
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Options.ShowEditButtons = isebNever
        Options.Sorting = False
        Width = 209
      end
      object View_DebitLineCode: TcxGridDBColumn
        Caption = 'CostCentre'
        DataBinding.FieldName = 'LineCode'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'LineCode'
        Properties.ListColumns = <
          item
            FieldName = 'LineDesc'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_sp_Get_Rlxn_Lov_MixAll
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Options.ShowEditButtons = isebNever
        Options.Sorting = False
        Width = 251
      end
      object View_DebitTDate: TcxGridDBColumn
        Caption = 'Date'
        DataBinding.FieldName = 'sTDate'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 104
      end
      object View_DebitDescriptionEntry: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DescriptionEntry'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 330
      end
      object View_DebitAmount: TcxGridDBColumn
        DataBinding.FieldName = 'Amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0.00'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Options.Sorting = False
        Width = 188
      end
      object View_DebitCostCCode: TcxGridDBColumn
        Caption = 'CostCentre'
        DataBinding.FieldName = 'CostCCode'
        Visible = False
        Width = 60
      end
      object View_DebitSubCostCCode: TcxGridDBColumn
        Caption = 'SubCostCentre'
        DataBinding.FieldName = 'SubCostCCode'
        Visible = False
        Width = 60
      end
      object View_DebitType: TcxGridDBColumn
        DataBinding.FieldName = 'Type'
        Visible = False
        Width = 86
      end
      object View_DebitSno: TcxGridDBColumn
        Caption = 'Seq'
        DataBinding.FieldName = 'Sno'
        Visible = False
        Width = 85
      end
    end
    object cxGridLevel3: TcxGridLevel
      GridView = View_Debit
    end
  end
  object rg_Status: TcxRadioGroup
    Left = 736
    Top = 96
    TabStop = False
    Alignment = alTopCenter
    Caption = 'Status'
    Enabled = False
    ParentFont = False
    Properties.Columns = 2
    Properties.ImmediatePost = True
    Properties.Items = <
      item
        Caption = 'Posted'
        Value = '0'
      end
      item
        Caption = 'Cancel'
        Value = '1'
      end>
    Style.BorderStyle = ebsSingle
    Style.Shadow = False
    Style.TextStyle = [fsBold]
    Style.TransparentBorder = False
    StyleDisabled.BorderStyle = ebsNone
    StyleDisabled.TextStyle = [fsBold]
    TabOrder = 12
    Height = 49
    Width = 185
  end
  object GB_AddEdit: TcxGroupBox
    Left = 16
    Top = 183
    Alignment = alRightCenter
    Caption = 'Line Add/Edit'
    ParentColor = False
    ParentFont = False
    Style.Color = clSilver
    Style.LookAndFeel.Kind = lfFlat
    Style.TextColor = clBlack
    StyleDisabled.LookAndFeel.Kind = lfFlat
    StyleFocused.LookAndFeel.Kind = lfFlat
    StyleHot.LookAndFeel.Kind = lfFlat
    TabOrder = 13
    Height = 105
    Width = 1113
    object lbl_LineNo: TcxDBLabel
      Left = 96
      Top = 11
      DataBinding.DataField = 'Sno'
      DataBinding.DataSource = MSDataSource1
      ParentFont = False
      Height = 21
      Width = 121
    end
    object cxLabel9: TcxLabel
      Left = 30
      Top = 33
      Caption = 'Account'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
      Transparent = True
    end
    object LC_AccountCode: TcxDBLookupComboBox
      Left = 96
      Top = 32
      DataBinding.DataField = 'AccountCode'
      DataBinding.DataSource = MSDataSource1
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'AccountCode'
      Properties.ListColumns = <
        item
          FieldName = 'AccountName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_sp_Util_LOV_COA_02
      Properties.OnCloseUp = LC_AccountCodePropertiesCloseUp
      Properties.OnValidate = LC_AccountCodePropertiesValidate
      TabOrder = 0
      OnExit = LC_AccountCodePropertiesCloseUp
      Width = 305
    end
    object cxLabel8: TcxLabel
      Left = 410
      Top = 33
      Caption = 'CostCentre'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
    end
    object LC_LineCode: TcxDBLookupComboBox
      Left = 480
      Top = 32
      DataBinding.DataField = 'LineCode'
      DataBinding.DataSource = MSDataSource1
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'LineCode'
      Properties.ListColumns = <
        item
          FieldName = 'LineDesc'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM.ds_sp_Get_Rlxn_Lov_MixFilter
      TabOrder = 1
      Width = 313
    end
    object cxLabel5: TcxLabel
      Left = 11
      Top = 63
      Caption = 'Description'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
    end
    object txt_Desc: TcxDBTextEdit
      Left = 95
      Top = 64
      DataBinding.DataField = 'DescriptionEntry'
      DataBinding.DataSource = MSDataSource1
      ParentFont = False
      TabOrder = 3
      Width = 514
    end
    object lbl_Amount: TcxLabel
      Left = 620
      Top = 63
      Caption = 'Amount'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clBlack
      Style.IsFontAssigned = True
    end
    object Amount: TcxDBCurrencyEdit
      Left = 674
      Top = 65
      DataBinding.DataField = 'Amount'
      DataBinding.DataSource = MSDataSource1
      ParentFont = False
      Properties.DisplayFormat = ',0.00'
      Properties.Nullable = False
      TabOrder = 4
      Width = 119
    end
    object btnAddLine: TcxButton
      Left = 968
      Top = 30
      Width = 91
      Height = 28
      Caption = '&Add Line'
      TabOrder = 5
      OnClick = btnAddLineClick
    end
    object btnSaveLine: TcxButton
      Left = 968
      Top = 62
      Width = 91
      Height = 29
      Caption = '&Save Line'
      TabOrder = 6
      OnClick = btnSaveLineClick
    end
    object TDate: TcxDBDateEdit
      Left = 804
      Top = 32
      DataBinding.DataField = 'sTDate'
      DataBinding.DataSource = MSDataSource1
      ParentFont = False
      Properties.SaveTime = False
      Properties.ShowTime = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.LookAndFeel.Kind = lfStandard
      Style.LookAndFeel.NativeStyle = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.Kind = lfStandard
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfStandard
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfStandard
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 110
    end
    object cxLabel6: TcxLabel
      Left = 804
      Top = 12
      Caption = 'Date'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
  end
  object pnl_Caption: TPanel
    Left = 5
    Top = 51
    Width = 185
    Height = 36
    Caption = 'CASH BOOK'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
  end
  object txtFolio: TcxCurrencyEdit
    Left = 408
    Top = 56
    Enabled = False
    ParentFont = False
    Properties.Alignment.Horz = taLeftJustify
    Properties.Alignment.Vert = taVCenter
    Properties.DecimalPlaces = 0
    Properties.DisplayFormat = '0'
    TabOrder = 19
    Width = 121
  end
  object sp_CashVoucher_View: TMSStoredProc
    StoredProcName = 'sp_CashVoucher_View'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_CashVoucher_View (:FYear, :CompanyCode,' +
        ' :sUserID, :Folio, :VoucherNo, :Option)}')
    Left = 496
    Top = 32
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'FYear'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'CompanyCode'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'sUserID'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftInteger
        Name = 'Folio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'VoucherNo'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'Option'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'sp_CashVoucher_View'
  end
  object sp_Util_LOV_COA_01: TMSStoredProc
    StoredProcName = 'sp_Util_LOV_COA'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Util_LOV_COA (:sUserID, :sType, :Option' +
        ')}')
    Left = 232
    Top = 98
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = 'sUserID'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftString
        Name = 'sType'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftInteger
        Name = 'Option'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'sp_Util_LOV_COA'
  end
  object ds_sp_Util_LOV_COA_01: TMSDataSource
    DataSet = sp_Util_LOV_COA_01
    Left = 264
    Top = 98
  end
  object dxMemData1: TdxMemData
    Indexes = <
      item
        SortOptions = []
      end>
    SortOptions = []
    Left = 32
    Top = 312
    object dxMemData1AccountCode: TStringField
      FieldName = 'AccountCode'
    end
    object dxMemData1DescriptionEntry: TStringField
      FieldName = 'DescriptionEntry'
      Size = 125
    end
    object dxMemData1CostCCode: TStringField
      FieldName = 'CostCCode'
      Size = 50
    end
    object dxMemData1SubCostCCode: TStringField
      FieldName = 'SubCostCCode'
      Size = 50
    end
    object dxMemData1Type: TStringField
      FieldName = 'Type'
    end
    object dxMemData1Sno: TStringField
      DefaultExpression = '0'
      FieldName = 'Sno'
    end
    object dxMemData1Amount: TCurrencyField
      ConstraintErrorMessage = 'Data Type Mismatch'
      FieldName = 'Amount'
      currency = False
    end
    object dxMemData1LineCode: TStringField
      FieldName = 'LineCode'
    end
    object dxMemData1sTDate: TStringField
      FieldName = 'sTDate'
      Size = 50
    end
  end
  object MSDataSource1: TMSDataSource
    DataSet = dxMemData1
    Left = 80
    Top = 312
  end
  object sp_502_HeaderAddEdit: TMSStoredProc
    StoredProcName = 'sp_502_HeaderAddEdit'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_502_HeaderAddEdit (:CompanyCode, :UserI' +
        'D, :FiscalYear, :Folio, :VoucherNo, :ControlAccount, :VoucherTyp' +
        'e, :PaidDesc, :Narration, :VoucherDate)}')
    Left = 560
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
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
      end
      item
        DataType = ftString
        Name = 'VoucherNo'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'ControlAccount'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'VoucherType'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'PaidDesc'
        ParamType = ptInput
        Size = 55
      end
      item
        DataType = ftString
        Name = 'Narration'
        ParamType = ptInput
        Size = 155
      end
      item
        DataType = ftDateTime
        Name = 'VoucherDate'
      end>
    CommandStoredProcName = 'sp_502_HeaderAddEdit'
  end
  object sp_502_DetailAddEdit: TMSStoredProc
    StoredProcName = 'sp_502_DetailAddEdit'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_502_DetailAddEdit (:CompanyCode, :UserI' +
        'D, :FiscalYear, :Folio, :VoucherNo, :AccountCode, :VoucherType, ' +
        ':Narration, :ChequeNo, :VoucherDate, :Amount, :LineCode, :Seq)}')
    Left = 528
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
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
      end
      item
        DataType = ftString
        Name = 'VoucherNo'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'AccountCode'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'VoucherType'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'Narration'
        ParamType = ptInput
        Size = 225
      end
      item
        DataType = ftString
        Name = 'ChequeNo'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'VoucherDate'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftFloat
        Name = 'Amount'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'LineCode'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'Seq'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'sp_502_DetailAddEdit'
  end
  object sp_Util_LOV_COA_02: TMSStoredProc
    StoredProcName = 'sp_Util_LOV_COA'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Util_LOV_COA (:sUserID, :sType, :Option' +
        ')}')
    Left = 272
    Top = 186
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = 'sUserID'
        ParamType = ptInput
        Size = 25
        Value = '0001'
      end
      item
        DataType = ftString
        Name = 'sType'
        ParamType = ptInput
        Size = 25
        Value = 'Cash Book'
      end
      item
        DataType = ftInteger
        Name = 'Option'
        ParamType = ptInput
        Value = 1
      end>
    CommandStoredProcName = 'sp_Util_LOV_COA'
  end
  object ds_sp_Util_LOV_COA_02: TMSDataSource
    DataSet = sp_Util_LOV_COA_02
    Left = 312
    Top = 186
  end
  object sp_Print_CashVoucher: TMSStoredProc
    StoredProcName = 'sp_Print_CashVoucher'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Print_CashVoucher (:iFolio, :CompanyId)' +
        '}')
    Left = 592
    Top = 34
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = 'iFolio'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CompanyId'
        ParamType = ptInput
        Size = 4
      end>
    CommandStoredProcName = 'sp_Print_CashVoucher'
  end
  object dxBarManager1: TdxBarManager
    AutoAlignBars = True
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
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    SunkenBorder = True
    UseSystemFont = False
    WaitForDockingTime = 5
    Left = 664
    Top = 8
    DockControlHeights = (
      0
      0
      45
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
          ItemName = 'btn_Document_find'
        end
        item
          Visible = True
          ItemName = 'btn_doc_Print'
        end
        item
          Visible = True
          ItemName = 'btn_Delete'
        end
        item
          Visible = True
          ItemName = 'btn_ChangeDate'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_FirstRec'
        end
        item
          Visible = True
          ItemName = 'btn_BackRec'
        end
        item
          Visible = True
          ItemName = 'btn_NextRec'
        end
        item
          Visible = True
          ItemName = 'btn_LastRec'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = True
      Visible = True
      WholeRow = True
    end
    object btn_FirstRec: TdxBarLargeButton
      Caption = 'First'
      Category = 0
      Hint = 'First'
      Visible = ivAlways
      LargeImageIndex = 2
      ShortCut = 116
      OnClick = btn_FirstRecClick
    end
    object btn_doc_Print: TdxBarLargeButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      LargeImageIndex = 5
      ShortCut = 16464
      OnClick = btnPrintClick
    end
    object btn_Document_find: TdxBarLargeButton
      Caption = 'Find'
      Category = 0
      Hint = 'Find'
      Visible = ivAlways
      LargeImageIndex = 11
      ShortCut = 16454
      OnClick = btnFindClick
    end
    object btn_Save: TdxBarLargeButton
      Caption = 'Save'
      Category = 0
      Hint = 'Save'
      Visible = ivAlways
      LargeImageIndex = 14
      ShortCut = 16467
      OnClick = btn_SaveDocClick
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
      OnClick = btn_ChangeDateClick
    end
    object btn_BackRec: TdxBarLargeButton
      Caption = 'Back'
      Category = 0
      Hint = 'Back'
      Visible = ivAlways
      LargeImageIndex = 1
      OnClick = btn_BackRecClick
    end
    object btn_NextRec: TdxBarLargeButton
      Caption = 'Next'
      Category = 0
      Hint = 'Next'
      Visible = ivAlways
      LargeImageIndex = 3
      OnClick = btn_NextRecClick
    end
    object btn_LastRec: TdxBarLargeButton
      Caption = 'Last'
      Category = 0
      Hint = 'Last'
      Visible = ivAlways
      LargeImageIndex = 4
      OnClick = btn_LastRecClick
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
end
