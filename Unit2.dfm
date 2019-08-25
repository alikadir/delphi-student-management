object ogrkay: Togrkay
  Left = 120
  Top = 138
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #214#286'RENC'#304' G'#304'R'#304#350#304
  ClientHeight = 389
  ClientWidth = 858
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
    Left = 8
    Top = 24
    Width = 129
    Height = 16
    Caption = #214#287'renci Numaras'#305':'
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 72
    Width = 28
    Height = 16
    Caption = 'Ad'#305':'
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 120
    Width = 54
    Height = 16
    Caption = 'Soyad'#305':'
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 168
    Width = 39
    Height = 16
    Caption = 'S'#305'n'#305'f'#305':'
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 216
    Width = 52
    Height = 16
    Caption = 'B'#246'l'#252'm'#252
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBNavigator1: TDBNavigator
    Left = 328
    Top = 280
    Width = 470
    Height = 25
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 153
    Top = 22
    Width = 96
    Height = 21
    DataField = 'Ogrno'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 153
    Top = 69
    Width = 96
    Height = 21
    DataField = 'Ad'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 153
    Top = 118
    Width = 94
    Height = 21
    DataField = 'Soyad'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 153
    Top = 166
    Width = 23
    Height = 21
    DataField = 'Sinif'
    DataSource = DataSource1
    TabOrder = 4
  end
  object BitBtn1: TBitBtn
    Left = 760
    Top = 336
    Width = 89
    Height = 25
    Caption = 'Kapat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object DBGrid1: TDBGrid
    Left = 272
    Top = 24
    Width = 577
    Height = 217
    Color = clCream
    DataSource = DataSource1
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    ReadOnly = True
    TabOrder = 6
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
  object StatusBar1: TStatusBar
    Left = 0
    Top = 370
    Width = 858
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
  object Button1: TButton
    Left = 272
    Top = 336
    Width = 121
    Height = 24
    Caption = 'YAZDIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Button1Click
  end
  object DBEdit5: TDBEdit
    Left = 152
    Top = 216
    Width = 97
    Height = 21
    DataField = 'Bolum'
    DataSource = DataSource1
    TabOrder = 9
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'dersler'
    TableName = 'ogr.db'
    Left = 72
    Top = 328
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
    Left = 40
    Top = 328
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 328
  end
end
