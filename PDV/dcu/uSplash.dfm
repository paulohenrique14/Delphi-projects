object FrmSplash: TFrmSplash
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'FrmSplash'
  ClientHeight = 480
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  RoundedCorners = rcOff
  TextHeight = 15
  object PnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Align = alClient
    TabOrder = 0
    object PnlEsquerdo: TPanel
      Left = 1
      Top = 1
      Width = 272
      Height = 478
      Align = alLeft
      BevelOuter = bvNone
      Color = clMediumslateblue
      ParentBackground = False
      TabOrder = 0
    end
    object PnlDireito: TPanel
      Left = 272
      Top = 1
      Width = 367
      Height = 478
      Align = alRight
      BevelOuter = bvNone
      Color = clWhite
      ParentBackground = False
      TabOrder = 1
      object Label1: TLabel
        Left = 40
        Top = 40
        Width = 273
        Height = 65
        Alignment = taCenter
        Caption = 'SmartPDV'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -53
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 40
        Top = 111
        Width = 197
        Height = 21
        Alignment = taCenter
        Caption = 'Sistema de gest'#227'o para lojas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowFrame
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object LblStatus: TLabel
        Left = 40
        Top = 405
        Width = 99
        Height = 15
        Caption = 'Iniciando o servi'#231'o'
      end
      object PBSplash: TProgressBar
        Left = 40
        Top = 425
        Width = 281
        Height = 17
        Smooth = True
        BarColor = clMediumslateblue
        BackgroundColor = clMediumslateblue
        Step = 1
        TabOrder = 0
        StyleName = 'Windows'
      end
      object LblGithub: TLinkLabel
        Left = 40
        Top = 448
        Width = 281
        Height = 19
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Github do desenvolvedor'
        TabOrder = 1
      end
    end
  end
  object Timer: TTimer
    Interval = 1
    OnTimer = TimerTimer
    Left = 320
    Top = 193
  end
end
