object Form1: TForm1
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Form1'
  ClientHeight = 681
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pgcComsumator: TPageControl
    Left = 0
    Top = 0
    Width = 689
    Height = 681
    ActivePage = tbsConsumo
    TabOrder = 0
    object tbsConsumo: TTabSheet
      Caption = 'Consumo de energia'
      ExplicitLeft = 0
      ExplicitTop = 28
      ExplicitHeight = 703
      object grbSala: TGroupBox
        Left = 16
        Top = 16
        Width = 641
        Height = 89
        Caption = 'Sala'
        TabOrder = 0
        object lblTempoSala: TLabel
          Left = 280
          Top = 35
          Width = 39
          Height = 13
          Caption = 'Tempo: '
        end
        object lblAparelhoSala: TLabel
          Left = 24
          Top = 35
          Width = 43
          Height = 13
          Caption = 'Aparelho'
        end
        object cmbSala: TComboBox
          Left = 73
          Top = 32
          Width = 201
          Height = 21
          TabOrder = 0
        end
        object spnSala: TSpinEdit
          Left = 325
          Top = 32
          Width = 156
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
        end
        object btnSala: TBitBtn
          Left = 499
          Top = 30
          Width = 121
          Height = 25
          Caption = 'Desligado'
          TabOrder = 2
        end
      end
      object grbQuarto: TGroupBox
        Left = 16
        Top = 120
        Width = 641
        Height = 89
        Caption = 'Quarto'
        TabOrder = 1
        object lblTempo: TLabel
          Left = 280
          Top = 43
          Width = 39
          Height = 13
          Caption = 'Tempo: '
        end
        object lblAparelhoQuarto: TLabel
          Left = 24
          Top = 41
          Width = 43
          Height = 13
          Caption = 'Aparelho'
        end
        object cmbQuarto: TComboBox
          Left = 73
          Top = 36
          Width = 201
          Height = 21
          TabOrder = 0
        end
        object spnQuarto: TSpinEdit
          Left = 325
          Top = 35
          Width = 156
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
        end
        object btnQuarto: TBitBtn
          Left = 499
          Top = 37
          Width = 121
          Height = 25
          Caption = 'Desligado'
          TabOrder = 2
        end
      end
      object grbCozinha: TGroupBox
        Left = 16
        Top = 232
        Width = 641
        Height = 89
        Caption = 'Cozinha'
        TabOrder = 2
        object lblTempoCozinha: TLabel
          Left = 280
          Top = 43
          Width = 39
          Height = 13
          Caption = 'Tempo: '
        end
        object lblAparelhoCozinha: TLabel
          Left = 24
          Top = 43
          Width = 43
          Height = 13
          Caption = 'Aparelho'
        end
        object cmbCozinha: TComboBox
          Left = 73
          Top = 41
          Width = 201
          Height = 21
          TabOrder = 0
        end
        object spinCozinha: TSpinEdit
          Left = 337
          Top = 40
          Width = 156
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
        end
        object btnCozinha: TBitBtn
          Left = 499
          Top = 37
          Width = 121
          Height = 25
          Caption = 'Desligado'
          TabOrder = 2
        end
      end
      object grbBanheiro: TGroupBox
        Left = 16
        Top = 344
        Width = 641
        Height = 89
        Caption = 'Banheiro'
        TabOrder = 3
        object lblTempoBanheiro: TLabel
          Left = 280
          Top = 43
          Width = 39
          Height = 13
          Caption = 'Tempo: '
        end
        object lblAparelhoBanheiro: TLabel
          Left = 24
          Top = 43
          Width = 43
          Height = 13
          Caption = 'Aparelho'
        end
        object cmbBanheiro: TComboBox
          Left = 73
          Top = 41
          Width = 201
          Height = 21
          TabOrder = 0
        end
        object spnBanheiro: TSpinEdit
          Left = 337
          Top = 40
          Width = 156
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 1
          Value = 0
        end
        object btnBanheiro: TBitBtn
          Left = 499
          Top = 37
          Width = 121
          Height = 25
          Caption = 'Desligado'
          TabOrder = 2
        end
      end
      object grbValor: TGroupBox
        Left = 224
        Top = 439
        Width = 185
        Height = 90
        Caption = 'Valor Kw/H'
        TabOrder = 4
        object SpinEdit1: TSpinEdit
          Left = 32
          Top = 40
          Width = 121
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
        end
      end
      object btnCalculo: TButton
        Left = 176
        Top = 560
        Width = 273
        Height = 65
        Caption = 'Calcular'
        TabOrder = 5
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 634
        Width = 681
        Height = 19
        Panels = <
          item
            Width = 50
          end
          item
            Width = 50
          end
          item
            Width = 50
          end
          item
            Width = 50
          end
          item
            Width = 50
          end
          item
            Width = 50
          end
          item
            Width = 50
          end
          item
            Width = 50
          end
          item
            Width = 50
          end
          item
            Width = 50
          end>
        ExplicitTop = 631
      end
      object StaticText1: TStaticText
        Left = 208
        Top = 640
        Width = 59
        Height = 17
        Caption = 'StaticText1'
        TabOrder = 7
      end
    end
    object tbsGastos: TTabSheet
      Caption = 'Gastos'
      ImageIndex = 1
      object ValorKW: TLabel
        Left = 150
        Top = 144
        Width = 137
        Height = 33
        Caption = 'Valor KW/H'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblTempoTotal: TLabel
        Left = 136
        Top = 232
        Width = 151
        Height = 33
        Caption = 'Tempo Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblTotalGasto: TLabel
        Left = 151
        Top = 304
        Width = 136
        Height = 33
        Caption = 'Total Gasto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edtValorKW: TEdit
        Left = 320
        Top = 144
        Width = 209
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtTempoTotal: TEdit
        Left = 320
        Top = 232
        Width = 209
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtTotalGasto: TEdit
        Left = 320
        Top = 304
        Width = 209
        Height = 33
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object btnNovoCalc: TBitBtn
        Left = 200
        Top = 424
        Width = 305
        Height = 57
        Caption = 'Novo Calculo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
    end
  end
end
