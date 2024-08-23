object Frame1: TFrame1
  Left = 0
  Top = 0
  Width = 242
  Height = 304
  Color = 6275311
  ParentColor = False
  TabOrder = 0
  object Button1: TButton
    Left = 168
    Top = 24
    Width = 59
    Height = 25
    Caption = 'Fatch'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 0
    Width = 242
    Height = 19
    Align = alTop
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 145
    Height = 21
    TabOrder = 2
  end
  object cxImage1: TcxImage
    Left = 13
    Top = 48
    Enabled = False
    TabOrder = 3
    Transparent = True
    Height = 121
    Width = 113
  end
  object Memo1: TMemo
    Left = 0
    Top = 176
    Width = 242
    Height = 128
    Align = alBottom
    Lines.Strings = (
      '')
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
