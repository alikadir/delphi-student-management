object dersekle: Tdersekle
  Left = 140
  Top = 151
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'DERS G'#304'R'#304#350#304
  ClientHeight = 399
  ClientWidth = 825
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
    Left = 16
    Top = 40
    Width = 35
    Height = 16
    Caption = 'DERS'
    Color = clSkyBlue
    FocusControl = DBEdit1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 28
    Height = 16
    Caption = 'KOD'
    Color = clSkyBlue
    FocusControl = DBEdit2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 128
    Width = 39
    Height = 16
    Caption = 'KRED'#304
    Color = clSkyBlue
    FocusControl = DBEdit3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 176
    Width = 34
    Height = 16
    Caption = 'SINIF'
    Color = clSkyBlue
    FocusControl = DBEdit4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 16
    Top = 224
    Width = 47
    Height = 16
    Caption = 'B'#214'L'#220'M'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 40
    Width = 89
    Height = 21
    DataField = 'Ders'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 80
    Width = 89
    Height = 21
    DataField = 'Kod'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 104
    Top = 128
    Width = 89
    Height = 21
    DataField = 'Kredi'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 104
    Top = 176
    Width = 89
    Height = 21
    DataField = 'Sinif'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 272
    Top = 272
    Width = 480
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
    BeforeAction = DBNavigator1BeforeAction
  end
  object DBGrid1: TDBGrid
    Left = 232
    Top = 40
    Width = 577
    Height = 201
    Color = clCream
    DataSource = DataSource1
    FixedColor = clMoneyGreen
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 5
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
        FieldName = 'Ders'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kod'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Kredi'
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
  object BitBtn1: TBitBtn
    Left = 720
    Top = 336
    Width = 89
    Height = 25
    Caption = 'Kapat'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = BitBtn1Click
    Kind = bkCancel
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 380
    Width = 825
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
    Left = 232
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
    Left = 104
    Top = 224
    Width = 89
    Height = 21
    DataField = 'Bolum'
    DataSource = DataSource1
    TabOrder = 9
  end
  object Table1: TTable
    Active = True
    DatabaseName = 'dersler'
    TableName = 'ders.db'
    Left = 80
    Top = 344
    object Table1No: TAutoIncField
      FieldName = 'No'
      ReadOnly = True
    end
    object Table1Ders: TStringField
      FieldName = 'Ders'
      Size = 30
    end
    object Table1Kod: TFloatField
      FieldName = 'Kod'
    end
    object Table1Kredi: TFloatField
      FieldName = 'Kredi'
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
    Top = 344
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 344
  end
end
