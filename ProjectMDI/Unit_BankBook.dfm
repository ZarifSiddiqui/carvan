object frm_BankBook: Tfrm_BankBook
  Left = 290
  Top = 197
  Width = 1109
  Height = 622
  Caption = 'Bank Book'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Grid_Debit: TcxGrid
    Left = 0
    Top = 333
    Width = 1101
    Height = 192
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvRaised
    BevelKind = bkSoft
    BorderWidth = 5
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnEnter = Grid_DebitEnter
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
      DataController.DataSource = ds_tblBankDtl
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
          OnGetText = View_DebitTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText
          Column = View_DebitAmount
        end
        item
          Format = '0'
          Kind = skCount
          Column = View_DebitChequeNo
        end
        item
          Format = ',0.00'
          Kind = skSum
          OnGetText = View_DebitTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems6GetText
          Column = View_DebitDebit
        end
        item
          Format = ',0.00'
          Kind = skSum
          OnGetText = View_DebitTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems7GetText
          Column = View_DebitCredit
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      NewItemRow.SeparatorColor = 34301
      NewItemRow.SeparatorWidth = 5
      OptionsBehavior.AlwaysShowEditor = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.ExpandMasterRowOnDblClick = False
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.DataRowSizing = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.CellSelect = False
      OptionsView.FocusRect = False
      OptionsView.Navigator = True
      OptionsView.NoDataToDisplayInfoText = '< No data found >'
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 26
      Styles.Footer = DM.cxStyle_ReadOnly
      object View_DebitCompanyId: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyId'
        Visible = False
        VisibleForCustomization = False
        Width = 105
      end
      object View_DebitVoucherNo: TcxGridDBColumn
        DataBinding.FieldName = 'VoucherNo'
        Visible = False
        VisibleForCustomization = False
        Width = 91
      end
      object View_DebitColumn1: TcxGridDBColumn
        DataBinding.FieldName = 'AccountCode'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownRows = 12
        Properties.DropDownSizeable = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'AccountCode'
        Properties.ListColumns = <
          item
            FieldName = 'AccountCode'
          end
          item
            FieldName = 'AccountName'
          end>
        Properties.ListSource = ds_MSQuery_COA_Dtl
        Properties.PostPopupValueOnTab = True
        Properties.ValidateOnEnter = False
        Properties.OnCloseUp = View_DebitColumn1PropertiesCloseUp
        Properties.OnValidate = View_DebitColumn1PropertiesValidate
        Visible = False
        Width = 141
      end
      object View_DebitAccountCode: TcxGridDBColumn
        Caption = 'Account'
        DataBinding.FieldName = 'AccountCode'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownAutoSize = True
        Properties.DropDownRows = 12
        Properties.DropDownSizeable = True
        Properties.GridMode = True
        Properties.HideSelection = False
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'AccountCode'
        Properties.ListColumns = <
          item
            FieldName = 'AccountName'
          end
          item
            FieldName = 'AccountCode'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_sp_Util_LOV_COA_03
        Properties.PostPopupValueOnTab = True
        Properties.ValidateOnEnter = False
        Properties.OnCloseUp = View_DebitColumn1PropertiesCloseUp
        Properties.OnValidate = View_DebitColumn1PropertiesValidate
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 231
      end
      object View_DebitDescriptionEntry: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'DescriptionEntry'
        Options.Filtering = False
        Width = 294
      end
      object View_DebitChequeNo: TcxGridDBColumn
        Caption = 'Chq./Inv #'
        DataBinding.FieldName = 'ChequeNo'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 60
      end
      object View_DebitChequeDate: TcxGridDBColumn
        Caption = 'Date'
        DataBinding.FieldName = 'ChequeDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.SaveTime = False
        Properties.ShowTime = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 93
      end
      object View_DebitType: TcxGridDBColumn
        DataBinding.FieldName = 'Type'
        PropertiesClassName = 'TcxRadioGroupProperties'
        Properties.Columns = 2
        Properties.DefaultCaption = 'Debit'
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Caption = 'Debit'
            Value = 'D'
          end
          item
            Caption = 'Credit'
            Value = 'C'
          end>
        Visible = False
        Options.Editing = False
        Options.Focusing = False
        VisibleForCustomization = False
        Width = 113
      end
      object View_DebitAmount: TcxGridDBColumn
        DataBinding.FieldName = 'Amount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.MinValue = 1.000000000000000000
        Properties.Nullable = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 64
      end
      object View_DebitCancel: TcxGridDBColumn
        DataBinding.FieldName = 'Cancel'
        Visible = False
        Width = 38
      end
      object View_DebitChqClear: TcxGridDBColumn
        DataBinding.FieldName = 'ChqClear'
        Visible = False
        Width = 81
      end
      object View_DebitChqClearDate: TcxGridDBColumn
        DataBinding.FieldName = 'ChqClearDate'
        Visible = False
        Width = 90
      end
      object View_DebitBankStDate: TcxGridDBColumn
        DataBinding.FieldName = 'BankStDate'
        Visible = False
        Width = 62
      end
      object View_DebitDebit: TcxGridDBColumn
        DataBinding.FieldName = 'Debit'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MinValue = True
        Properties.Nullable = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 50
      end
      object View_DebitCredit: TcxGridDBColumn
        DataBinding.FieldName = 'Credit'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taRightJustify
        Properties.AssignedValues.MinValue = True
        Properties.Nullable = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 51
      end
      object View_DebitCostCCode: TcxGridDBColumn
        Caption = 'CostCentre'
        DataBinding.FieldName = 'CostCCode'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'CostCCode'
        Properties.ListColumns = <
          item
            FieldName = 'CostC'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_LOV_CostC
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 68
      end
      object View_DebitSubCostCCode: TcxGridDBColumn
        Caption = 'SubCostCentre'
        DataBinding.FieldName = 'SubCostCCode'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.KeyFieldNames = 'SubCostCCode'
        Properties.ListColumns = <
          item
            FieldName = 'SubCostC'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_LOV_SubCostC
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 67
      end
      object View_DebitVoucherNoOld: TcxGridDBColumn
        DataBinding.FieldName = 'VoucherNoOld'
        Visible = False
        VisibleForCustomization = False
        Width = 91
      end
      object View_DebitSno: TcxGridDBColumn
        DataBinding.FieldName = 'Sno'
        Visible = False
        VisibleForCustomization = False
        Width = 28
      end
      object View_DebitFKFolio: TcxGridDBColumn
        DataBinding.FieldName = 'FKFolio'
        Visible = False
      end
      object View_DebitStaxInvNo: TcxGridDBColumn
        DataBinding.FieldName = 'StaxInvNo'
        Visible = False
        VisibleForCustomization = False
      end
      object View_DebitSTaxInvDate: TcxGridDBColumn
        DataBinding.FieldName = 'STaxInvDate'
        Visible = False
        VisibleForCustomization = False
      end
      object View_DebitTypeCode: TcxGridDBColumn
        DataBinding.FieldName = 'TypeCode'
        Visible = False
        VisibleForCustomization = False
      end
      object View_DebitExcludingStAmt: TcxGridDBColumn
        DataBinding.FieldName = 'ExcludingStAmt'
        Visible = False
        VisibleForCustomization = False
      end
      object View_DebitStaxPer: TcxGridDBColumn
        DataBinding.FieldName = 'StaxPer'
        Visible = False
        VisibleForCustomization = False
      end
      object View_DebitSTaxAmt: TcxGridDBColumn
        DataBinding.FieldName = 'STaxAmt'
        Visible = False
        VisibleForCustomization = False
      end
      object View_DebitNetAmount: TcxGridDBColumn
        DataBinding.FieldName = 'NetAmount'
        Visible = False
        VisibleForCustomization = False
      end
      object View_DebitTransfer: TcxGridDBColumn
        DataBinding.FieldName = 'Transfer'
        Visible = False
        VisibleForCustomization = False
      end
      object View_DebitNotCharge: TcxGridDBColumn
        DataBinding.FieldName = 'NotCharge'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ValueChecked = '-1'
        Properties.ValueUnchecked = '0'
        Visible = False
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        VisibleForCustomization = False
        Width = 64
      end
    end
    object cxGridLevel3: TcxGridLevel
      GridView = View_Debit
    end
  end
  object Panel_Header: TPanel
    Left = 0
    Top = 45
    Width = 1101
    Height = 160
    Align = alTop
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object xvDate: TcxDBDateEdit
      Left = 833
      Top = 112
      DataBinding.DataField = 'VoucherDate'
      DataBinding.DataSource = ds_tblBankMst
      Enabled = False
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
      Visible = False
      Width = 110
    end
    object cxLabel1: TcxLabel
      Left = 33
      Top = 19
      Caption = 'Voucher #'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object VoucherType: TcxDBRadioGroup
      Left = 448
      Top = 52
      Caption = 'Voucher Type'
      DataBinding.DataField = 'VoucherType'
      DataBinding.DataSource = ds_tblBankMst
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = '&Receipt'
          Value = 'R'
        end
        item
          Caption = '&Payment'
          Value = 'P'
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Height = 93
      Width = 105
    end
    object Folio: TcxDBCurrencyEdit
      Left = 456
      Top = 16
      DataBinding.DataField = 'Folio'
      DataBinding.DataSource = ds_tblBankMst
      Enabled = False
      ParentFont = False
      Properties.DisplayFormat = '0'
      TabOrder = 0
      Width = 73
    end
    object Panel_PR: TPanel
      Left = 32
      Top = 113
      Width = 408
      Height = 33
      Alignment = taLeftJustify
      Caption = 'Paid/Rec. By'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object Paid_Desc: TcxDBTextEdit
        Left = 88
        Top = 4
        DataBinding.DataField = 'Paid_Desc'
        DataBinding.DataSource = ds_tblBankMst
        ParentFont = False
        TabOrder = 0
        Width = 313
      end
    end
    object Panel_Desc: TPanel
      Left = 32
      Top = 79
      Width = 408
      Height = 32
      Alignment = taLeftJustify
      Caption = 'Description'
      Color = clActiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Description: TcxDBTextEdit
        Left = 88
        Top = 4
        DataBinding.DataField = 'Description'
        DataBinding.DataSource = ds_tblBankMst
        ParentFont = False
        TabOrder = 0
        Width = 313
      end
    end
    object Panel_CA: TPanel
      Left = 32
      Top = 45
      Width = 408
      Height = 32
      Alignment = taLeftJustify
      Caption = 'Control A/C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object LC_ControlAC: TcxDBLookupComboBox
        Left = 88
        Top = 4
        DataBinding.DataField = 'BookAccount'
        DataBinding.DataSource = ds_tblBankMst
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'AccountCode'
        Properties.ListColumns = <
          item
            FieldName = 'AccountName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = ds_MSQuery_HeaderCOA
        Style.LookAndFeel.Kind = lfFlat
        Style.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.Kind = lfFlat
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.Kind = lfFlat
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.Kind = lfFlat
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 0
        Width = 313
      end
    end
    object VoucherNo: TcxDBTextEdit
      Left = 103
      Top = 16
      TabStop = False
      DataBinding.DataField = 'VoucherNo'
      DataBinding.DataSource = ds_tblBankMst
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnChange = VoucherNoPropertiesChange
      Style.Color = clActiveCaption
      TabOrder = 7
      Width = 177
    end
    object btn_EnableDisable: TButton
      Left = 536
      Top = 16
      Width = 123
      Height = 25
      Caption = 'btn_EnableDisable'
      TabOrder = 8
      Visible = False
      OnClick = btn_EnableDisableClick
    end
    object cxDBRadioGroup1: TcxDBRadioGroup
      Left = 568
      Top = 51
      Caption = 'Status'
      DataBinding.DataField = 'Cancel'
      DataBinding.DataSource = ds_tblBankMst
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'Posted'
          Value = '0'
        end
        item
          Caption = 'Canceled'
          Value = '1'
        end>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Height = 73
      Width = 155
    end
    object cxLabel2: TcxLabel
      Left = 280
      Top = 14
      Caption = 'Date'
      ParentFont = False
    end
    object vDate: TcxDBDateEdit
      Left = 329
      Top = 16
      DataBinding.DataField = 'VoucherDate'
      DataBinding.DataSource = ds_tblBankMst
      Enabled = False
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
      TabOrder = 11
      Width = 110
    end
  end
  object Panel_Diff: TPanel
    Left = 0
    Top = 525
    Width = 1101
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      1101
      41)
    object Edit_Diff: TcxCurrencyEdit
      Left = 905
      Top = 4
      Anchors = [akTop, akRight]
      AutoSize = False
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Nullable = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clRed
      Style.IsFontAssigned = True
      StyleDisabled.TextColor = clRed
      TabOrder = 0
      Height = 31
      Width = 177
    end
    object cxLabel3: TcxLabel
      Left = 809
      Top = 8
      Anchors = [akTop, akRight]
      Caption = 'DIFFERENCE'
      ParentFont = False
    end
  end
  object RzStatusBar2: TRzStatusBar
    Left = 0
    Top = 566
    Width = 1101
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
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    ParentFont = False
    TabOrder = 3
    VisualStyle = vsClassic
    object RzDBStatusPane1: TRzDBStatusPane
      Left = 153
      Top = 1
      Width = 200
      Height = 17
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'Create By'
      DataField = 'UserID'
      DataSource = ds_tblBankMst
    end
    object RzDBStatusPane3: TRzDBStatusPane
      Left = 353
      Top = 1
      Width = 200
      Height = 17
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'Created'
      DataField = 'EntryDate'
      DataSource = ds_tblBankMst
    end
    object RzDBStatusPane2: TRzDBStatusPane
      Left = 1
      Top = 1
      Width = 152
      Height = 17
      Align = alLeft
      ParentShowHint = False
      FieldLabel = 'Folio :'
      Alignment = taRightJustify
      DataField = 'Folio'
      DataSource = ds_tblBankMst
    end
    object RzStatusPane1: TRzStatusPane
      Left = 553
      Top = 1
      Height = 17
      Align = alLeft
    end
  end
  object GB_AddEdit: TGroupBox
    Left = 0
    Top = 205
    Width = 1101
    Height = 128
    Align = alTop
    Caption = 'Add/Edit Line'
    Color = clActiveCaption
    ParentColor = False
    TabOrder = 8
    TabStop = True
    object LC_AccountCode: TcxDBLookupComboBox
      Left = 84
      Top = 33
      DataBinding.DataField = 'AccountCode'
      DataBinding.DataSource = ds_tblBankDtl
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'AccountCode'
      Properties.ListColumns = <
        item
          FieldName = 'AccountName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_MSQuery_COA_Dtl
      Properties.OnCloseUp = LC_AccountCodePropertiesCloseUp
      Properties.OnValidate = LC_AccountCodePropertiesValidate
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 0
      Width = 316
    end
    object ChequeNo: TcxDBTextEdit
      Left = 407
      Top = 81
      DataBinding.DataField = 'ChequeNo'
      DataBinding.DataSource = ds_tblBankDtl
      ParentFont = False
      TabOrder = 4
      Width = 146
    end
    object ChequeDate: TcxDBDateEdit
      Left = 556
      Top = 81
      DataBinding.DataField = 'ChequeDate'
      DataBinding.DataSource = ds_tblBankDtl
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
      TabOrder = 5
      Width = 110
    end
    object Amount: TcxDBCurrencyEdit
      Left = 675
      Top = 81
      DataBinding.DataField = 'Amount'
      DataBinding.DataSource = ds_tblBankDtl
      ParentFont = False
      Properties.DisplayFormat = ',0.00'
      Properties.Nullable = False
      TabOrder = 6
      Width = 105
    end
    object Credit: TcxDBCurrencyEdit
      Left = 787
      Top = 81
      DataBinding.DataField = 'Credit'
      DataBinding.DataSource = ds_tblBankDtl
      ParentFont = False
      Properties.DisplayFormat = ',0.00'
      Properties.Nullable = False
      TabOrder = 7
      Width = 105
    end
    object LC_CostCCode: TcxDBLookupComboBox
      Left = 407
      Top = 33
      DataBinding.DataField = 'CostCCode'
      DataBinding.DataSource = ds_tblBankDtl
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'CostCCode'
      Properties.ListColumns = <
        item
          FieldName = 'CostC'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_sp_Get_Rlxn_Lov
      Properties.OnCloseUp = LC_CostCCodePropertiesCloseUp
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Width = 192
    end
    object btn_SaveLine: TcxButton
      Left = 896
      Top = 73
      Width = 75
      Height = 38
      Caption = 'Save'
      TabOrder = 8
      OnClick = btn_SaveLineClick
    end
    object cxLabel4: TcxLabel
      Left = 11
      Top = 61
      Caption = 'Description'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel5: TcxLabel
      Left = 406
      Top = 61
      Caption = 'Chq./Inv #'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel6: TcxLabel
      Left = 556
      Top = 61
      Caption = 'Date'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object lbl_Amount: TcxLabel
      Left = 676
      Top = 61
      Caption = 'Amount'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object lbl_Credit: TcxLabel
      Left = 788
      Top = 61
      Caption = 'Credit'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel7: TcxLabel
      Left = 604
      Top = 12
      Caption = 'Sub-CostCentre'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel8: TcxLabel
      Left = 410
      Top = 12
      Caption = 'CostCentre'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object cxLabel9: TcxLabel
      Left = 30
      Top = 33
      Caption = 'Account'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
    end
    object btn_AddLine: TcxButton
      Left = 896
      Top = 33
      Width = 75
      Height = 38
      Caption = '&Add Line'
      TabOrder = 17
      OnClick = btn_AddLineClick
    end
    object LC_SubCostCCode: TcxDBLookupComboBox
      Left = 602
      Top = 33
      DataBinding.DataField = 'SubCostCCode'
      DataBinding.DataSource = ds_tblBankDtl
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'SubCostCCode'
      Properties.ListColumns = <
        item
          FieldName = 'SubCostC'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_sp_Get_Rlxn_Lov_SubC
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 192
    end
    object DescriptionEntry: TcxDBMemo
      Left = 83
      Top = 59
      DataBinding.DataField = 'DescriptionEntry'
      DataBinding.DataSource = ds_tblBankDtl
      ParentFont = False
      Properties.ScrollBars = ssVertical
      TabOrder = 3
      Height = 63
      Width = 317
    end
  end
  object tblBankMst: TMSTable
    TableName = 'tblBankMst'
    OrderFields = 'Folio'
    Connection = DM.MSConnection
    AfterScroll = tblBankMstAfterScroll
    IndexFieldNames = 'Folio'
    Left = 728
    Top = 10
  end
  object tblBankDtl: TMSTable
    TableName = 'tblBankDtl'
    OrderFields = 'sno'
    MasterFields = 'Folio;CompanyId'
    DetailFields = 'FKFolio;CompanyId'
    MasterSource = ds_tblBankMst
    Connection = DM.MSConnection
    BeforeInsert = tblBankDtlBeforeInsert
    BeforePost = tblBankDtlBeforePost
    AfterScroll = tblBankDtlAfterScroll
    Left = 808
    Top = 10
  end
  object ds_tblBankMst: TMSDataSource
    DataSet = tblBankMst
    Left = 768
    Top = 10
  end
  object ds_tblBankDtl: TMSDataSource
    DataSet = tblBankDtl
    Left = 856
    Top = 10
  end
  object ds_MSQuery_HeaderCOA: TMSDataSource
    DataSet = sp_Util_LOV_COA_01
    Left = 704
    Top = 90
  end
  object ds_MSQuery_COA_Dtl: TMSDataSource
    DataSet = sp_Util_LOV_COA_02
    Left = 704
    Top = 122
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = True
    DataSource = ds_tblBankMst
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnInsert, dxbnEdit, dxbnPost, dxbnCancel, dxbnRefresh]
    Left = 648
    Top = 10
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
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
    Left = 680
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
      ItemLinks = <
        item
          Visible = True
          ItemName = 'Bar_FormName'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_Insert'
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
          ItemName = 'dxBarLargeButton1'
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
          ItemName = 'btn_Document_find'
        end
        item
          Visible = True
          ItemName = 'btn_doc_Print'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_ChangeDate'
        end
        item
          Visible = True
          ItemName = 'btn_Delete'
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      LargeImageIndex = 15
      ShortCut = 116
      OnClick = dxBarLargeButton1Click
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
      OnClick = btn_doc_PrintClick
    end
    object btn_Document_find: TdxBarLargeButton
      Caption = 'Find'
      Category = 0
      Hint = 'Find'
      Visible = ivAlways
      LargeImageIndex = 11
      ShortCut = 16454
      OnClick = btn_Document_findClick
    end
    object Bar_FormName: TcxBarEditItem
      Caption = 'frmName'
      Category = 0
      Hint = 'frmName'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxLabelProperties'
      StyleEdit = DM.cxStyle1
      InternalEditValue = nil
    end
    object CB_Print: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxComboBoxProperties'
      Properties.ImmediatePost = True
      Properties.ImmediateUpdateText = True
      Properties.Items.Strings = (
        'View'
        'Print'
        'Edit')
      Properties.OnChange = CB_PrintPropertiesChange
      InternalEditValue = 'View'
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
    object btn_Insert: TdxBarLargeButton
      Caption = 'New'
      Category = 0
      Hint = 'New'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 112
      OnClick = btn_InsertClick
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
  object sp_Util_LOV_COA_01: TMSStoredProc
    StoredProcName = 'sp_Util_LOV_COA'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Util_LOV_COA (:sUserID, :sType, :Option' +
        ')}')
    Left = 664
    Top = 90
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
  object sp_Util_LOV_COA_02: TMSStoredProc
    StoredProcName = 'sp_Util_LOV_COA'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Util_LOV_COA (:sUserID, :sType, :Option' +
        ')}')
    Left = 664
    Top = 122
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
  object CashVoucherPrint: TMSStoredProc
    StoredProcName = 'CashVoucherPrint'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL CashVoucherPrint (:VoucherFrom, :VoucherTo' +
        ', :CompanyId)}')
    Left = 664
    Top = 58
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'VoucherFrom'
        ParamType = ptInput
        Size = 15
      end
      item
        DataType = ftString
        Name = 'VoucherTo'
        ParamType = ptInput
        Size = 15
      end
      item
        DataType = ftString
        Name = 'CompanyId'
        ParamType = ptInput
        Size = 4
      end>
    CommandStoredProcName = 'CashVoucherPrint'
  end
  object Crpe: TCrpe
    About = 'Version and Credits...'
    DesignControls = 'Design-Time Window Controls'
    Version.Crpe.Major = 0
    Version.Crpe.Minor = 0
    Version.Crpe.Release = 0
    Version.Crpe.Build = 0
    Version.Report.Major = 0
    Version.Report.Minor = 0
    Version.Report.Letter = #0
    Version.Windows.Platform = 'NT'
    Version.Windows.Major = 5
    Version.Windows.Minor = 1
    Version.Windows.Build = '2600'
    TempPath = 'C:\Users\Admin\AppData\Local\Temp\'
    PrintDate.Day = 0
    PrintDate.Month = 0
    PrintDate.Year = 0
    Subreports.Number = 0
    Subreports.Item.Top = -1
    Subreports.Item.Left = -1
    Subreports.Item.Width = -1
    Subreports.Item.Height = -1
    Subreports.Item.Border.Left = lsNone
    Subreports.Item.Border.Right = lsNone
    Subreports.Item.Border.Top = lsNone
    Subreports.Item.Border.Bottom = lsNone
    Subreports.Item.Border.TightHorizontal = False
    Subreports.Item.Border.DropShadow = False
    Subreports.Item.Border.ForeColor = clNone
    Subreports.Item.Border.BackgroundColor = clNone
    Subreports.Item.NLinks = 0
    GroupSortFields.Number = -1
    Groups.Number = -1
    Groups.Item.CustomizeGroupName = False
    ParamFields.AllowDialog = True
    ParamFields.Item.Top = -1
    ParamFields.Item.Left = -1
    ParamFields.Item.Width = -1
    ParamFields.Item.Height = -1
    ParamFields.Item.Border.Left = lsNone
    ParamFields.Item.Border.Right = lsNone
    ParamFields.Item.Border.Top = lsNone
    ParamFields.Item.Border.Bottom = lsNone
    ParamFields.Item.Border.TightHorizontal = False
    ParamFields.Item.Border.DropShadow = False
    ParamFields.Item.Border.ForeColor = clNone
    ParamFields.Item.Border.BackgroundColor = clNone
    ParamFields.Item.Format.Alignment = haDefault
    ParamFields.Item.Format.SuppressIfDuplicated = False
    ParamFields.Item.Format.CanGrow = False
    ParamFields.Item.Format.MaxNLines = 0
    ParamFields.Item.Format.Field.Number.CurrencySymbol = '$'
    ParamFields.Item.Format.Field.Number.ThousandSymbol = ','
    ParamFields.Item.Format.Field.Number.DecimalSymbol = '.'
    ParamFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    ParamFields.Item.Format.Field.Date.FirstSeparator = '/'
    ParamFields.Item.Format.Field.Date.SecondSeparator = '/'
    ParamFields.Item.Format.Field.Time.AMString = 'AM'
    ParamFields.Item.Format.Field.Time.PMString = 'PM'
    ParamFields.Item.Format.Field.Time.HourMinSeparator = ':'
    ParamFields.Item.Format.Field.Time.MinSecSeparator = ':'
    ParamFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    ParamFields.Item.Font.Charset = DEFAULT_CHARSET
    ParamFields.Item.Font.Color = clWindowText
    ParamFields.Item.Font.Height = -11
    ParamFields.Item.Font.Name = 'MS Sans Serif'
    ParamFields.Item.Font.Style = []
    ParamFields.Item.HiliteConditions.Item.FontColor = clNone
    ParamFields.Item.HiliteConditions.Item.Background = clNone
    ParamFields.Item.ParamType = pfNoValue
    ParamFields.Item.ParamSource = psReport
    ParamFields.Item.Info.AllowNull = True
    ParamFields.Item.Info.AllowEditing = True
    ParamFields.Item.Info.AllowMultipleValues = False
    ParamFields.Item.Info.ValueType = vtDiscrete
    ParamFields.Item.Info.PartOfGroup = False
    ParamFields.Item.Info.MutuallyExclusiveGroup = True
    ParamFields.Item.Info.GroupNum = -1
    ParamFields.Item.ValueLimit = False
    ParamFields.Item.Ranges.Item.Bounds = IncludeStartAndEnd
    ParamFields.Item.NeedsCurrentValue = False
    ParamFields.Item.IsLinked = False
    Formulas.Item.Top = -1
    Formulas.Item.Left = -1
    Formulas.Item.Width = -1
    Formulas.Item.Height = -1
    Formulas.Item.Border.Left = lsNone
    Formulas.Item.Border.Right = lsNone
    Formulas.Item.Border.Top = lsNone
    Formulas.Item.Border.Bottom = lsNone
    Formulas.Item.Border.TightHorizontal = False
    Formulas.Item.Border.DropShadow = False
    Formulas.Item.Border.ForeColor = clNone
    Formulas.Item.Border.BackgroundColor = clNone
    Formulas.Item.Format.Alignment = haDefault
    Formulas.Item.Format.SuppressIfDuplicated = False
    Formulas.Item.Format.CanGrow = False
    Formulas.Item.Format.MaxNLines = 0
    Formulas.Item.Format.Field.Number.CurrencySymbol = '$'
    Formulas.Item.Format.Field.Number.ThousandSymbol = ','
    Formulas.Item.Format.Field.Number.DecimalSymbol = '.'
    Formulas.Item.Format.Field.Number.ShowZeroValueAs = '0'
    Formulas.Item.Format.Field.Date.FirstSeparator = '/'
    Formulas.Item.Format.Field.Date.SecondSeparator = '/'
    Formulas.Item.Format.Field.Time.AMString = 'AM'
    Formulas.Item.Format.Field.Time.PMString = 'PM'
    Formulas.Item.Format.Field.Time.HourMinSeparator = ':'
    Formulas.Item.Format.Field.Time.MinSecSeparator = ':'
    Formulas.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    Formulas.Item.Font.Charset = DEFAULT_CHARSET
    Formulas.Item.Font.Color = clWindowText
    Formulas.Item.Font.Height = -11
    Formulas.Item.Font.Name = 'MS Sans Serif'
    Formulas.Item.Font.Style = []
    Formulas.Item.HiliteConditions.Item.FontColor = clNone
    Formulas.Item.HiliteConditions.Item.Background = clNone
    AreaFormat.Item.NSections = 0
    SectionSize.Item.Height = -1
    SectionSize.Item.Width = -1
    SQLExpressions.Item.Top = -1
    SQLExpressions.Item.Left = -1
    SQLExpressions.Item.Width = -1
    SQLExpressions.Item.Height = -1
    SQLExpressions.Item.Border.Left = lsNone
    SQLExpressions.Item.Border.Right = lsNone
    SQLExpressions.Item.Border.Top = lsNone
    SQLExpressions.Item.Border.Bottom = lsNone
    SQLExpressions.Item.Border.TightHorizontal = False
    SQLExpressions.Item.Border.DropShadow = False
    SQLExpressions.Item.Border.ForeColor = clNone
    SQLExpressions.Item.Border.BackgroundColor = clNone
    SQLExpressions.Item.Format.Alignment = haDefault
    SQLExpressions.Item.Format.SuppressIfDuplicated = False
    SQLExpressions.Item.Format.CanGrow = False
    SQLExpressions.Item.Format.MaxNLines = 0
    SQLExpressions.Item.Format.Field.Number.CurrencySymbol = '$'
    SQLExpressions.Item.Format.Field.Number.ThousandSymbol = ','
    SQLExpressions.Item.Format.Field.Number.DecimalSymbol = '.'
    SQLExpressions.Item.Format.Field.Number.ShowZeroValueAs = '0'
    SQLExpressions.Item.Format.Field.Date.FirstSeparator = '/'
    SQLExpressions.Item.Format.Field.Date.SecondSeparator = '/'
    SQLExpressions.Item.Format.Field.Time.AMString = 'AM'
    SQLExpressions.Item.Format.Field.Time.PMString = 'PM'
    SQLExpressions.Item.Format.Field.Time.HourMinSeparator = ':'
    SQLExpressions.Item.Format.Field.Time.MinSecSeparator = ':'
    SQLExpressions.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    SQLExpressions.Item.Font.Charset = DEFAULT_CHARSET
    SQLExpressions.Item.Font.Color = clWindowText
    SQLExpressions.Item.Font.Height = -11
    SQLExpressions.Item.Font.Name = 'MS Sans Serif'
    SQLExpressions.Item.Font.Style = []
    SQLExpressions.Item.HiliteConditions.Item.FontColor = clNone
    SQLExpressions.Item.HiliteConditions.Item.Background = clNone
    LogOnInfo.Item.Table = -1
    SessionInfo.Table = -1
    SessionInfo.Item.Propagate = True
    ExportOptions.Excel.Constant = 36.000000000000000000
    ExportOptions.Excel.WorksheetFunctions = False
    ExportOptions.Excel.FirstPage = 1
    ExportOptions.Excel.LastPage = 1
    ExportOptions.HTML.PageNavigator = True
    ExportOptions.HTML.SeparatePages = True
    ExportOptions.HTML.FirstPage = 1
    ExportOptions.HTML.LastPage = 1
    ExportOptions.RTF.FirstPage = 1
    ExportOptions.RTF.LastPage = 1
    ExportOptions.Word.FirstPage = 1
    ExportOptions.Word.LastPage = 1
    ExportOptions.PDF.FirstPage = 1
    ExportOptions.PDF.LastPage = 1
    ExportOptions.Text.StringDelimiter = '"'
    ExportOptions.Text.FieldSeparator = ','
    Lines.Item.LineStyle = lsNone
    Lines.Item.Left = -1
    Lines.Item.Right = -1
    Lines.Item.Width = -1
    Lines.Item.Top = -1
    Lines.Item.Bottom = -1
    Lines.Item.Color = clNone
    Lines.Item.Extend = False
    Lines.Item.Suppress = False
    Boxes.Number = -1
    Pictures.Item.Top = -1
    Pictures.Item.Left = -1
    Pictures.Item.Width = -1
    Pictures.Item.Height = -1
    Pictures.Item.Border.Left = lsNone
    Pictures.Item.Border.Right = lsNone
    Pictures.Item.Border.Top = lsNone
    Pictures.Item.Border.Bottom = lsNone
    Pictures.Item.Border.TightHorizontal = False
    Pictures.Item.Border.DropShadow = False
    Pictures.Item.Border.ForeColor = clNone
    Pictures.Item.Border.BackgroundColor = clNone
    Pictures.Item.CropLeft = -1
    Pictures.Item.CropRight = -1
    Pictures.Item.CropTop = -1
    Pictures.Item.CropBottom = -1
    TextObjects.Item.Top = -1
    TextObjects.Item.Left = -1
    TextObjects.Item.Width = -1
    TextObjects.Item.Height = -1
    TextObjects.Item.Border.Left = lsNone
    TextObjects.Item.Border.Right = lsNone
    TextObjects.Item.Border.Top = lsNone
    TextObjects.Item.Border.Bottom = lsNone
    TextObjects.Item.Border.TightHorizontal = False
    TextObjects.Item.Border.DropShadow = False
    TextObjects.Item.Border.ForeColor = clNone
    TextObjects.Item.Border.BackgroundColor = clNone
    TextObjects.Item.Format.Alignment = haDefault
    TextObjects.Item.Format.SuppressIfDuplicated = False
    TextObjects.Item.Format.CanGrow = False
    TextObjects.Item.Format.MaxNLines = 0
    TextObjects.Item.Format.Paragraph.LineSpacing = 1.000000000000000000
    TextObjects.Item.Font.Charset = DEFAULT_CHARSET
    TextObjects.Item.Font.Color = clWindowText
    TextObjects.Item.Font.Height = -11
    TextObjects.Item.Font.Name = 'MS Sans Serif'
    TextObjects.Item.Font.Style = []
    TextObjects.Item.Paragraphs.Item.Alignment = haDefault
    TextObjects.Item.Paragraphs.Item.IndentFirstLine = 0
    TextObjects.Item.Paragraphs.Item.IndentLeft = 0
    TextObjects.Item.Paragraphs.Item.IndentRight = 0
    TextObjects.Item.Paragraphs.Item.TextStart = 0
    TextObjects.Item.Paragraphs.Item.TextEnd = 0
    TextObjects.Item.Paragraphs.Item.TabStops.Item.Alignment = haDefault
    TextObjects.Item.Paragraphs.Item.TabStops.Item.Offset = -1
    TextObjects.Item.EmbeddedFields.Item.FieldObjectType = oftNone
    TextObjects.Item.EmbeddedFields.Item.FieldType = fvUnknown
    TextObjects.Item.EmbeddedFields.Item.TextStart = 0
    TextObjects.Item.EmbeddedFields.Item.TextEnd = 0
    TextObjects.Item.EmbeddedFields.Item.Format.Alignment = haDefault
    TextObjects.Item.EmbeddedFields.Item.Format.SuppressIfDuplicated = False
    TextObjects.Item.EmbeddedFields.Item.Format.CanGrow = False
    TextObjects.Item.EmbeddedFields.Item.Format.MaxNLines = 0
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Number.CurrencySymbol = '$'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Number.ThousandSymbol = ','
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Number.DecimalSymbol = '.'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Date.FirstSeparator = '/'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Date.SecondSeparator = '/'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Time.AMString = 'AM'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Time.PMString = 'PM'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Time.HourMinSeparator = ':'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Time.MinSecSeparator = ':'
    TextObjects.Item.EmbeddedFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    TextObjects.Item.EmbeddedFields.Item.Border.Left = lsNone
    TextObjects.Item.EmbeddedFields.Item.Border.Right = lsNone
    TextObjects.Item.EmbeddedFields.Item.Border.Top = lsNone
    TextObjects.Item.EmbeddedFields.Item.Border.Bottom = lsNone
    TextObjects.Item.EmbeddedFields.Item.Border.TightHorizontal = False
    TextObjects.Item.EmbeddedFields.Item.Border.DropShadow = False
    TextObjects.Item.EmbeddedFields.Item.Border.ForeColor = clNone
    TextObjects.Item.EmbeddedFields.Item.Border.BackgroundColor = clNone
    TextObjects.Item.TextSize = -1
    TextObjects.Item.TextHeight = -1
    OleObjects.Item.Top = -1
    OleObjects.Item.Left = -1
    OleObjects.Item.Width = -1
    OleObjects.Item.Height = -1
    OleObjects.Item.Border.Left = lsNone
    OleObjects.Item.Border.Right = lsNone
    OleObjects.Item.Border.Top = lsNone
    OleObjects.Item.Border.Bottom = lsNone
    OleObjects.Item.Border.TightHorizontal = False
    OleObjects.Item.Border.DropShadow = False
    OleObjects.Item.Border.ForeColor = clNone
    OleObjects.Item.Border.BackgroundColor = clNone
    CrossTabs.Item.Top = -1
    CrossTabs.Item.Left = -1
    CrossTabs.Item.Width = -1
    CrossTabs.Item.Height = -1
    CrossTabs.Item.Border.Left = lsNone
    CrossTabs.Item.Border.Right = lsNone
    CrossTabs.Item.Border.Top = lsNone
    CrossTabs.Item.Border.Bottom = lsNone
    CrossTabs.Item.Border.TightHorizontal = False
    CrossTabs.Item.Border.DropShadow = False
    CrossTabs.Item.Border.ForeColor = clNone
    CrossTabs.Item.Border.BackgroundColor = clNone
    Maps.Item.Top = -1
    Maps.Item.Left = -1
    Maps.Item.Width = -1
    Maps.Item.Height = -1
    Maps.Item.Border.Left = lsNone
    Maps.Item.Border.Right = lsNone
    Maps.Item.Border.Top = lsNone
    Maps.Item.Border.Bottom = lsNone
    Maps.Item.Border.TightHorizontal = False
    Maps.Item.Border.DropShadow = False
    Maps.Item.Border.ForeColor = clNone
    Maps.Item.Border.BackgroundColor = clNone
    OLAPCubes.Item.Top = -1
    OLAPCubes.Item.Left = -1
    OLAPCubes.Item.Width = -1
    OLAPCubes.Item.Height = -1
    OLAPCubes.Item.Border.Left = lsNone
    OLAPCubes.Item.Border.Right = lsNone
    OLAPCubes.Item.Border.Top = lsNone
    OLAPCubes.Item.Border.Bottom = lsNone
    OLAPCubes.Item.Border.TightHorizontal = False
    OLAPCubes.Item.Border.DropShadow = False
    OLAPCubes.Item.Border.ForeColor = clNone
    OLAPCubes.Item.Border.BackgroundColor = clNone
    DatabaseFields.Item.Top = -1
    DatabaseFields.Item.Left = -1
    DatabaseFields.Item.Width = -1
    DatabaseFields.Item.Height = -1
    DatabaseFields.Item.Border.Left = lsNone
    DatabaseFields.Item.Border.Right = lsNone
    DatabaseFields.Item.Border.Top = lsNone
    DatabaseFields.Item.Border.Bottom = lsNone
    DatabaseFields.Item.Border.TightHorizontal = False
    DatabaseFields.Item.Border.DropShadow = False
    DatabaseFields.Item.Border.ForeColor = clNone
    DatabaseFields.Item.Border.BackgroundColor = clNone
    DatabaseFields.Item.Format.Alignment = haDefault
    DatabaseFields.Item.Format.SuppressIfDuplicated = False
    DatabaseFields.Item.Format.CanGrow = False
    DatabaseFields.Item.Format.MaxNLines = 0
    DatabaseFields.Item.Format.Field.Number.CurrencySymbol = '$'
    DatabaseFields.Item.Format.Field.Number.ThousandSymbol = ','
    DatabaseFields.Item.Format.Field.Number.DecimalSymbol = '.'
    DatabaseFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    DatabaseFields.Item.Format.Field.Date.FirstSeparator = '/'
    DatabaseFields.Item.Format.Field.Date.SecondSeparator = '/'
    DatabaseFields.Item.Format.Field.Time.AMString = 'AM'
    DatabaseFields.Item.Format.Field.Time.PMString = 'PM'
    DatabaseFields.Item.Format.Field.Time.HourMinSeparator = ':'
    DatabaseFields.Item.Format.Field.Time.MinSecSeparator = ':'
    DatabaseFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    DatabaseFields.Item.Font.Charset = DEFAULT_CHARSET
    DatabaseFields.Item.Font.Color = clWindowText
    DatabaseFields.Item.Font.Height = -11
    DatabaseFields.Item.Font.Name = 'MS Sans Serif'
    DatabaseFields.Item.Font.Style = []
    DatabaseFields.Item.HiliteConditions.Item.FontColor = clNone
    DatabaseFields.Item.HiliteConditions.Item.Background = clNone
    SummaryFields.Item.Top = -1
    SummaryFields.Item.Left = -1
    SummaryFields.Item.Width = -1
    SummaryFields.Item.Height = -1
    SummaryFields.Item.Border.Left = lsNone
    SummaryFields.Item.Border.Right = lsNone
    SummaryFields.Item.Border.Top = lsNone
    SummaryFields.Item.Border.Bottom = lsNone
    SummaryFields.Item.Border.TightHorizontal = False
    SummaryFields.Item.Border.DropShadow = False
    SummaryFields.Item.Border.ForeColor = clNone
    SummaryFields.Item.Border.BackgroundColor = clNone
    SummaryFields.Item.Format.Alignment = haDefault
    SummaryFields.Item.Format.SuppressIfDuplicated = False
    SummaryFields.Item.Format.CanGrow = False
    SummaryFields.Item.Format.MaxNLines = 0
    SummaryFields.Item.Format.Field.Number.CurrencySymbol = '$'
    SummaryFields.Item.Format.Field.Number.ThousandSymbol = ','
    SummaryFields.Item.Format.Field.Number.DecimalSymbol = '.'
    SummaryFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    SummaryFields.Item.Format.Field.Date.FirstSeparator = '/'
    SummaryFields.Item.Format.Field.Date.SecondSeparator = '/'
    SummaryFields.Item.Format.Field.Time.AMString = 'AM'
    SummaryFields.Item.Format.Field.Time.PMString = 'PM'
    SummaryFields.Item.Format.Field.Time.HourMinSeparator = ':'
    SummaryFields.Item.Format.Field.Time.MinSecSeparator = ':'
    SummaryFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    SummaryFields.Item.Font.Charset = DEFAULT_CHARSET
    SummaryFields.Item.Font.Color = clWindowText
    SummaryFields.Item.Font.Height = -11
    SummaryFields.Item.Font.Name = 'MS Sans Serif'
    SummaryFields.Item.Font.Style = []
    SummaryFields.Item.HiliteConditions.Item.FontColor = clNone
    SummaryFields.Item.HiliteConditions.Item.Background = clNone
    SpecialFields.Number = -1
    SpecialFields.Item.Top = -1
    SpecialFields.Item.Left = -1
    SpecialFields.Item.Width = -1
    SpecialFields.Item.Height = -1
    SpecialFields.Item.Border.Left = lsNone
    SpecialFields.Item.Border.Right = lsNone
    SpecialFields.Item.Border.Top = lsNone
    SpecialFields.Item.Border.Bottom = lsNone
    SpecialFields.Item.Border.TightHorizontal = False
    SpecialFields.Item.Border.DropShadow = False
    SpecialFields.Item.Border.ForeColor = clNone
    SpecialFields.Item.Border.BackgroundColor = clNone
    SpecialFields.Item.Format.Alignment = haDefault
    SpecialFields.Item.Format.SuppressIfDuplicated = False
    SpecialFields.Item.Format.CanGrow = False
    SpecialFields.Item.Format.MaxNLines = 0
    SpecialFields.Item.Format.Field.Number.CurrencySymbol = '$'
    SpecialFields.Item.Format.Field.Number.ThousandSymbol = ','
    SpecialFields.Item.Format.Field.Number.DecimalSymbol = '.'
    SpecialFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    SpecialFields.Item.Format.Field.Date.FirstSeparator = '/'
    SpecialFields.Item.Format.Field.Date.SecondSeparator = '/'
    SpecialFields.Item.Format.Field.Time.AMString = 'AM'
    SpecialFields.Item.Format.Field.Time.PMString = 'PM'
    SpecialFields.Item.Format.Field.Time.HourMinSeparator = ':'
    SpecialFields.Item.Format.Field.Time.MinSecSeparator = ':'
    SpecialFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    SpecialFields.Item.Font.Charset = DEFAULT_CHARSET
    SpecialFields.Item.Font.Color = clWindowText
    SpecialFields.Item.Font.Height = -11
    SpecialFields.Item.Font.Name = 'MS Sans Serif'
    SpecialFields.Item.Font.Style = []
    SpecialFields.Item.HiliteConditions.Item.FontColor = clNone
    SpecialFields.Item.HiliteConditions.Item.Background = clNone
    GroupNameFields.Number = -1
    GroupNameFields.Item.Top = -1
    GroupNameFields.Item.Left = -1
    GroupNameFields.Item.Width = -1
    GroupNameFields.Item.Height = -1
    GroupNameFields.Item.Border.Left = lsNone
    GroupNameFields.Item.Border.Right = lsNone
    GroupNameFields.Item.Border.Top = lsNone
    GroupNameFields.Item.Border.Bottom = lsNone
    GroupNameFields.Item.Border.TightHorizontal = False
    GroupNameFields.Item.Border.DropShadow = False
    GroupNameFields.Item.Border.ForeColor = clNone
    GroupNameFields.Item.Border.BackgroundColor = clNone
    GroupNameFields.Item.Format.Alignment = haDefault
    GroupNameFields.Item.Format.SuppressIfDuplicated = False
    GroupNameFields.Item.Format.CanGrow = False
    GroupNameFields.Item.Format.MaxNLines = 0
    GroupNameFields.Item.Format.Field.Number.CurrencySymbol = '$'
    GroupNameFields.Item.Format.Field.Number.ThousandSymbol = ','
    GroupNameFields.Item.Format.Field.Number.DecimalSymbol = '.'
    GroupNameFields.Item.Format.Field.Number.ShowZeroValueAs = '0'
    GroupNameFields.Item.Format.Field.Date.FirstSeparator = '/'
    GroupNameFields.Item.Format.Field.Date.SecondSeparator = '/'
    GroupNameFields.Item.Format.Field.Time.AMString = 'AM'
    GroupNameFields.Item.Format.Field.Time.PMString = 'PM'
    GroupNameFields.Item.Format.Field.Time.HourMinSeparator = ':'
    GroupNameFields.Item.Format.Field.Time.MinSecSeparator = ':'
    GroupNameFields.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    GroupNameFields.Item.Font.Charset = DEFAULT_CHARSET
    GroupNameFields.Item.Font.Color = clWindowText
    GroupNameFields.Item.Font.Height = -11
    GroupNameFields.Item.Font.Name = 'MS Sans Serif'
    GroupNameFields.Item.Font.Style = []
    GroupNameFields.Item.HiliteConditions.Item.FontColor = clNone
    GroupNameFields.Item.HiliteConditions.Item.Background = clNone
    RunningTotals.Number = -1
    RunningTotals.Item.Top = -1
    RunningTotals.Item.Left = -1
    RunningTotals.Item.Width = -1
    RunningTotals.Item.Height = -1
    RunningTotals.Item.Border.Left = lsNone
    RunningTotals.Item.Border.Right = lsNone
    RunningTotals.Item.Border.Top = lsNone
    RunningTotals.Item.Border.Bottom = lsNone
    RunningTotals.Item.Border.TightHorizontal = False
    RunningTotals.Item.Border.DropShadow = False
    RunningTotals.Item.Border.ForeColor = clNone
    RunningTotals.Item.Border.BackgroundColor = clNone
    RunningTotals.Item.Format.Alignment = haDefault
    RunningTotals.Item.Format.SuppressIfDuplicated = False
    RunningTotals.Item.Format.CanGrow = False
    RunningTotals.Item.Format.MaxNLines = 0
    RunningTotals.Item.Format.Field.Number.CurrencySymbol = '$'
    RunningTotals.Item.Format.Field.Number.ThousandSymbol = ','
    RunningTotals.Item.Format.Field.Number.DecimalSymbol = '.'
    RunningTotals.Item.Format.Field.Number.ShowZeroValueAs = '0'
    RunningTotals.Item.Format.Field.Date.FirstSeparator = '/'
    RunningTotals.Item.Format.Field.Date.SecondSeparator = '/'
    RunningTotals.Item.Format.Field.Time.AMString = 'AM'
    RunningTotals.Item.Format.Field.Time.PMString = 'PM'
    RunningTotals.Item.Format.Field.Time.HourMinSeparator = ':'
    RunningTotals.Item.Format.Field.Time.MinSecSeparator = ':'
    RunningTotals.Item.Format.Field.Paragraph.LineSpacing = 1.000000000000000000
    RunningTotals.Item.Font.Charset = DEFAULT_CHARSET
    RunningTotals.Item.Font.Color = clWindowText
    RunningTotals.Item.Font.Height = -11
    RunningTotals.Item.Font.Name = 'MS Sans Serif'
    RunningTotals.Item.Font.Style = []
    RunningTotals.Item.HiliteConditions.Item.FontColor = clNone
    RunningTotals.Item.HiliteConditions.Item.Background = clNone
    WindowZoom.Preview = pwDefault
    WindowZoom.Magnification = -1
    WindowCursor.GroupArea = wcDefault
    WindowCursor.GroupAreaField = wcDefault
    WindowCursor.DetailArea = wcDefault
    WindowCursor.DetailAreaField = wcDefault
    WindowCursor.Graph = wcDefault
    WindowCursor.OnDemandSubreport = wcMagnify
    WindowCursor.HyperLink = wcDefault
    Graphs.Number = -1
    Graphs.Item.Top = -1
    Graphs.Item.Left = -1
    Graphs.Item.Width = -1
    Graphs.Item.Height = -1
    Graphs.Item.Border.Left = lsNone
    Graphs.Item.Border.Right = lsNone
    Graphs.Item.Border.Top = lsNone
    Graphs.Item.Border.Bottom = lsNone
    Graphs.Item.Border.TightHorizontal = False
    Graphs.Item.Border.DropShadow = False
    Graphs.Item.Border.ForeColor = clNone
    Graphs.Item.Border.BackgroundColor = clNone
    Graphs.Item.Style = unknownGraphType
    Graphs.Item.Text.TitleFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.TitleFont.Color = clWindowText
    Graphs.Item.Text.TitleFont.Height = -11
    Graphs.Item.Text.TitleFont.Name = 'MS Sans Serif'
    Graphs.Item.Text.TitleFont.Style = []
    Graphs.Item.Text.SubTitleFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.SubTitleFont.Color = clWindowText
    Graphs.Item.Text.SubTitleFont.Height = -11
    Graphs.Item.Text.SubTitleFont.Name = 'MS Sans Serif'
    Graphs.Item.Text.SubTitleFont.Style = []
    Graphs.Item.Text.FootNoteFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.FootNoteFont.Color = clWindowText
    Graphs.Item.Text.FootNoteFont.Height = -11
    Graphs.Item.Text.FootNoteFont.Name = 'MS Sans Serif'
    Graphs.Item.Text.FootNoteFont.Style = []
    Graphs.Item.Text.GroupsTitleFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.GroupsTitleFont.Color = clWindowText
    Graphs.Item.Text.GroupsTitleFont.Height = -11
    Graphs.Item.Text.GroupsTitleFont.Name = 'MS Sans Serif'
    Graphs.Item.Text.GroupsTitleFont.Style = []
    Graphs.Item.Text.DataTitleFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.DataTitleFont.Color = clWindowText
    Graphs.Item.Text.DataTitleFont.Height = -11
    Graphs.Item.Text.DataTitleFont.Name = 'MS Sans Serif'
    Graphs.Item.Text.DataTitleFont.Style = []
    Graphs.Item.Text.LegendFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.LegendFont.Color = clWindowText
    Graphs.Item.Text.LegendFont.Height = -11
    Graphs.Item.Text.LegendFont.Name = 'MS Sans Serif'
    Graphs.Item.Text.LegendFont.Style = []
    Graphs.Item.Text.GroupLabelsFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.GroupLabelsFont.Color = clWindowText
    Graphs.Item.Text.GroupLabelsFont.Height = -11
    Graphs.Item.Text.GroupLabelsFont.Name = 'MS Sans Serif'
    Graphs.Item.Text.GroupLabelsFont.Style = []
    Graphs.Item.Text.DataLabelsFont.Charset = DEFAULT_CHARSET
    Graphs.Item.Text.DataLabelsFont.Color = clWindowText
    Graphs.Item.Text.DataLabelsFont.Height = -11
    Graphs.Item.Text.DataLabelsFont.Name = 'MS Sans Serif'
    Graphs.Item.Text.DataLabelsFont.Style = []
    Graphs.Item.Axis.GridLineX = gglNone
    Graphs.Item.Axis.GridLineY = gglMajor
    Graphs.Item.Axis.GridLineY2 = gglNone
    Graphs.Item.Axis.GridLineZ = gglNone
    Graphs.Item.Axis.DataValuesY = gdvAutomatic
    Graphs.Item.Axis.DataValuesY2 = gdvAutomatic
    Graphs.Item.Axis.DataValuesZ = gdvAutomatic
    Graphs.Item.Axis.MinY = -1.000000000000000000
    Graphs.Item.Axis.MaxY = -1.000000000000000000
    Graphs.Item.Axis.MinY2 = -1.000000000000000000
    Graphs.Item.Axis.MaxY2 = -1.000000000000000000
    Graphs.Item.Axis.MinZ = -1.000000000000000000
    Graphs.Item.Axis.MaxZ = -1.000000000000000000
    Graphs.Item.Axis.NumberFormatY = gnfNoDecimal
    Graphs.Item.Axis.NumberFormatY2 = gnfNoDecimal
    Graphs.Item.Axis.NumberFormatZ = gnfNoDecimal
    Graphs.Item.Axis.DivisionTypeY = gdvAutomatic
    Graphs.Item.Axis.DivisionTypeY2 = gdvAutomatic
    Graphs.Item.Axis.DivisionTypeZ = gdvAutomatic
    Graphs.Item.Axis.DivisionsY = -1
    Graphs.Item.Axis.DivisionsY2 = -1
    Graphs.Item.Axis.DivisionsZ = -1
    SummaryInfo.SavePreviewPicture = False
    Left = 672
    Top = 170
  end
  object CrpeDS: TCrpeDS
    About = 'Version and Credits...'
    Left = 712
    Top = 170
  end
  object sp_Util_Save_Voucher: TMSStoredProc
    StoredProcName = 'sp_Util_Save_Voucher'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Util_Save_Voucher (:sCompanyId, :sUserI' +
        'D, :iFolio, :iFormID, :Option)}')
    Left = 736
    Top = 58
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
        Size = 5
      end
      item
        DataType = ftString
        Name = 'sUserID'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftInteger
        Name = 'iFolio'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'iFormID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Option'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'sp_Util_Save_Voucher'
  end
  object sp_Create_Header_Voucher: TMSStoredProc
    StoredProcName = 'sp_Create_Header_Voucher'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Create_Header_Voucher (:CompanyCode, :U' +
        'serID, :FiscalYear, :FormID)}')
    Left = 776
    Top = 58
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
        Name = 'FormID'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'sp_Create_Header_Voucher'
  end
  object sp_Get_Rlxn_Lov: TMSStoredProc
    StoredProcName = 'sp_Get_Rlxn_Lov'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Get_Rlxn_Lov (:Link1, :Link2, :Control)' +
        '}')
    Left = 888
    Top = 66
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
        Value = 0
      end
      item
        DataType = ftString
        Name = 'Link1'
        ParamType = ptInput
        Size = 25
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'Link2'
        ParamType = ptInput
        Size = 25
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'Control'
        ParamType = ptInput
        Size = 25
        Value = 'CostC'
      end>
    CommandStoredProcName = 'sp_Get_Rlxn_Lov'
  end
  object ds_sp_Get_Rlxn_Lov: TMSDataSource
    DataSet = sp_Get_Rlxn_Lov
    Left = 928
    Top = 66
  end
  object sp_Get_Rlxn_Lov_SubC: TMSStoredProc
    StoredProcName = 'sp_Get_Rlxn_Lov'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Get_Rlxn_Lov (:Link1, :Link2, :Control)' +
        '}')
    Left = 888
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
        Name = 'Link1'
        ParamType = ptInput
        Size = 25
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'Link2'
        ParamType = ptInput
        Size = 25
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'Control'
        ParamType = ptInput
        Size = 25
        Value = 'CostS'
      end>
    CommandStoredProcName = 'sp_Get_Rlxn_Lov'
  end
  object ds_sp_Get_Rlxn_Lov_SubC: TMSDataSource
    DataSet = sp_Get_Rlxn_Lov_SubC
    Left = 928
    Top = 98
  end
  object sp_Util_LOV_COA_03: TMSStoredProc
    StoredProcName = 'sp_Util_LOV_COA'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Util_LOV_COA (:sUserID, :sType, :Option' +
        ')}')
    Left = 736
    Top = 130
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
        Value = 3
      end>
    CommandStoredProcName = 'sp_Util_LOV_COA'
  end
  object ds_sp_Util_LOV_COA_03: TMSDataSource
    DataSet = sp_Util_LOV_COA_03
    Left = 776
    Top = 130
  end
end
