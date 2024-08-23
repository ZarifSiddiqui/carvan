object Form_dbSelect: TForm_dbSelect
  Left = 432
  Top = 193
  BorderStyle = bsNone
  Caption = 'Select'
  ClientHeight = 257
  ClientWidth = 296
  Color = clActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object btn_Run: TButton
    Left = 199
    Top = 208
    Width = 75
    Height = 41
    Caption = 'Next'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btn_RunClick
  end
  object btnExit: TButton
    Left = 23
    Top = 208
    Width = 75
    Height = 41
    Caption = 'Exit'
    TabOrder = 1
    OnClick = btnExitClick
  end
  object rg_Company: TcxRadioGroup
    Left = 0
    Top = 0
    Align = alTop
    Alignment = alTopCenter
    Caption = 'Company ?'
    ParentFont = False
    Properties.Columns = 2
    Properties.DefaultValue = 0
    Properties.ImmediatePost = True
    Properties.Items = <
      item
        Caption = 'PNC'
        Value = '0'
      end
      item
        Caption = 'ANC'
        Value = '1'
      end>
    ItemIndex = 0
    Style.BorderStyle = ebsThick
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = False
    Style.Shadow = True
    Style.TextColor = clBlack
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 2
    Transparent = True
    Height = 97
    Width = 296
  end
  object rg_year: TcxRadioGroup
    Left = 0
    Top = 97
    Align = alTop
    Alignment = alTopCenter
    Caption = 'Year ?'
    ParentFont = False
    Properties.Columns = 2
    Properties.DefaultValue = 0
    Properties.ImmediatePost = True
    Properties.Items = <
      item
        Caption = '2021'
        Value = '2021'
      end
      item
        Caption = '1920 (read only)'
        Value = '1920'
      end>
    ItemIndex = 0
    Style.BorderStyle = ebsThick
    Style.Edges = [bLeft, bTop, bRight, bBottom]
    Style.LookAndFeel.Kind = lfStandard
    Style.LookAndFeel.NativeStyle = False
    Style.Shadow = True
    Style.TextColor = clBlack
    StyleDisabled.LookAndFeel.Kind = lfStandard
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.Kind = lfStandard
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.Kind = lfStandard
    StyleHot.LookAndFeel.NativeStyle = False
    TabOrder = 3
    Transparent = True
    Height = 96
    Width = 296
  end
end
