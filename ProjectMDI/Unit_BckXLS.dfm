object frm_BakcupXLS: Tfrm_BakcupXLS
  Left = 106
  Top = 115
  Width = 1085
  Height = 579
  Caption = 'Backup XLS'
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
  object PC: TcxPageControl
    Left = 0
    Top = 0
    Width = 1069
    Height = 540
    ActivePage = cxTabSheet1
    Align = alClient
    HideTabs = True
    TabOrder = 0
    ClientRectBottom = 536
    ClientRectLeft = 4
    ClientRectRight = 1065
    ClientRectTop = 4
    object cxTabSheet1: TcxTabSheet
      Caption = 'Backup and posting'
      ImageIndex = 0
      object DBText1: TDBText
        Left = 0
        Top = 519
        Width = 1061
        Height = 13
        Align = alBottom
        AutoSize = True
        DataField = 'AccountName'
        DataSource = DM.ds_LOV_FromAcc
      end
      object cxGroupBox1: TcxGroupBox
        Left = 8
        Top = 0
        Caption = 'Step 1 Set Period'
        ParentFont = False
        TabOrder = 0
        Height = 129
        Width = 497
        object cxLabel3: TcxLabel
          Left = 71
          Top = 22
          Caption = 'Month'
          ParentFont = False
          Transparent = True
        end
        object CB_Month: TComboBox
          Left = 123
          Top = 21
          Width = 71
          Height = 24
          Color = clWhite
          DropDownCount = 12
          ItemHeight = 16
          TabOrder = 1
          OnChange = CB_MonthChange
          Items.Strings = (
            'Jan'
            'Feb'
            'Mar'
            'Apr'
            'May'
            'Jun'
            'Jul'
            'Aug'
            'Sep'
            'Oct'
            'Nov'
            'Dec')
        end
        object cxLabel5: TcxLabel
          Left = 36
          Top = 54
          Caption = 'From Period'
          ParentFont = False
          Transparent = True
        end
        object FromDate: TcxDateEdit
          Left = 123
          Top = 53
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Style.Color = clWhite
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 3
          Width = 118
        end
        object ToDate: TcxDateEdit
          Left = 123
          Top = 81
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          ParentFont = False
          Properties.ImmediatePost = True
          Properties.SaveTime = False
          Properties.ShowTime = False
          Style.Color = clWhite
          Style.LookAndFeel.Kind = lfFlat
          Style.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.Kind = lfFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.Kind = lfFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.Kind = lfFlat
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 4
          Width = 119
        end
        object cxLabel6: TcxLabel
          Left = 51
          Top = 85
          Caption = 'To Period'
          ParentFont = False
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 249
          Top = 55
          Caption = 'Account Type'
          ParentFont = False
          Transparent = True
        end
        object lc_AccountType: TcxLookupComboBox
          Left = 248
          Top = 80
          ParentFont = False
          Properties.GridMode = True
          Properties.ImmediatePost = True
          Properties.KeyFieldNames = 'ColID'
          Properties.ListColumns = <
            item
              FieldName = 'ColName'
            end>
          Properties.ListOptions.AnsiSort = True
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = ds_Q_AccountType
          Properties.OnChange = lc_AccountTypePropertiesChange
          TabOrder = 7
          Width = 145
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 512
        Top = 0
        Caption = 'Step 2 Backup Path'
        ParentFont = False
        TabOrder = 1
        Height = 321
        Width = 321
        object DriveComboBox1: TDriveComboBox
          Left = 24
          Top = 56
          Width = 145
          Height = 22
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 23
          Top = 27
          Width = 287
          Height = 24
          Enabled = False
          TabOrder = 1
        end
        object DirectoryListBox1: TDirectoryListBox
          Left = 24
          Top = 84
          Width = 281
          Height = 225
          ItemHeight = 16
          TabOrder = 2
          OnChange = DirectoryListBox1Change
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 512
        Top = 328
        Caption = 'Step 3 Execute Job'
        ParentFont = False
        TabOrder = 2
        Height = 121
        Width = 321
        object Label1: TLabel
          Left = 2
          Top = 87
          Width = 317
          Height = 32
          Align = alBottom
          Caption = 
            'Backup job takes long time do not close application between the ' +
            'process'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object btn_View: TButton
          Left = 175
          Top = 12
          Width = 138
          Height = 45
          Hint = 
            'Backup job takes long time do not close application between the ' +
            'process'
          Caption = 'Execute Backup'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = btn_ViewClick
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 864
        Top = 0
        Caption = 'Post and Lock Voucher'#39's'
        ParentFont = False
        TabOrder = 3
        Height = 377
        Width = 185
        object Label2: TLabel
          Left = 2
          Top = 327
          Width = 181
          Height = 48
          Align = alBottom
          Caption = 'Lock and post process for selected voucher between the Period'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object cxCheckListBox1: TcxCheckListBox
          Left = 16
          Top = 73
          Width = 137
          Height = 168
          Items = <
            item
              Text = 'Cash'
            end
            item
              Text = 'Bank'
            end
            item
              Text = 'JV'
            end
            item
              Text = 'Trip'
            end
            item
              Text = 'Sale'
            end
            item
              Text = 'Purchse'
            end>
          ParentFont = False
          TabOrder = 0
        end
        object Button1: TButton
          Left = 15
          Top = 40
          Width = 138
          Height = 25
          Caption = 'Select All'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = Button1Click
        end
        object btnExport: TButton
          Left = 15
          Top = 248
          Width = 138
          Height = 41
          Caption = 'Lock Voucher'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = btnExportClick
        end
      end
      object cxGrid1: TcxGrid
        Left = 8
        Top = 152
        Width = 497
        Height = 297
        TabOrder = 4
        object vwFilterAcc_: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = ds_Q_FilterACC
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          OptionsView.Indicator = True
          object vwFilterAcc_AccountName: TcxGridDBColumn
            DataBinding.FieldName = 'AccountName'
            Options.Editing = False
            Width = 283
          end
          object vwFilterAcc_AccountCode: TcxGridDBColumn
            DataBinding.FieldName = 'AccountCode'
            Options.Editing = False
            Width = 131
          end
          object vwFilterAcc_AccountType: TcxGridDBColumn
            DataBinding.FieldName = 'AccountType'
            Options.Editing = False
            Width = 81
          end
        end
        object cxGrid1Level1: TcxGridLevel
          GridView = vwFilterAcc_
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'AccountList'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 176
        Top = 64
        Width = 353
        Height = 178
        DataSource = DM.ds_LOV_FromAcc
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object ComboBox1: TComboBox
        Left = 176
        Top = 32
        Width = 145
        Height = 21
        ItemHeight = 0
        TabOrder = 1
        Text = 'ComboBox1'
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = 'Ledger'
      ImageIndex = 2
      object Grid_LGR: TcxGrid
        Left = 0
        Top = 0
        Width = 1061
        Height = 532
        Align = alClient
        BevelOuter = bvRaised
        BevelKind = bkTile
        BorderStyle = cxcbsNone
        TabOrder = 0
        LookAndFeel.Kind = lfStandard
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = ''
        object ViewLedger_: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          FilterBox.Visible = fvNever
          DataController.DataSource = ds_AccountingReports
          DataController.Filter.Options = [fcoCaseInsensitive]
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <
            item
              Format = ',0.00'
              Kind = skSum
              Column = ViewLedger_Debit
            end
            item
              Format = ',0.00'
              Kind = skSum
              Column = ViewLedger_Credit
            end>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          FilterRow.ApplyChanges = fracImmediately
          OptionsCustomize.DataRowSizing = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = '< Click ShowAll >'
          OptionsView.DataRowHeight = 21
          OptionsView.Footer = True
          OptionsView.GroupByBox = False
          OptionsView.GroupFooters = gfVisibleWhenExpanded
          OptionsView.GroupRowStyle = grsOffice11
          OptionsView.Indicator = True
          Preview.LeftIndent = 12
          Preview.Place = ppTop
          object ViewLedger_CompanyId: TcxGridDBColumn
            DataBinding.FieldName = 'CompanyId'
            Visible = False
          end
          object ViewLedger_BookType: TcxGridDBColumn
            DataBinding.FieldName = 'BookType'
            Visible = False
          end
          object ViewLedger_VoucherNo: TcxGridDBColumn
            DataBinding.FieldName = 'VoucherNo'
            Width = 125
          end
          object ViewLedger_VoucherDate: TcxGridDBColumn
            DataBinding.FieldName = 'VoucherDate'
            Width = 104
          end
          object ViewLedger_AccountCode: TcxGridDBColumn
            DataBinding.FieldName = 'AccountCode'
            Visible = False
            Width = 57
          end
          object ViewLedger_AccountName: TcxGridDBColumn
            DataBinding.FieldName = 'AccountName'
            Visible = False
            Width = 76
          end
          object ViewLedger_OppAccount: TcxGridDBColumn
            DataBinding.FieldName = 'OppAccount'
            Visible = False
            Width = 81
          end
          object ViewLedger_OppAccountName: TcxGridDBColumn
            DataBinding.FieldName = 'OppAccountName'
            Width = 228
          end
          object ViewLedger_Description: TcxGridDBColumn
            DataBinding.FieldName = 'Description'
            Width = 254
          end
          object ViewLedger_ChequeNo: TcxGridDBColumn
            DataBinding.FieldName = 'ChequeNo'
            Visible = False
            Width = 90
          end
          object ViewLedger_ChequeDate: TcxGridDBColumn
            DataBinding.FieldName = 'ChequeDate'
            Visible = False
            Width = 89
          end
          object ViewLedger_CheqNo_Date: TcxGridDBColumn
            DataBinding.FieldName = 'CheqNo_Date'
            Width = 131
          end
          object ViewLedger_Debit: TcxGridDBColumn
            DataBinding.FieldName = 'Debit'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00'
            Width = 147
          end
          object ViewLedger_Credit: TcxGridDBColumn
            DataBinding.FieldName = 'Credit'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00'
            Width = 115
          end
          object ViewLedger_Balance: TcxGridDBColumn
            DataBinding.FieldName = 'Balance'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00'
            Width = 108
          end
          object ViewLedger_ChqClear: TcxGridDBColumn
            DataBinding.FieldName = 'ChqClear'
            Visible = False
            Width = 42
          end
          object ViewLedger_ChqClearDate: TcxGridDBColumn
            DataBinding.FieldName = 'ChqClearDate'
            Visible = False
            Width = 90
          end
          object ViewLedger_BankStDate: TcxGridDBColumn
            DataBinding.FieldName = 'BankStDate'
            Visible = False
            Width = 20
          end
          object ViewLedger_EntryType: TcxGridDBColumn
            DataBinding.FieldName = 'EntryType'
            Visible = False
            Width = 21
          end
        end
        object cxGridLevel2: TcxGridLevel
          GridView = ViewLedger_
        end
      end
    end
  end
  object sp_AccountingReports_Me: TMSStoredProc
    StoredProcName = 'AccountingReports_Me'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL AccountingReports_Me (:CompanyId, :DateFro' +
        'm, :DateUpto, :AccountFrom, :AccountTo, :CostCCode, :SubCostCCod' +
        'e, :BookType, :AccountDigit, :FromLocation, :ToLocation, :Report' +
        'Type)}')
    Left = 360
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftString
        Name = 'CompanyId'
        ParamType = ptInput
        Size = 4
      end
      item
        DataType = ftDateTime
        Name = 'DateFrom'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DateUpto'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AccountFrom'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftString
        Name = 'AccountTo'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftString
        Name = 'CostCCode'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'SubCostCCode'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'BookType'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftFloat
        Name = 'AccountDigit'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FromLocation'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'ToLocation'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'ReportType'
        ParamType = ptInput
        Size = 30
      end>
    CommandStoredProcName = 'AccountingReports_Me'
  end
  object ds_AccountingReports: TMSDataSource
    DataSet = sp_AccountingReports_Me
    Left = 400
    Top = 16
  end
  object sp_PowerPlay_Post_Lock: TMSStoredProc
    StoredProcName = 'sp_PowerPlay_Post_Lock'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_PowerPlay_Post_Lock (:CompanyCode, :Use' +
        'rID, :sControl, :DateFrom, :DateUpto, :Option)}')
    Left = 392
    Top = 48
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
        Name = 'sControl'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftDateTime
        Name = 'DateFrom'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DateUpto'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Option'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'sp_PowerPlay_Post_Lock'
  end
  object Q_AccountType: TMSQuery
    Connection = DM.MSConnection
    SQL.Strings = (
      'SELECT * FROM dbo.Setup_Table WHERE ControlName = '#39'AccountType'#39)
    Left = 448
    Top = 56
  end
  object ds_Q_AccountType: TMSDataSource
    DataSet = Q_AccountType
    Left = 464
    Top = 24
  end
  object Q_FilterACC: TMSQuery
    Connection = DM.MSConnection
    SQL.Strings = (
      'SELECT  '
      ''
      'AccountCode ,'
      '            AccountName  ,'
      'AccountType'
      '    FROM    tblAccounts'
      '    '
      '    WHERE   AccountLevel = '#39'Detail'#39
      '      AND ISNULL(IsActive, 0) =1'
      'AND AccountType = :P1')
    Left = 352
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'P1'
      end>
  end
  object ds_Q_FilterACC: TMSDataSource
    DataSet = Q_FilterACC
    Left = 392
    Top = 112
  end
end
