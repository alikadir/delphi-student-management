object duzogr: Tduzogr
  Left = 235
  Top = 59
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'D'#220'ZELTME '#304#350'LEMLER'#304'( '#214#286'RENC'#304' )'
  ClientHeight = 564
  ClientWidth = 626
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 240
    Top = 224
    Width = 185
    Height = 32
    Hint = #214#286'RENC'#304'LER HAKKINDA'
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = #214#286'RENC'#304'LER'
    Font.Charset = TURKISH_CHARSET
    Font.Color = 5122941
    Font.Height = -27
    Font.Name = 'Garamond'
    Font.Pitch = fpVariable
    Font.Style = [fsBold, fsItalic]
    ParentBiDiMode = False
    ParentFont = False
    Layout = tlCenter
  end
  object Label2: TLabel
    Left = 16
    Top = 32
    Width = 79
    Height = 16
    Caption = #214#287'renci No'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 25
    Top = 272
    Width = 576
    Height = 169
    Color = clCream
    DataSource = DataSource1
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'No'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ogrno'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Ad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Soyad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sinif'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bolum'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 80
    Top = 456
    Width = 490
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 496
    Top = 512
    Width = 89
    Height = 25
    Caption = 'Kapat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 545
    Width = 626
    Height = 19
    Panels = <
      item
        Width = 75
      end
      item
        Width = 75
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object RadioGroup1: TRadioGroup
    Left = 256
    Top = 24
    Width = 337
    Height = 177
    Caption = #214#286'RENC'#304' KAYIT D'#220'ZELTME  '
    Columns = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      'NUMARASINA G'#214'RE'
      'ADA G'#214'RE '
      'SOYADA G'#214'RE'
      'SINIFA G'#214'RE'
      'B'#214'L'#220'ME G'#214'RE'
      'T'#220'M'#220)
    ParentFont = False
    TabOrder = 4
    OnClick = RadioGroup1Click
  end
  object Edit1: TEdit
    Left = 112
    Top = 32
    Width = 113
    Height = 21
    TabOrder = 5
    OnChange = Edit1Change
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'dersler'
    OnFilterRecord = Table1FilterRecord
    TableName = 'ogr.db'
    Left = 80
    Top = 504
    object Table1No: TAutoIncField
      FieldName = 'No'
      ReadOnly = True
    end
    object Table1Ogrno: TStringField
      FieldName = 'Ogrno'
      Size = 8
    end
    object Table1Ad: TStringField
      FieldName = 'Ad'
      Size = 15
    end
    object Table1Soyad: TStringField
      FieldName = 'Soyad'
      Size = 15
    end
    object Table1Sinif: TFloatField
      FieldName = 'Sinif'
    end
    object Table1Bolum: TStringField
      FieldName = 'Bolum'
      Size = 15
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 48
    Top = 504
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 16
    Top = 504
  end
end
