object frm_ftp: Tfrm_ftp
  Left = 430
  Top = 186
  BorderStyle = bsDialog
  Caption = 'ftp'
  ClientHeight = 281
  ClientWidth = 489
  Color = clTeal
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RzProgressDisplay1: TRzProgressDisplay
    Left = 72
    Top = 120
    Width = 361
    Height = 121
  end
  object Edit1: TEdit
    Left = 72
    Top = 88
    Width = 361
    Height = 21
    Enabled = False
    TabOrder = 0
  end
  object btn_Upload: TButton
    Left = 72
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Upload File'
    TabOrder = 1
    OnClick = btn_UploadClick
  end
  object lbl_frmCaption: TcxLabel
    Left = 0
    Top = 0
    Align = alTop
    AutoSize = False
    Caption = 'FILE UPLOAD/ATTACHED'
    ParentColor = False
    ParentFont = False
    Style.Color = clHighlight
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWhite
    Style.Font.Height = -19
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.Shadow = False
    Style.IsFontAssigned = True
    Properties.Alignment.Horz = taCenter
    Properties.Alignment.Vert = taVCenter
    Transparent = True
    Height = 49
    Width = 489
    AnchorX = 245
    AnchorY = 25
  end
  object OpenDialog1: TOpenDialog
    Left = 112
    Top = 256
  end
  object IdFTP2: TIdFTP
    OnStatus = IdFTP2Status
    MaxLineAction = maException
    ReadTimeout = 0
    OnDisconnected = IdFTP2Disconnected
    OnWork = IdFTP2Work
    OnWorkBegin = IdFTP2WorkBegin
    OnWorkEnd = IdFTP2WorkEnd
    Host = 'carvancarriageco.com'
    Passive = True
    Password = '?b2W5pq0'
    Username = 'carvaeco_rts'
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    OnAfterClientLogin = IdFTP2AfterClientLogin
    OnAfterGet = IdFTP2AfterGet
    Left = 80
    Top = 248
  end
end
