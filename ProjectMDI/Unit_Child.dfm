object frm_Child: Tfrm_Child
  Left = 335
  Top = 216
  Width = 827
  Height = 393
  Caption = 'Child'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 626
    Top = 0
    Width = 185
    Height = 354
    Align = alRight
    Caption = 'Panel1'
    TabOrder = 0
    object lbl_sfileName: TLabel
      Left = 1
      Top = 14
      Width = 183
      Height = 13
      Align = alTop
      Caption = 'lbl_sfileName'
    end
    object lbl_sTableName: TLabel
      Left = 1
      Top = 1
      Width = 183
      Height = 13
      Align = alTop
      Caption = 'lbl_sfileName'
    end
  end
  object Grid_Detail: TcxGrid
    Left = 0
    Top = 0
    Width = 626
    Height = 354
    Align = alClient
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = cxcbsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    LookAndFeel.Kind = lfStandard
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    object View_Detail: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvNever
      DataController.DataSource = ds_MSTable
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.FocusCellOnTab = True
      OptionsBehavior.FocusFirstCellOnNewRecord = True
      OptionsBehavior.GoToNextCellOnEnter = True
      OptionsBehavior.FocusCellOnCycle = True
      OptionsCustomize.ColumnsQuickCustomization = True
      OptionsCustomize.ColumnsQuickCustomizationReordering = qcrEnabled
      OptionsCustomize.DataRowSizing = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = '<Click LineAdd / Press (F6)>'
      OptionsView.ShowEditButtons = gsebAlways
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.HeaderEndEllipsis = True
      OptionsView.Indicator = True
    end
    object cxGridLevel1: TcxGridLevel
      GridView = View_Detail
    end
  end
  object MSTable: TMSTable
    Left = 208
    Top = 8
  end
  object ds_MSTable: TMSDataSource
    DataSet = MSTable
    Left = 248
    Top = 8
  end
end
