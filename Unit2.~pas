unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Db, ExtCtrls, DBTables, Grids, DBGrids, Buttons,
  ComCtrls;

type
  Togrkay = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    DBGrid1: TDBGrid;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Button1: TButton;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Table1No: TAutoIncField;
    Table1Ogrno: TStringField;
    Table1Ad: TStringField;
    Table1Soyad: TStringField;
    Table1Sinif: TFloatField;
    Table1Bolum: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ogrkay: Togrkay;

implementation

uses Unit12, Unit10;

{$R *.DFM}

procedure Togrkay.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Togrkay.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels.Items[0].Text:=timetostr(now);
statusbar1.Panels.Items[1].Text:=datetostr(now);
end;

procedure Togrkay.Button1Click(Sender: TObject);
begin
form10.QuickRep1.Preview;
end;

end.
