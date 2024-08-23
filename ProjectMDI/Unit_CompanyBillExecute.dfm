object frm_CompanyBillExecute: Tfrm_CompanyBillExecute
  Left = 387
  Top = 232
  BorderStyle = bsDialog
  Caption = 'Company Bill Execute'
  ClientHeight = 263
  ClientWidth = 538
  Color = clHighlight
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
  object cxLabel2: TcxLabel
    Left = 136
    Top = 8
    Caption = 'Billing Month/Year'
    ParentFont = False
    Transparent = True
  end
  object lc_month: TcxLookupComboBox
    Left = 138
    Top = 38
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
    TabOrder = 1
    Width = 119
  end
  object Memo1: TMemo
    Left = 136
    Top = 104
    Width = 337
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object cxLabel1: TcxLabel
    Left = 56
    Top = 104
    Caption = 'Remarks'
    ParentFont = False
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 56
    Top = 73
    Caption = 'Type'
    ParentFont = False
    Transparent = True
  end
  object CB_Type: TComboBox
    Left = 136
    Top = 72
    Width = 233
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Inter Primary'
    Items.Strings = (
      'Inter Primary'
      'Inter Secondary Intra All')
  end
  object Button2: TButton
    Left = 320
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Execute'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 400
    Top = 208
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 7
    OnClick = Button3Click
  end
  object lc_Year: TcxLookupComboBox
    Left = 266
    Top = 38
    ParentFont = False
    Properties.DropDownAutoSize = True
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'year'
    Properties.ListColumns = <
      item
        FieldName = 'year'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DM.ds_sp_Util_Getyears
    TabOrder = 8
    Width = 103
  end
  object sp_Generate_CompanyBillNew: TMSStoredProc
    StoredProcName = 'sp_Generate_CompanyBillNew'
    Connection = DM.MSConnection
    SQL.Strings = (
      
        '{:RETURN_VALUE = CALL sp_Generate_CompanyBillNew (:CompanyCode, ' +
        ':UserID, :FiscalYear, :BillMonth, :CustomerAccount, :BillType, :' +
        'Remarks, :Option)}')
    Left = 280
    Top = 210
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
        DataType = ftString
        Name = 'BillMonth'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftString
        Name = 'CustomerAccount'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftString
        Name = 'BillType'
        ParamType = ptInput
        Size = 25
      end
      item
        DataType = ftString
        Name = 'Remarks'
        ParamType = ptInput
        Size = 255
      end
      item
        DataType = ftInteger
        Name = 'Option'
        ParamType = ptInput
      end>
    CommandStoredProcName = 'sp_Generate_CompanyBillNew'
  end
end
