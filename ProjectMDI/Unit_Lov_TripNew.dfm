object frm_Lov_TripNew: Tfrm_Lov_TripNew
  Left = 235
  Top = 157
  Width = 1053
  Height = 480
  Caption = 'LOV Trip'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxGrid2: TcxGrid
    Left = 0
    Top = 81
    Width = 1037
    Height = 360
    Align = alClient
    BevelOuter = bvRaised
    BevelKind = bkTile
    BorderStyle = cxcbsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = ''
    object ViewLOV_: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvNever
      OnCellDblClick = ViewLOV_CellDblClick
      DataController.DataModeController.GridMode = True
      DataController.DataSource = ds_sp_Trip_LOV_New
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
        end
        item
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
        end>
      DataController.Summary.SummaryGroups = <>
      FilterRow.ApplyChanges = fracImmediately
      OptionsCustomize.DataRowSizing = True
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsSelection.MultiSelect = True
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = '< no data found >'
      OptionsView.CellAutoHeight = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.DataRowHeight = 21
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.GroupFooters = gfVisibleWhenExpanded
      OptionsView.GroupRowStyle = grsOffice11
      OptionsView.Indicator = True
      Preview.LeftIndent = 12
      Preview.Place = ppTop
      Styles.ContentEven = DM.cxStyle_Data
      Styles.Footer = DM.cxStyle3
      object ViewLOV_Folio: TcxGridDBColumn
        DataBinding.FieldName = 'Folio'
        Visible = False
        Width = 20
      end
      object ViewLOV_RefNo: TcxGridDBColumn
        DataBinding.FieldName = 'RefNo'
        Width = 82
      end
      object ViewLOV_RefDate: TcxGridDBColumn
        DataBinding.FieldName = 'RefDate'
        Width = 67
      end
      object ViewLOV_Vehicle: TcxGridDBColumn
        DataBinding.FieldName = 'Vehicle'
        Width = 100
      end
      object ViewLOV_InvoiceNo: TcxGridDBColumn
        Caption = 'Invoice #'
        DataBinding.FieldName = 'InvoiceNo'
        Width = 74
      end
      object ViewLOV_InvoiceDate: TcxGridDBColumn
        DataBinding.FieldName = 'InvoiceDate'
        Width = 91
      end
      object ViewLOV_DO_Number: TcxGridDBColumn
        DataBinding.FieldName = 'DO_Number'
        Visible = False
        Width = 109
      end
      object ViewLOV_Order_Number: TcxGridDBColumn
        Caption = 'PO #'
        DataBinding.FieldName = 'Order_Number'
        Width = 98
      end
      object ViewLOV_ShipmentNo: TcxGridDBColumn
        Caption = 'Shipment #'
        DataBinding.FieldName = 'ShipmentNo'
      end
      object ViewLOV_LocationFrom: TcxGridDBColumn
        Caption = 'FromLocation'
        DataBinding.FieldName = 'LocationFrom'
        Width = 96
      end
      object ViewLOV_LocationTo: TcxGridDBColumn
        Caption = 'ToLocation'
        DataBinding.FieldName = 'LocationTo'
        Width = 94
      end
      object ViewLOV_sStatus: TcxGridDBColumn
        Caption = 'Status'
        DataBinding.FieldName = 'sStatus'
        Width = 48
      end
    end
    object cxGridLevel2: TcxGridLevel
      GridView = ViewLOV_
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1037
    Height = 81
    Align = alTop
    TabOrder = 1
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
    end
    object btn_Select: TButton
      Left = 284
      Top = 35
      Width = 75
      Height = 34
      Caption = '&Select'
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
      OnClick = btn_RefreshAccClick
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
      OnChange = Edit1Change
    end
  end
  object ds_sp_Trip_LOV_New: TMSDataSource
    AutoEdit = False
    DataSet = sp_Trip_LOV_New
    Left = 376
  end
  object sp_Trip_LOV_New: TMSStoredProc
    StoredProcName = 'sp_Trip_LOV_New'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Trip_LOV_New (:UserID, :CompanyID, :FYe' +
        'ar)}')
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
        Size = 50
        Value = 'Admin'
      end
      item
        DataType = ftString
        Name = 'CompanyID'
        ParamType = ptInput
        Size = 10
        Value = '0001'
      end
      item
        DataType = ftString
        Name = 'FYear'
        ParamType = ptInput
        Size = 10
        Value = '2021'
      end>
    CommandStoredProcName = 'sp_Trip_LOV_New'
  end
end
