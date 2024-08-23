object frm_LOV_VRN: Tfrm_LOV_VRN
  Left = 511
  Top = 306
  BorderStyle = bsDialog
  Caption = 'LOV Vehicle'
  ClientHeight = 441
  ClientWidth = 411
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGrid2: TcxGrid
    Left = 0
    Top = 65
    Width = 411
    Height = 376
    Align = alClient
    BevelOuter = bvRaised
    BevelKind = bkTile
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    object ViewLOV_: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvNever
      OnCellDblClick = ViewLOV_CellDblClick
      DataController.DataSource = ds_q_VRN_List
      DataController.Filter.Options = [fcoCaseInsensitive]
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Format = ',0'
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
          Format = 'Count 0'
          Kind = skCount
        end
        item
          Kind = skCount
        end
        item
          Kind = skCount
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.DataRowSizing = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = '< no data found >'
      OptionsView.ColumnAutoWidth = True
      OptionsView.DataRowHeight = 21
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.Indicator = True
      Preview.LeftIndent = 12
      Preview.Place = ppTop
      Styles.Footer = DM.cxStyle2
      object ViewLOV_VehicleCode: TcxGridDBColumn
        DataBinding.FieldName = 'VehicleCode'
        Visible = False
        Width = 140
      end
      object ViewLOV_Vehicle: TcxGridDBColumn
        DataBinding.FieldName = 'Vehicle'
        Width = 140
      end
      object ViewLOV_VehicleAccount: TcxGridDBColumn
        DataBinding.FieldName = 'VehicleAccount'
        Visible = False
        Width = 206
      end
      object ViewLOV_Description: TcxGridDBColumn
        DataBinding.FieldName = 'Description'
        Visible = False
        Width = 391
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = ViewLOV_
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 411
    Height = 65
    Align = alTop
    Color = clHighlight
    TabOrder = 1
    object Label1: TLabel
      Left = 120
      Top = 8
      Width = 49
      Height = 13
      Caption = 'Vehicle No'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object btn_Select: TButton
      Left = 41
      Top = 29
      Width = 75
      Height = 25
      Caption = '&Select'
      TabOrder = 1
      OnClick = btn_SelectClick
    end
    object Edit1: TEdit
      Left = 118
      Top = 24
      Width = 225
      Height = 31
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit1Change
    end
  end
  object q_VRN_List: TMSQuery
    Connection = DM.MSConnection
    SQL.Strings = (
      
        'select VehicleCode , Vehicle , VehicleAccount ,Description  from' +
        ' Adm_VehicleTAB  Order by Vehicle')
    Left = 280
    Top = 136
  end
  object ds_q_VRN_List: TMSDataSource
    DataSet = q_VRN_List
    Left = 376
    Top = 144
  end
end
