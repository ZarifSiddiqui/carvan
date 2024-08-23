object frm_Estimate: Tfrm_Estimate
  Left = 400
  Top = 269
  AutoScroll = False
  Caption = 'Estimate/Quotation'
  ClientHeight = 603
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzPanel_header: TRzPanel
    Left = 0
    Top = 45
    Width = 984
    Height = 175
    Align = alTop
    BevelWidth = 24
    BorderInner = fsFlatRounded
    BorderOuter = fsFlatRounded
    BorderWidth = 1
    Color = clActiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientColorStyle = gcsCustom
    GradientColorStop = 4440442
    ParentFont = False
    TabOrder = 0
    object PartyAct: TcxDBLookupComboBox
      Left = 289
      Top = 15
      DataBinding.DataField = 'PartyAct'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      Properties.DropDownRows = 12
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'AccountCode'
      Properties.ListColumns = <
        item
          FieldName = 'AccountName'
        end>
      Properties.ListOptions.FocusRowOnMouseMove = False
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_sp_Util_LOV_COA_05
      Properties.OnValidate = PartyActPropertiesValidate
      Style.BorderStyle = ebsNone
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
    object PONumber: TcxDBTextEdit
      Left = 49
      Top = 144
      DataBinding.DataField = 'PONumber'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 1
      Visible = False
      Width = 168
    end
    object Edit_Remarks: TcxDBTextEdit
      Left = 289
      Top = 49
      DataBinding.DataField = 'Description'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 2
      Width = 313
    end
    object cxLabel4: TcxLabel
      Left = 12
      Top = 145
      Caption = 'P.O #'
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object cxLabel5: TcxLabel
      Left = 252
      Top = 15
      Caption = 'Party'
      ParentFont = False
      Transparent = True
    end
    object cxLabel6: TcxLabel
      Left = 232
      Top = 51
      Caption = 'Subject'
      ParentFont = False
      Transparent = True
    end
    object btn_EnableDisable: TcxButton
      Left = 1104
      Top = 96
      Width = 115
      Height = 25
      Caption = 'btn_EnableDisable'
      TabOrder = 6
      Visible = False
      OnClick = btn_EnableDisableClick
    end
    object cxLabel11: TcxLabel
      Left = 612
      Top = 94
      Caption = 'Sub-CC'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
      Visible = False
    end
    object LC_SubCCRlxn: TcxDBLookupComboBox
      Left = 665
      Top = 94
      DataBinding.DataField = 'SubCCRlxn'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'Code'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DM.ds_LOV_SubCCRlxn
      Style.LookAndFeel.Kind = lfUltraFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfUltraFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfUltraFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 8
      Visible = False
      Width = 312
    end
    object VoucherNo: TcxDBTextEdit
      Left = 1105
      Top = 68
      TabStop = False
      DataBinding.DataField = 'BillNo'
      DataBinding.DataSource = ds_tblSalesBillMst
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Properties.OnChange = VoucherNoPropertiesChange
      Style.Color = 4440442
      TabOrder = 9
      Visible = False
      Width = 90
    end
    object VG_Header: TcxDBVerticalGrid
      Left = 8
      Top = 8
      Width = 209
      Height = 57
      LayoutStyle = lsBandsView
      OptionsView.ScrollBars = ssNone
      OptionsView.RowHeaderWidth = 94
      Styles.Header = DM.cxStyle_ReadOnly
      TabOrder = 10
      DataController.DataSource = ds_tblSalesBillMst
      Version = 1
      object VG_HeaderFolio: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'Folio'
        Visible = False
        ID = 0
        ParentID = -1
        Index = 0
        Version = 1
      end
      object VG_HeaderCompanyId: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'CompanyId'
        Visible = False
        ID = 1
        ParentID = -1
        Index = 1
        Version = 1
      end
      object VG_HeaderQuotNumber: TcxDBEditorRow
        Properties.HeaderAlignmentHorz = taRightJustify
        Properties.HeaderAlignmentVert = vaCenter
        Properties.DataBinding.FieldName = 'QuotNumber'
        Properties.Options.Editing = False
        Styles.Content = DM.cxStyle_DarkHeader
        ID = 2
        ParentID = -1
        Index = 2
        Version = 1
      end
      object VG_HeaderQuotDate: TcxDBEditorRow
        Properties.HeaderAlignmentHorz = taRightJustify
        Properties.HeaderAlignmentVert = vaCenter
        Properties.EditPropertiesClassName = 'TcxDateEditProperties'
        Properties.EditProperties.SaveTime = False
        Properties.EditProperties.ShowTime = False
        Properties.DataBinding.FieldName = 'QuotDate'
        ID = 3
        ParentID = -1
        Index = 3
        Version = 1
      end
      object VG_HeaderBillNo: TcxDBEditorRow
        Options.Focusing = False
        Properties.Caption = 'Inv No.'
        Properties.HeaderAlignmentHorz = taRightJustify
        Properties.HeaderAlignmentVert = vaCenter
        Properties.DataBinding.FieldName = 'BillNo'
        Properties.Options.Editing = False
        Styles.Content = DM.cxStyle_DarkHeader
        Visible = False
        ID = 4
        ParentID = -1
        Index = 4
        Version = 1
      end
      object VG_HeaderBillDate: TcxDBEditorRow
        Properties.Caption = 'Inv. Date'
        Properties.HeaderAlignmentHorz = taRightJustify
        Properties.HeaderAlignmentVert = vaCenter
        Properties.EditPropertiesClassName = 'TcxDateEditProperties'
        Properties.EditProperties.SaveTime = False
        Properties.EditProperties.ShowTime = False
        Properties.DataBinding.FieldName = 'BillDate'
        Visible = False
        ID = 5
        ParentID = -1
        Index = 5
        Version = 1
      end
      object VG_HeaderStaxInvNo: TcxDBEditorRow
        Options.Focusing = False
        Properties.HeaderAlignmentHorz = taRightJustify
        Properties.HeaderAlignmentVert = vaCenter
        Properties.DataBinding.FieldName = 'StaxInvNo'
        Properties.Options.Editing = False
        Styles.Content = DM.cxStyle_DarkHeader
        Visible = False
        ID = 6
        ParentID = -1
        Index = 6
        Version = 1
      end
      object VG_HeaderCreditDays: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'CreditDays'
        Visible = False
        ID = 7
        ParentID = -1
        Index = 7
        Version = 1
      end
      object VG_HeadersAttentionTo: TcxDBEditorRow
        Properties.Caption = 'AttentionTo'
        Properties.DataBinding.FieldName = 'sAttentionTo'
        Visible = False
        ID = 8
        ParentID = -1
        Index = 8
        Version = 1
      end
      object VG_HeadersProject: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'sProject'
        Visible = False
        ID = 9
        ParentID = -1
        Index = 9
        Version = 1
      end
      object VG_HeaderShippingAddress: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'ShippingAddress'
        Visible = False
        ID = 10
        ParentID = -1
        Index = 10
        Version = 1
      end
      object VG_HeaderBillingAddress: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'BillingAddress'
        Visible = False
        ID = 11
        ParentID = -1
        Index = 11
        Version = 1
      end
      object VG_HeaderIsPost: TcxDBEditorRow
        Properties.DataBinding.FieldName = 'IsPost'
        Visible = False
        ID = 12
        ParentID = -1
        Index = 12
        Version = 1
      end
      object VG_HeaderDBEditorRow1: TcxDBEditorRow
        Properties.Caption = 'DC. No'
        Properties.HeaderAlignmentHorz = taRightJustify
        Properties.HeaderAlignmentVert = vaCenter
        Properties.EditPropertiesClassName = 'TcxTextEditProperties'
        Properties.DataBinding.FieldName = 'DCNumber'
        Visible = False
        ID = 13
        ParentID = -1
        Index = 13
        Version = 1
      end
      object VG_HeaderDCDate: TcxDBEditorRow
        Properties.Caption = 'DC. Date'
        Properties.HeaderAlignmentHorz = taRightJustify
        Properties.HeaderAlignmentVert = vaCenter
        Properties.EditPropertiesClassName = 'TcxDateEditProperties'
        Properties.EditProperties.SaveTime = False
        Properties.EditProperties.ShowTime = False
        Properties.DataBinding.FieldName = 'DCDate'
        Visible = False
        ID = 14
        ParentID = -1
        Index = 14
        Version = 1
      end
    end
    object txt_ShipTo: TcxDBMemo
      Left = 291
      Top = 85
      DataBinding.DataField = 'ShippingAddress'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      TabOrder = 11
      Height = 68
      Width = 310
    end
    object cxLabel1: TcxLabel
      Left = 236
      Top = 86
      Caption = 'Address'
      ParentFont = False
      Transparent = True
    end
    object Folio: TcxDBTextEdit
      Left = 1105
      Top = 36
      TabStop = False
      DataBinding.DataField = 'Folio'
      DataBinding.DataSource = ds_tblSalesBillMst
      Enabled = False
      ParentFont = False
      Properties.ReadOnly = True
      Style.Color = 4440442
      TabOrder = 13
      Visible = False
      Width = 90
    end
    object sAttentionTo: TcxDBTextEdit
      Left = 665
      Top = 15
      DataBinding.DataField = 'sAttentionTo'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 14
      Width = 313
    end
    object cxLabel8: TcxLabel
      Left = 629
      Top = 16
      Caption = 'ATTN'
      ParentFont = False
      Transparent = True
    end
    object cxLabel2: TcxLabel
      Left = 626
      Top = 42
      Caption = 'EMAIL'
      ParentFont = False
      Transparent = True
    end
    object sEmailTo: TcxDBTextEdit
      Left = 665
      Top = 40
      DataBinding.DataField = 'sEmailTo'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 17
      Width = 313
    end
    object LC_SalesPerson: TcxDBLookupComboBox
      Left = 665
      Top = 66
      DataBinding.DataField = 'SalesPerson'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      Properties.DropDownRows = 12
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'STAFFNAME'
      Properties.ListColumns = <
        item
          FieldName = 'STAFFNAME'
        end>
      Properties.ListOptions.FocusRowOnMouseMove = False
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_tblStaffProfile
      Properties.OnValidate = PartyActPropertiesValidate
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 18
      Width = 313
    end
    object cxLabel3: TcxLabel
      Left = 610
      Top = 66
      Caption = 'S.Person'
      ParentFont = False
      Transparent = True
    end
    object lbl_PartyGSTNO: TcxLabel
      Left = 666
      Top = 122
      Caption = 'NTN'
      ParentFont = False
      Transparent = True
    end
    object lbl_PartyNTNNO: TcxLabel
      Left = 666
      Top = 146
      Caption = 'GST'
      ParentFont = False
      Transparent = True
    end
    object rg_TypeCode: TcxDBRadioGroup
      Left = 8
      Top = 80
      Caption = 'Sale Type'
      DataBinding.DataField = 'TypeCode'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      Properties.Columns = 2
      Properties.DefaultValue = '1'
      Properties.ImmediatePost = True
      Properties.Items = <
        item
          Caption = 'STAX'
          Value = '1'
        end
        item
          Caption = 'Cash'
          Value = '2'
        end>
      Properties.WordWrap = True
      Properties.OnChange = rg_TypeCodePropertiesChange
      TabOrder = 22
      Visible = False
      Height = 57
      Width = 209
    end
  end
  object Grid_Detail: TcxGrid
    Left = 0
    Top = 220
    Width = 984
    Height = 260
    Align = alClient
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = cxcbsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    object View_Detail: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = ds_tblSalesBillDtl
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
          Kind = skSum
          Column = View_DetailQty
        end
        item
          Format = ',0'
          Kind = skSum
          FieldName = 'SalesTaxAmountA'
          Column = View_DetailSalesTaxAmountA
        end
        item
          Format = ',0'
          Kind = skSum
          OnGetText = View_DetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems2GetText
          FieldName = 'GrossAmount'
          Column = View_DetailGrossAmount
        end
        item
          Format = ',0'
          Kind = skSum
          OnGetText = View_DetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText
          Column = View_DetailNetAmount
        end
        item
          Format = ',0'
          Kind = skSum
          OnGetText = View_DetailTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems4GetText
          Column = View_DetailSalesTaxAmount
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsBehavior.PullFocusing = True
      OptionsCustomize.DataRowSizing = True
      OptionsData.Appending = True
      OptionsData.CancelOnExit = False
      OptionsView.Navigator = True
      OptionsView.NoDataToDisplayInfoText = 'Blank Invoice'
      OptionsView.Footer = True
      OptionsView.FooterAutoHeight = True
      OptionsView.FooterMultiSummaries = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.HeaderEndEllipsis = True
      OptionsView.HeaderHeight = 26
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 26
      object View_DetailSno: TcxGridDBColumn
        DataBinding.FieldName = 'Sno'
        Visible = False
      end
      object View_DetailCompanyId: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyId'
        Visible = False
        VisibleForCustomization = False
        Width = 100
      end
      object View_DetailBillNo: TcxGridDBColumn
        DataBinding.FieldName = 'BillNo'
        Visible = False
        VisibleForCustomization = False
        Width = 127
      end
      object View_DetailGrnNo: TcxGridDBColumn
        DataBinding.FieldName = 'GrnNo'
        Visible = False
        Width = 106
      end
      object View_DetailProductCode: TcxGridDBColumn
        DataBinding.FieldName = 'ProductCode'
        Visible = False
      end
      object View_DetailFKItemID: TcxGridDBColumn
        Caption = 'Model'
        DataBinding.FieldName = 'FKItemID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 200
        Properties.GridMode = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ItemID'
        Properties.ListColumns = <
          item
            FieldName = 'ModelNo'
          end>
        Properties.ListOptions.AnsiSort = True
        Properties.ListOptions.CaseInsensitive = True
        Properties.ListSource = DM.ds_Lov_Item_Stock
        Properties.OnValidate = View_DetailProductCodePropertiesValidate
        FooterAlignmentHorz = taLeftJustify
        Styles.Footer = DM.cxStyle_Footer
        Width = 146
      end
      object View_DetailsGroup: TcxGridDBColumn
        Caption = 'Description'
        DataBinding.FieldName = 'sGroup'
        Visible = False
        Width = 179
      end
      object View_DetailAddDescription: TcxGridDBColumn
        DataBinding.FieldName = 'AddDescription'
        Width = 357
      end
      object View_DetailColumnsArea: TcxGridDBColumn
        Caption = 'Serial #'
        DataBinding.FieldName = 'Seq'
        PropertiesClassName = 'TcxButtonEditProperties'
        Properties.Buttons = <
          item
            Caption = 'Serial Nos.'
            Default = True
            Kind = bkText
          end>
        Properties.ViewStyle = vsButtonsOnly
        Properties.OnButtonClick = View_DetailColumnsAreaPropertiesButtonClick
        Visible = False
        Options.ShowEditButtons = isebAlways
        Width = 63
      end
      object View_DetailFKUOMCode: TcxGridDBColumn
        Caption = 'UOM'
        DataBinding.FieldName = 'FKUOMCode'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.GridMode = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'UOM_Desc'
        Properties.ListColumns = <
          item
            FieldName = 'UOM_Desc'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = dsUOM
        Width = 50
      end
      object View_DetailFKWCODE: TcxGridDBColumn
        Caption = 'Warranty'
        DataBinding.FieldName = 'FKWCODE'
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
        Width = 112
      end
      object View_DetailStock: TcxGridDBColumn
        Caption = 'UOM'
        DataBinding.FieldName = 'Stock'
        Visible = False
        VisibleForCustomization = False
        Width = 65
      end
      object View_DetailQty: TcxGridDBColumn
        DataBinding.FieldName = 'Qty'
        Styles.Footer = DM.cxStyle_Focus
        Width = 73
      end
      object View_DetailRate: TcxGridDBColumn
        DataBinding.FieldName = 'Rate'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0'
        Width = 93
      end
      object View_DetailAmount: TcxGridDBColumn
        DataBinding.FieldName = 'Amount'
        Visible = False
        Width = 50
      end
      object View_DetailDiscPer: TcxGridDBColumn
        Caption = 'Disc%'
        DataBinding.FieldName = 'DiscPer'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 41
      end
      object View_DetailDiscAmount: TcxGridDBColumn
        Caption = 'Disc.Amt'
        DataBinding.FieldName = 'DiscAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 56
      end
      object View_DetailGrossAmount: TcxGridDBColumn
        Caption = 'GrossAmt'
        DataBinding.FieldName = 'GrossAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0'
        Options.Focusing = False
        Styles.Content = DM.cxStyle_Focus
        Styles.Footer = DM.cxStyle_Focus
        VisibleForCustomization = False
        Width = 125
      end
      object View_DetailSalesTaxPer: TcxGridDBColumn
        Caption = 'Tax %'
        DataBinding.FieldName = 'SalesTaxPer'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        VisibleForCustomization = False
        Width = 66
      end
      object View_DetailSalesTaxAmount: TcxGridDBColumn
        Caption = 'Tax Amt'
        DataBinding.FieldName = 'SalesTaxAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0'
        Options.Focusing = False
        Styles.Content = DM.cxStyle_Focus
        Styles.Footer = DM.cxStyle_Focus
        VisibleForCustomization = False
        Width = 125
      end
      object View_DetailSalesTaxPerA: TcxGridDBColumn
        Caption = 'AST %'
        DataBinding.FieldName = 'SalesTaxPerA'
        Visible = False
      end
      object View_DetailSalesTaxAmountA: TcxGridDBColumn
        Caption = 'AST Amt'
        DataBinding.FieldName = 'SalesTaxAmountA'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0'
        Visible = False
        Options.Focusing = False
        Styles.Content = DM.cxStyle_Focus
        Styles.Footer = DM.cxStyle_Focus
        Width = 125
      end
      object View_DetailNetAmount: TcxGridDBColumn
        Caption = 'NetAmt'
        DataBinding.FieldName = 'NetAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.DisplayFormat = ',0'
        Options.Focusing = False
        Styles.Content = DM.cxStyle_Focus
        Styles.Footer = DM.cxStyle_Focus
        VisibleForCustomization = False
        Width = 125
      end
      object View_DetailRateDifference: TcxGridDBColumn
        DataBinding.FieldName = 'RateDifference'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 48
      end
      object View_DetailDifferenceAmount: TcxGridDBColumn
        DataBinding.FieldName = 'DifferenceAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 52
      end
      object View_DetailValExclSalesTax: TcxGridDBColumn
        DataBinding.FieldName = 'ValExclSalesTax'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 98
      end
      object View_DetailExcisePer: TcxGridDBColumn
        DataBinding.FieldName = 'ExcisePer'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 24
      end
      object View_DetailExciseAmount: TcxGridDBColumn
        DataBinding.FieldName = 'ExciseAmount'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Visible = False
        VisibleForCustomization = False
        Width = 22
      end
      object View_DetailQtyInTon: TcxGridDBColumn
        DataBinding.FieldName = 'QtyInTon'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object View_DetailRateInTon: TcxGridDBColumn
        DataBinding.FieldName = 'RateInTon'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object View_DetailForignRate: TcxGridDBColumn
        DataBinding.FieldName = 'ForignRate'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object View_DetailConvFactor: TcxGridDBColumn
        DataBinding.FieldName = 'ConvFactor'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object View_DetailOtherTax: TcxGridDBColumn
        DataBinding.FieldName = 'OtherTax'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object View_DetailFreight: TcxGridDBColumn
        DataBinding.FieldName = 'Freight'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object View_DetailOtherExpense: TcxGridDBColumn
        DataBinding.FieldName = 'OtherExpense'
        Visible = False
        VisibleForCustomization = False
        Width = 20
      end
      object View_DetailSeq: TcxGridDBColumn
        DataBinding.FieldName = 'Seq'
        Visible = False
      end
      object View_DetailFKFolio: TcxGridDBColumn
        DataBinding.FieldName = 'FKFolio'
        Visible = False
      end
      object View_DetailDono: TcxGridDBColumn
        DataBinding.FieldName = 'Dono'
        Visible = False
      end
      object View_DetailRate1: TcxGridDBColumn
        DataBinding.FieldName = 'Rate1'
        Visible = False
      end
      object View_DetailQty5: TcxGridDBColumn
        DataBinding.FieldName = 'Qty5'
        Visible = False
      end
      object View_DetailQty4: TcxGridDBColumn
        DataBinding.FieldName = 'Qty4'
        Visible = False
      end
      object View_DetailQty3: TcxGridDBColumn
        DataBinding.FieldName = 'Qty3'
        Visible = False
      end
      object View_DetailQty2: TcxGridDBColumn
        DataBinding.FieldName = 'Qty2'
        Visible = False
      end
      object View_DetailQty1: TcxGridDBColumn
        DataBinding.FieldName = 'Qty1'
        Visible = False
      end
      object View_DetailAveragePrice: TcxGridDBColumn
        DataBinding.FieldName = 'AveragePrice'
        Visible = False
      end
      object View_DetailsArea: TcxGridDBColumn
        DataBinding.FieldName = 'sArea'
        Visible = False
      end
      object View_DetailUnitCost: TcxGridDBColumn
        DataBinding.FieldName = 'UnitCost'
        Visible = False
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = View_Detail
    end
  end
  object RzStatusBar2: TRzStatusBar
    Left = 0
    Top = 584
    Width = 984
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
    GradientColorStop = clActiveCaption
    ParentFont = False
    TabOrder = 2
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
      DataSource = ds_tblSalesBillMst
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
      DataSource = ds_tblSalesBillMst
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
      DataSource = ds_tblSalesBillMst
    end
    object RzDBStatusPane4: TRzDBStatusPane
      Left = 553
      Top = 1
      Width = 120
      Height = 17
      Align = alLeft
      ParentShowHint = False
      DataField = 'IsPost'
      DataSource = ds_tblSalesBillMst
    end
  end
  object RzPanel_footer: TRzPanel
    Left = 0
    Top = 480
    Width = 984
    Height = 104
    Align = alBottom
    Color = clActiveCaption
    FlatColor = 4440442
    GradientColorStyle = gcsCustom
    GradientColorStart = 4440442
    TabOrder = 7
    DesignSize = (
      982
      102)
    object lbl_Gross: TcxLabel
      Left = 720
      Top = 2
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Gross :'
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 31
      Width = 262
      AnchorX = 982
      AnchorY = 18
    end
    object lbl_STAX: TcxLabel
      Left = 720
      Top = 34
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'STAX :'
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 31
      Width = 262
      AnchorX = 982
      AnchorY = 50
    end
    object lbl_Net: TcxLabel
      Left = 720
      Top = 66
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Net :'
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 31
      Width = 262
      AnchorX = 982
      AnchorY = 82
    end
    object cxLabel7: TcxLabel
      Left = 26
      Top = 50
      Caption = 'Payment Method'
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object LC_PaymentMethod: TcxDBLookupComboBox
      Left = 129
      Top = 50
      DataBinding.DataField = 'PaymentMethod'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      Properties.DropDownRows = 12
      Properties.GridMode = True
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'payment_name'
      Properties.ListColumns = <
        item
          FieldName = 'payment_name'
        end>
      Properties.ListOptions.FocusRowOnMouseMove = False
      Properties.ListOptions.GridLines = glNone
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_PaymentMethod
      Properties.OnValidate = PartyActPropertiesValidate
      Style.BorderStyle = ebsNone
      Style.LookAndFeel.Kind = lfFlat
      Style.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.Kind = lfFlat
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.Kind = lfFlat
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.Kind = lfFlat
      StyleHot.LookAndFeel.NativeStyle = False
      TabOrder = 4
      Visible = False
      Width = 313
    end
    object chk_IsTaxExempt: TcxDBCheckBox
      Left = 26
      Top = 16
      Caption = 'IsTaxExempt'
      DataBinding.DataField = 'IsTaxExempt'
      DataBinding.DataSource = ds_tblSalesBillMst
      ParentFont = False
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = chk_IsPostPropertiesEditValueChanged
      TabOrder = 5
      Visible = False
      Width = 121
    end
    object cxLabel9: TcxLabel
      Left = 602
      Top = 2
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Gross :'
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 31
      Width = 116
      AnchorX = 718
      AnchorY = 18
    end
    object cxLabel10: TcxLabel
      Left = 602
      Top = 34
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'STAX :'
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clNavy
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 31
      Width = 116
      AnchorX = 718
      AnchorY = 50
    end
    object cxLabel12: TcxLabel
      Left = 602
      Top = 66
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Net :'
      ParentFont = False
      Style.BorderStyle = ebsSingle
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -24
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Transparent = True
      Height = 31
      Width = 116
      AnchorX = 718
      AnchorY = 82
    end
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager1
    CategoryName = 'DB Navigator'
    ConfirmDelete = True
    DataSource = ds_tblSalesBillMst
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 784
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
    ImageOptions.Images = frm_Index.ImageList1
    ImageOptions.LargeImages = DM.cxImageList_navigation
    ImageOptions.LargeIcons = True
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    PopupMenuLinks = <>
    UseSystemFont = False
    WaitForDockingTime = 5
    Left = 736
    Top = 16
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
          ItemName = 'btn_New'
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
          Visible = True
          ItemName = 'btn_ChangeDate'
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
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton3'
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
    object btn_Post: TdxBarLargeButton
      Caption = 'Post n Lock'
      Category = 0
      Hint = 'Post n Lock'
      Visible = ivAlways
      LargeImageIndex = 27
      ShortCut = 123
      OnClick = btn_PostClick
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
      Caption = 'Quotation'
      Category = 0
      Hint = 'Quotation'
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
    object btn_New: TdxBarLargeButton
      Caption = 'New'
      Category = 0
      Hint = 'New'
      Visible = ivAlways
      LargeImageIndex = 6
      ShortCut = 112
      OnClick = btn_NewClick
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
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'Print'
      Category = 0
      Visible = ivAlways
      ImageIndex = 14
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_PrintCashMemo'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end>
    end
    object dxBarButton1: TdxBarButton
      Caption = 'UnderTaken'
      Category = 0
      Hint = 'UnderTaken'
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object btn_PrintCashMemo: TdxBarButton
      Caption = 'Delivery Challan'
      Category = 0
      Hint = 'Delivery Challan'
      Visible = ivAlways
      ImageIndex = 14
      PaintStyle = psCaptionGlyph
      OnClick = btn_PrintCashMemoClick
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      ImageIndex = 14
      PaintStyle = psCaptionGlyph
      OnClick = dxBarButton3Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      OnClick = dxBarButton2Click
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
  end
  object tblSalesBillMst: TMSTable
    TableName = 'tblEstimateMst'
    Connection = DM.MSConnection
    RefreshOptions = [roAfterUpdate]
    BeforePost = tblSalesBillMstBeforePost
    BeforeScroll = tblSalesBillMstBeforeScroll
    AfterScroll = tblSalesBillMstAfterScroll
    Options.FlatBuffers = True
    FilterSQL = 'IsDelete = 0'
    Left = 56
    Top = 40
  end
  object tblSalesBillDtl: TMSTable
    TableName = 'tblEstimateDtl'
    MasterFields = 'Folio'
    DetailFields = 'FKFolio'
    MasterSource = ds_tblSalesBillMst
    Connection = DM.MSConnection
    RefreshOptions = [roAfterUpdate]
    AfterPost = tblSalesBillDtlAfterPost
    OnCalcFields = tblSalesBillDtlCalcFields
    Options.FlatBuffers = True
    Left = 48
    Top = 72
    object tblSalesBillDtlNetAmount: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'NetAmount'
      Calculated = True
    end
    object tblSalesBillDtlSno: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Sno'
    end
    object tblSalesBillDtlQty: TFloatField
      FieldName = 'Qty'
    end
    object tblSalesBillDtlRate: TFloatField
      FieldName = 'Rate'
    end
    object tblSalesBillDtlDiscPer: TFloatField
      FieldName = 'DiscPer'
    end
    object tblSalesBillDtlDiscAmount: TFloatField
      FieldName = 'DiscAmount'
    end
    object tblSalesBillDtlGrossAmount: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'GrossAmount'
      Calculated = True
    end
    object tblSalesBillDtlSalesTaxPer: TFloatField
      FieldName = 'SalesTaxPer'
    end
    object tblSalesBillDtlSalesTaxAmount: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'SalesTaxAmount'
      Calculated = True
    end
    object tblSalesBillDtlSalesTaxPerA: TFloatField
      FieldName = 'SalesTaxPerA'
    end
    object tblSalesBillDtlSalesTaxAmountA: TFloatField
      AutoGenerateValue = arDefault
      FieldKind = fkCalculated
      FieldName = 'SalesTaxAmountA'
      Calculated = True
    end
    object tblSalesBillDtlSeq: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Seq'
      ReadOnly = True
    end
    object tblSalesBillDtlFKFolio: TIntegerField
      FieldName = 'FKFolio'
    end
    object tblSalesBillDtlCompanyId: TStringField
      FieldName = 'CompanyId'
      Size = 4
    end
    object tblSalesBillDtlBillNo: TStringField
      FieldName = 'BillNo'
      Size = 15
    end
    object tblSalesBillDtlDono: TStringField
      FieldName = 'Dono'
      Size = 10
    end
    object tblSalesBillDtlsArea: TStringField
      FieldName = 'sArea'
      Size = 50
    end
    object tblSalesBillDtlsGroup: TStringField
      FieldName = 'sGroup'
      Size = 50
    end
    object tblSalesBillDtlProductCode: TStringField
      FieldName = 'ProductCode'
      Size = 14
    end
    object tblSalesBillDtlAddDescription: TStringField
      FieldName = 'AddDescription'
      Size = 250
    end
    object tblSalesBillDtlAmount: TFloatField
      FieldName = 'Amount'
    end
    object tblSalesBillDtlExcisePer: TFloatField
      FieldName = 'ExcisePer'
    end
    object tblSalesBillDtlExciseAmount: TFloatField
      FieldName = 'ExciseAmount'
    end
    object tblSalesBillDtlStock: TStringField
      FieldName = 'Stock'
      Size = 50
    end
    object tblSalesBillDtlRate1: TFloatField
      FieldName = 'Rate1'
    end
    object tblSalesBillDtlQty5: TFloatField
      FieldName = 'Qty5'
    end
    object tblSalesBillDtlQty4: TFloatField
      FieldName = 'Qty4'
    end
    object tblSalesBillDtlQty3: TFloatField
      FieldName = 'Qty3'
    end
    object tblSalesBillDtlQty2: TFloatField
      FieldName = 'Qty2'
    end
    object tblSalesBillDtlQty1: TFloatField
      FieldName = 'Qty1'
    end
    object tblSalesBillDtlAveragePrice: TFloatField
      FieldName = 'AveragePrice'
    end
    object tblSalesBillDtlQtyInTon: TFloatField
      FieldName = 'QtyInTon'
    end
    object tblSalesBillDtlFKItemID: TIntegerField
      FieldName = 'FKItemID'
    end
    object tblSalesBillDtlUnitCost: TFloatField
      FieldName = 'UnitCost'
      Precision = 12
    end
    object tblSalesBillDtlFKUOMCode: TStringField
      FieldName = 'FKUOMCode'
      Size = 50
    end
    object tblSalesBillDtlFKWCODE: TStringField
      FieldName = 'FKWCODE'
      Size = 5
    end
  end
  object ds_tblSalesBillMst: TMSDataSource
    DataSet = tblSalesBillMst
    Left = 96
    Top = 32
  end
  object ds_tblSalesBillDtl: TMSDataSource
    DataSet = tblSalesBillDtl
    Left = 232
    Top = 88
  end
  object sp_Create_Header_Voucher: TMSStoredProc
    StoredProcName = 'sp_Create_Header_Voucher'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Create_Header_Voucher (:CompanyCode, :U' +
        'serID, :FiscalYear, :FormID)}')
    Left = 128
    Top = 42
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
  object sp_Util_Save_Inventory_Voucher: TMSStoredProc
    StoredProcName = 'sp_Util_Save_Inventory_Voucher'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Util_Save_Inventory_Voucher (:sCompanyI' +
        'd, :sUserID, :iFolio, :iFormID, :Option)}')
    Left = 184
    Top = 50
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
    CommandStoredProcName = 'sp_Util_Save_Inventory_Voucher'
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
    Left = 544
    Top = 34
  end
  object CrpeDS: TCrpeDS
    About = 'Version and Credits...'
    Left = 512
    Top = 34
  end
  object sp_Doc_Print: TMSStoredProc
    StoredProcName = 'sp_Sales_Print'
    Connection = DM.MSConnection
    SQL.Strings = (
      '{:RETURN_VALUE = CALL sp_Sales_Print (:iFolio, :CompanyCode)}')
    Left = 576
    Top = 42
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
        Name = 'CompanyCode'
        ParamType = ptInput
        Size = 4
      end>
    CommandStoredProcName = 'sp_Sales_Print'
  end
  object sp_Util_LOV_COA_05: TMSStoredProc
    StoredProcName = 'sp_Util_LOV_COA'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Util_LOV_COA (:sUserID, :sType, :Option' +
        ')}')
    AfterScroll = sp_Util_LOV_COA_05AfterScroll
    Left = 352
    Top = 90
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
        Value = 5
      end>
    CommandStoredProcName = 'sp_Util_LOV_COA'
  end
  object ds_sp_Util_LOV_COA_05: TMSDataSource
    DataSet = sp_Util_LOV_COA_05
    Left = 384
    Top = 98
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
  object PaymentMethod: TMSTable
    TableName = 'PaymentMethod'
    Connection = DM.MSConnection
    RefreshOptions = [roAfterUpdate]
    Options.FlatBuffers = True
    Left = 272
    Top = 400
  end
  object ds_PaymentMethod: TMSDataSource
    DataSet = PaymentMethod
    Left = 376
    Top = 392
  end
  object tblStaffProfile: TMSTable
    TableName = 'tblStaffProfile'
    Connection = DM.MSConnection
    RefreshOptions = [roAfterUpdate]
    Options.FlatBuffers = True
    Left = 456
    Top = 288
  end
  object ds_tblStaffProfile: TMSDataSource
    DataSet = tblStaffProfile
    Left = 560
    Top = 280
  end
end
