unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Mask, Db, DBTables, Grids, DBGrids, Buttons,
  ComCtrls;

type
  Tdersekle = class(TForm)
    Table1: TTable;
    DataSource1: TDataSource;
    Table1No: TAutoIncField;
    Table1Ders: TStringField;
    Table1Kod: TFloatField;
    Table1Kredi: TFloatField;
    Table1Sinif: TFloatField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Button1: TButton;
    Table1Bolum: TStringField;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    procedure DBNavigator1BeforeAction(Sender: TObject;
      Button: TNavigateBtn);
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dersekle: Tdersekle;

implementation

uses Unit11;

{$R *.DFM}

procedure Tdersekle.DBNavigator1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
if (button=nbinsert) then
dbedit1.SetFocus;
end;

procedure Tdersekle.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tdersekle.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels.Items[0].Text:=timetostr(now);
statusbar1.Panels.Items[1].Text:=datetostr(now);
end;

procedure Tdersekle.Button1Click(Sender: TObject);
begin
form11.quickrep1.preview;
end;

end.
