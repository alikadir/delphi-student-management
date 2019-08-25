object dersler: Tdersler
  Left = 214
  Top = 126
  HorzScrollBar.Smooth = True
  VertScrollBar.Smooth = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'DERSLER'
  ClientHeight = 445
  ClientWidth = 595
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 248
    Width = 595
    Height = 197
    Align = alBottom
    BorderStyle = bsNone
    Color = clWhite
    DataSource = DataSource1
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Ders'
        Width = 215
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kod'
        Width = 87
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kredi'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sinif'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bolum'
        Width = 124
        Visible = True
      end>
  end
  object BitBtn1: TBitBtn
    Left = 480
    Top = 216
    Width = 83
    Height = 25
    Caption = 'Kapat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object RadioGroup2: TRadioGroup
    Left = 48
    Top = 24
    Width = 177
    Height = 161
    Caption = 'B'#304'LG'#304'SAYAR B'#214'L'#220'M'#220
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      '1.SINIF'
      '2.SINIF'
      '3.SINIF'
      '4.SINIF')
    ParentFont = False
    TabOrder = 2
    OnClick = RadioGroup2Click
  end
  object RadioGroup3: TRadioGroup
    Left = 384
    Top = 24
    Width = 177
    Height = 161
    Caption = 'ELEKTRON'#304'K B'#214'L'#220'M'#220
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Items.Strings = (
      '1.SINIF'
      '2.SINIF'
      '3.SINIF'
      '4.SINIF')
    ParentFont = False
    TabOrder = 3
    OnClick = RadioGroup3Click
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 8
    Top = 200
  end
  object Query1: TQuery
    SQL.Strings = (
      'select * from ders.db'
      'where bolum= :prmbolum and Sinif= :prmsinif')
    Left = 40
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'prmbolum'
        ParamType = ptUnknown
      end
      item
        DataType = ftSmallint
        Name = 'prmsinif'
        ParamType = ptUnknown
      end>
  end
end
