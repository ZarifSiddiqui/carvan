object frm_PaymentReconAddEdit: Tfrm_PaymentReconAddEdit
  Left = 321
  Top = 131
  BorderStyle = bsDialog
  Caption = 'Payment Recon'
  ClientHeight = 368
  ClientWidth = 563
  Color = clGray
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_Folio: TcxLabel
    Left = 96
    Top = 8
    Caption = 'lbl_Folio'
    ParentFont = False
  end
  object cxPageControl1: TcxPageControl
    Left = 8
    Top = 24
    Width = 537
    Height = 329
    ActivePage = cxTabSheet1
    TabOrder = 1
    ClientRectBottom = 325
    ClientRectLeft = 4
    ClientRectRight = 533
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'cxTabSheet1'
      ImageIndex = 0
      object rzDate: TDateTimePicker
        Left = 126
        Top = 48
        Width = 109
        Height = 24
        Date = 44534.692905057870000000
        Time = 44534.692905057870000000
        TabOrder = 0
      end
      object cxLabel1: TcxLabel
        Left = 40
        Top = 48
        Caption = 'Recon Date'
        ParentFont = False
        Transparent = True
      end
      object lc_month: TcxLookupComboBox
        Left = 370
        Top = 46
        ParentFont = False
        Properties.DropDownAutoSize = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'number'
        Properties.ListColumns = <
          item
            FieldName = 'monthname'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = DM.ds_sp_Util_GetMonthNames
        TabOrder = 2
        Width = 149
      end
      object cxLabel3: TcxLabel
        Left = 32
        Top = 104
        Caption = 'Company Bill'
        ParentFont = False
        Transparent = True
      end
      object LC_CompanyBill: TcxLookupComboBox
        Left = 128
        Top = 102
        ParentFont = False
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 800
        Properties.GridMode = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'Folio'
        Properties.ListColumns = <
          item
            Width = 150
            FieldName = 'BillingMonthName'
          end
          item
            Width = 150
            FieldName = 'BillingType'
          end
          item
            Width = 150
            FieldName = 'PartyName'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = ds_sp_LOV_CompanyBill_01
        TabOrder = 4
        Width = 393
      end
      object cxLabel4: TcxLabel
        Left = 10
        Top = 136
        Caption = 'Payment Receipt'
        ParentFont = False
        Transparent = True
      end
      object LC_BankReceipt: TcxLookupComboBox
        Left = 128
        Top = 134
        ParentFont = False
        Properties.DropDownSizeable = True
        Properties.DropDownWidth = 400
        Properties.GridMode = True
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'Folio'
        Properties.ListColumns = <
          item
            Width = 150
            FieldName = 'ChequeNo'
          end
          item
            Width = 94
            FieldName = 'ChequeDate'
          end
          item
            Caption = 'Client(Company)'
            Width = 150
            FieldName = 'PartyName'
          end>
        Properties.ListOptions.SyncMode = True
        Properties.ListSource = ds_sp_LOV_CompanyBill_BR_02
        TabOrder = 6
        Width = 393
      end
      object lbl_remarks: TcxLabel
        Left = 55
        Top = 168
        Caption = 'Remarks'
        ParentFont = False
        Transparent = True
      end
      object Remarks: TcxTextEdit
        Left = 128
        Top = 168
        ParentFont = False
        TabOrder = 8
        Width = 393
      end
      object btnSave: TButton
        Left = 352
        Top = 236
        Width = 75
        Height = 33
        Caption = 'Save'
        TabOrder = 9
        OnClick = btnSaveClick
      end
      object btnClose: TButton
        Left = 440
        Top = 236
        Width = 75
        Height = 33
        Caption = 'Close'
        TabOrder = 10
        OnClick = btnCloseClick
      end
      object cxLabel2: TcxLabel
        Left = 288
        Top = 48
        Caption = 'Recon Month'
        ParentFont = False
        Transparent = True
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'cxTabSheet2'
      ImageIndex = 1
    end
  end
  object sp_LOV_CompanyBill_01: TMSStoredProc
    StoredProcName = 'sp_LOV_CompanyBill_BR_ForRecon'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_LOV_CompanyBill_BR_ForRecon (:UserID, :' +
        'PartyAC, :Op)}')
    Left = 232
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
        Size = 25
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PartyAC'
        ParamType = ptInput
        Size = 25
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'Op'
        ParamType = ptInput
        Value = 1
      end>
    CommandStoredProcName = 'sp_LOV_CompanyBill_BR_ForRecon'
  end
  object ds_sp_LOV_CompanyBill_01: TMSDataSource
    DataSet = sp_LOV_CompanyBill_01
    Left = 272
    Top = 16
  end
  object sp_LOV_CompanyBill_BR_02: TMSStoredProc
    StoredProcName = 'sp_LOV_CompanyBill_BR_ForRecon'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_LOV_CompanyBill_BR_ForRecon (:UserID, :' +
        'PartyAC, :Op)}')
    Left = 312
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
        Size = 25
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'PartyAC'
        ParamType = ptInput
        Size = 25
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'Op'
        ParamType = ptInput
        Value = 2
      end>
    CommandStoredProcName = 'sp_LOV_CompanyBill_BR_ForRecon'
  end
  object ds_sp_LOV_CompanyBill_BR_02: TMSDataSource
    DataSet = sp_LOV_CompanyBill_BR_02
    Left = 360
    Top = 24
  end
  object sp_PaymentRecon_AddEdit: TMSStoredProc
    StoredProcName = 'sp_PaymentRecon_AddEdit'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_PaymentRecon_AddEdit (:CompanyCode, :Us' +
        'erID, :FYear, :MonthNumber, :Folio, :vDate, :FolioSB, :FolioBR, ' +
        ':Description)}')
    Left = 392
    Top = 16
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
        Name = 'FYear'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftInteger
        Name = 'MonthNumber'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'Folio'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'vDate'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FolioSB'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FolioBR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'Description'
        ParamType = ptInput
        Size = 150
      end>
    CommandStoredProcName = 'sp_PaymentRecon_AddEdit'
  end
  object sp_PaymentRecon_Master: TMSStoredProc
    StoredProcName = 'sp_PaymentRecon_Master'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_PaymentRecon_Master (:CompanyCode, :Use' +
        'rID, :FiscalYear, :Folio)}')
    KeyFields = 'Folio'
    Left = 64
    Top = 61
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
        Value = 0
      end>
    CommandStoredProcName = 'sp_PaymentRecon_Master'
  end
end
