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
  TextHeight = 15
  object PnlPrincipal: TPanel
    Left = 0
    Top = 0
    Width = 640
    Height = 480
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 240
    ExplicitTop = 256
    ExplicitWidth = 185
    ExplicitHeight = 41
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
      ExplicitLeft = 0
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
        Width = 281
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
        Width = 281
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
      object Panel1: TPanel
        Left = 40
        Top = 336
        Width = 281
        Height = 57
        BevelOuter = bvNone
        Color = clMediumslateblue
        ParentBackground = False
        TabOrder = 0
        StyleName = 'Windows'
        object BtnEntrar: TSpeedButton
          Left = 0
          Top = 0
          Width = 281
          Height = 57
          Align = alClient
          Caption = ' Entrar '
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -27
          Font.Name = 'Verdana'
          Font.Style = []
          Layout = blGlyphTop
          ParentFont = False
          StyleName = 'Windows'
          ExplicitLeft = 1
          ExplicitWidth = 305
          ExplicitHeight = 81
        end
      end
      object PBSplash: TProgressBar
        Left = 40
        Top = 304
        Width = 281
        Height = 17
        Position = 50
        BarColor = clMediumslateblue
        BackgroundColor = clMediumslateblue
        Step = 100
        TabOrder = 1
      end
    end
  end
  object Timer: TTimer
    Interval = 50
    Left = 320
    Top = 193
  end
end
