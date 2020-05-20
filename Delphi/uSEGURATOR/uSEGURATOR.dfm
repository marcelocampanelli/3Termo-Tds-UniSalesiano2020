object ACMESegurator: TACMESegurator
  Left = 0
  Top = 0
  Caption = 'ACME Segurator'
  ClientHeight = 762
  ClientWidth = 728
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 140
    Top = 177
    Width = 170
    Height = 33
    Caption = 'Valor Base'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Fira Code'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 52
    Top = 257
    Width = 289
    Height = 33
    Caption = 'Valor Seguro Base'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Fira Code'
    Font.Style = []
    ParentFont = False
  end
  object pgcSeguratorMain: TPageControl
    Left = 8
    Top = 8
    Width = 722
    Height = 746
    ActivePage = tbsValor
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Fira Code'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tbsDados: TTabSheet
      Caption = 'Dados'
      object grbVeiculo: TGroupBox
        Left = 16
        Top = 3
        Width = 673
        Height = 689
        Caption = 'Ve'#237'culo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Fira Code'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lblDesc: TLabel
          Left = 32
          Top = 27
          Width = 100
          Height = 20
          Caption = 'Descri'#231#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          ParentFont = False
        end
        object lblPlaca: TLabel
          Left = 72
          Top = 80
          Width = 60
          Height = 20
          Caption = 'Placa:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          ParentFont = False
        end
        object lblCor: TLabel
          Left = 378
          Top = 80
          Width = 40
          Height = 20
          Caption = 'Cor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          ParentFont = False
        end
        object lblAno: TLabel
          Left = 92
          Top = 131
          Width = 40
          Height = 20
          Caption = 'Ano:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          ParentFont = False
        end
        object lblModelo: TLabel
          Left = 356
          Top = 131
          Width = 70
          Height = 20
          Caption = 'Modelo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          ParentFont = False
        end
        object lblEstilo: TLabel
          Left = 62
          Top = 187
          Width = 70
          Height = 20
          Caption = 'Estilo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          ParentFont = False
        end
        object lblTempoCarta: TLabel
          Left = 356
          Top = 187
          Width = 120
          Height = 20
          Caption = 'Tempo Carta:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          ParentFont = False
        end
        object lblValorBase: TLabel
          Left = 344
          Top = 611
          Width = 110
          Height = 20
          Caption = 'Valor Base:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edtDesc: TEdit
          Left = 144
          Top = 24
          Width = 505
          Height = 28
          TabOrder = 0
        end
        object edtPlaca: TEdit
          Left = 144
          Top = 77
          Width = 193
          Height = 28
          TabOrder = 1
        end
        object edtCor: TEdit
          Left = 432
          Top = 77
          Width = 217
          Height = 28
          TabOrder = 2
        end
        object spnAno: TSpinEdit
          Left = 144
          Top = 128
          Width = 193
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 3
          Value = 0
        end
        object spnModelo: TSpinEdit
          Left = 432
          Top = 128
          Width = 217
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 4
          Value = 0
        end
        object cmbEstilo: TComboBox
          Left = 144
          Top = 184
          Width = 193
          Height = 28
          TabOrder = 5
        end
        object spnTempoCarta: TSpinEdit
          Left = 496
          Top = 184
          Width = 153
          Height = 30
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 6
          Value = 0
        end
        object rdgTipoVeiculo: TRadioGroup
          Left = 32
          Top = 248
          Width = 617
          Height = 89
          Caption = 'Tipo ve'#237'culo'
          Columns = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          Items.Strings = (
            'Autom'#243'vel'
            'Moto'
            'Caminh'#227'o')
          ParentFont = False
          TabOrder = 7
        end
        object rdgGaragem: TRadioGroup
          Left = 32
          Top = 352
          Width = 265
          Height = 89
          Caption = 'Garagem coberta'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 8
        end
        object rdgCondutor: TRadioGroup
          Left = 384
          Top = 352
          Width = 265
          Height = 89
          Caption = 'Somente 1 condutor'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 9
        end
        object rdgAlarme: TRadioGroup
          Left = 32
          Top = 464
          Width = 265
          Height = 89
          Caption = 'Possui alarme'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 10
        end
        object rdgPagamento: TRadioGroup
          Left = 32
          Top = 576
          Width = 265
          Height = 89
          Caption = 'Tipo Pagamento'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          Items.Strings = (
            'A vista'
            'A prazo')
          ParentFont = False
          TabOrder = 11
        end
        object rdgUso: TRadioGroup
          Left = 378
          Top = 464
          Width = 265
          Height = 89
          Caption = 'Uso domestico'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -16
          Font.Name = 'Fira Code'
          Font.Style = []
          Items.Strings = (
            'Sim'
            'N'#227'o')
          ParentFont = False
          TabOrder = 12
        end
        object edtValorBase: TEdit
          Left = 472
          Top = 608
          Width = 171
          Height = 28
          Enabled = False
          TabOrder = 13
        end
      end
    end
    object tbsValor: TTabSheet
      Caption = 'Valor'
      ImageIndex = 1
      ExplicitLeft = 0
      object lblShowValorBase: TLabel
        Left = 95
        Top = 72
        Width = 170
        Height = 33
        Caption = 'Valor Base'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
      end
      object lblValorSeguroBase: TLabel
        Left = 40
        Top = 152
        Width = 289
        Height = 33
        Caption = 'Valor Seguro Base'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
      end
      object lblValorDesconto: TLabel
        Left = 60
        Top = 232
        Width = 238
        Height = 33
        Caption = 'Valor Desconto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
      end
      object lblValorAcrescimo: TLabel
        Left = 60
        Top = 320
        Width = 272
        Height = 33
        Caption = 'Valor Acr'#233'scimos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
      end
      object lblValorSeguro: TLabel
        Left = 60
        Top = 408
        Width = 204
        Height = 33
        Caption = 'Valor Seguro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
      end
      object lblValorParce: TLabel
        Left = 60
        Top = 496
        Width = 221
        Height = 33
        Caption = 'Valor Parcela'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
      end
      object edtShowValorBase: TEdit
        Left = 376
        Top = 72
        Width = 241
        Height = 28
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object edtValorSeguroBase: TEdit
        Left = 376
        Top = 152
        Width = 241
        Height = 28
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtValorDesconto: TEdit
        Left = 376
        Top = 232
        Width = 241
        Height = 28
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edtAcrescimo: TEdit
        Left = 376
        Top = 320
        Width = 241
        Height = 28
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edtValorSeguro: TEdit
        Left = 376
        Top = 408
        Width = 241
        Height = 28
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edtValorParcela: TEdit
        Left = 376
        Top = 496
        Width = 241
        Height = 28
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Fira Code'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object bbtnNovoCalc: TBitBtn
        Left = 208
        Top = 592
        Width = 297
        Height = 49
        Caption = 'Novo C'#225'lculo'
        TabOrder = 6
      end
    end
  end
end
