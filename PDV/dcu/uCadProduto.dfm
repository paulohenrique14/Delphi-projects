inherited FrmPadrao1: TFrmPadrao1
  Caption = 'FrmCadProduto'
  StyleElements = [seFont, seClient, seBorder]
  OnCreate = FormCreate
  TextHeight = 15
  object Label7: TLabel [0]
    Left = 17
    Top = 257
    Width = 90
    Height = 15
    Caption = 'Pre'#231'o de compra'
  end
  inherited PnlPrincipal: TPanel
    StyleElements = [seFont, seClient, seBorder]
    inherited PnlNavegacao: TPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited LblTituloForm: TLabel
        Width = 274
        Caption = 'Cadastro de produto'
        StyleElements = [seFont, seClient, seBorder]
        ExplicitWidth = 274
      end
      inherited PnlResizeTela: TPanel
        StyleElements = [seFont, seClient, seBorder]
      end
    end
    inherited PnlBotoes: TPanel
      StyleElements = [seFont, seClient, seBorder]
    end
    inherited CPCardPanel: TCardPanel
      StyleElements = [seFont, seClient, seBorder]
      inherited CardCadastro: TCard
        StyleElements = [seFont, seClient, seBorder]
        ExplicitTop = -4
        object Label1: TLabel
          Left = 9
          Top = 9
          Width = 39
          Height = 15
          Caption = 'C'#243'digo'
        end
        object Label2: TLabel
          Left = 9
          Top = 65
          Width = 51
          Height = 15
          Caption = 'Descri'#231#227'o'
        end
        object Label3: TLabel
          Left = 994
          Top = 9
          Width = 42
          Height = 15
          Caption = 'Estoque'
        end
        object Label4: TLabel
          Left = 9
          Top = 121
          Width = 90
          Height = 15
          Caption = 'Pre'#231'o de compra'
        end
        object Label5: TLabel
          Left = 169
          Top = 121
          Width = 81
          Height = 15
          Caption = 'Pre'#231'o de venda'
        end
        object Label6: TLabel
          Left = 946
          Top = 121
          Width = 90
          Height = 15
          Caption = 'C'#243'digo de barras'
        end
        object Label8: TLabel
          Left = 9
          Top = 180
          Width = 60
          Height = 15
          Caption = 'Fornecedor'
        end
        object DBProduto: TDBEdit
          Left = 9
          Top = 84
          Width = 1027
          Height = 23
          TabOrder = 0
        end
        object EdtCodigo: TEdit
          Left = 9
          Top = 27
          Width = 121
          Height = 23
          TabOrder = 1
          Text = 'EdtCodigo'
        end
        object DBEstoque: TDBEdit
          Left = 915
          Top = 30
          Width = 121
          Height = 23
          TabOrder = 2
        end
        object DBPrecoCusto: TDBEdit
          Left = 9
          Top = 142
          Width = 121
          Height = 23
          TabOrder = 3
        end
        object DBPrecoVenda: TDBEdit
          Left = 169
          Top = 142
          Width = 121
          Height = 23
          TabOrder = 4
        end
        object DBCodigoBarras: TDBEdit
          Left = 915
          Top = 142
          Width = 121
          Height = 23
          TabOrder = 5
        end
        object DBCodFornecedor: TDBEdit
          Left = 9
          Top = 201
          Width = 39
          Height = 23
          TabOrder = 6
        end
        object Button1: TButton
          Left = 168
          Top = 216
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 7
        end
      end
      inherited CardPesquisa: TCard
        StyleElements = [seFont, seClient, seBorder]
      end
    end
  end
  inherited DSCadastro: TDataSource
    DataSet = FDCadastro
    Left = 664
    Top = 488
  end
  inherited FDCadastro: TFDQuery
    SQL.Strings = (
      'select * from produto')
    Left = 554
    Top = 485
  end
  object ImageList1: TImageList
    Left = 530
    Top = 333
  end
end
