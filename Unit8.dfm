object OgrenciArama: TOgrenciArama
  Left = 224
  Top = 142
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #214#286'RENC'#304' ARAMA'
  ClientHeight = 367
  ClientWidth = 556
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 167
    Width = 556
    Height = 200
    Align = alBottom
    Color = clWhite
    DataSource = DataSource1
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
  object RadioButton1: TRadioButton
    Left = 8
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Ada G'#246're'
    Checked = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    TabStop = True
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 8
    Top = 48
    Width = 137
    Height = 17
    Caption = 'Numaraya G'#246're'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 8
    Top = 128
    Width = 105
    Height = 25
    Caption = 'S'#305'n'#305'fa G'#246're'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = RadioButton3Click
  end
  object BitBtn1: TBitBtn
    Left = 456
    Top = 128
    Width = 89
    Height = 25
    Caption = 'Kapat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object Edit3: TEdit
    Left = 168
    Top = 128
    Width = 25
    Height = 21
    TabOrder = 5
    Visible = False
    OnChange = Edit3Change
  end
  object Edit2: TEdit
    Left = 168
    Top = 48
    Width = 113
    Height = 21
    TabOrder = 6
    Visible = False
    OnChange = Edit2Change
  end
  object Edit1: TEdit
    Left = 168
    Top = 8
    Width = 113
    Height = 21
    TabOrder = 7
    OnChange = Edit1Change
  end
  object RadioButton4: TRadioButton
    Left = 8
    Top = 88
    Width = 121
    Height = 17
    Caption = 'B'#246'l'#252'me G'#246're'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = RadioButton4Click
  end
  object Edit4: TEdit
    Left = 168
    Top = 88
    Width = 113
    Height = 21
    TabOrder = 9
    Visible = False
    OnChange = Edit4Change
  end
  object Table1: TTable
    ObjectView = True
    DatabaseName = 'dersler'
    Filtered = True
    FieldDefs = <
      item
        Name = 'No'
        Attributes = [faReadonly]
        DataType = ftAutoInc
      end
      item
        Name = 'Ogrno'
        DataType = ftString
        Size = 8
      end
      item
        Name = 'Ad'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Soyad'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'Sinif'
        DataType = ftFloat
      end
      item
        Name = 'Bolum'
        DataType = ftString
        Size = 15
      end>
    IndexDefs = <
      item
        Name = 'Table1Index1'
        Fields = 'No;Ogrno'
        Options = [ixPrimary, ixUnique]
      end
      item
        Name = 'bolumindex'
        Fields = 'Bolum'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'Ogrin'
        Fields = 'Ogrno'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'adin'
        Fields = 'Ad'
        Options = [ixCaseInsensitive]
      end
      item
        Name = 'sinin'
        Fields = 'Sinif'
        Options = [ixCaseInsensitive]
      end>
    StoreDefs = True
    TableName = 'ogr.db'
    Left = 472
    Top = 8
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
    Left = 504
    Top = 8
  end
end
