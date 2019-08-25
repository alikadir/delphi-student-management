unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Grids,
  DBGrids, ComCtrls;

type
  Tduzogr = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    Table1: TTable;
    DataSource1: TDataSource;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Table1No: TAutoIncField;
    Table1Ogrno: TStringField;
    Table1Ad: TStringField;
    Table1Soyad: TStringField;
    Table1Sinif: TFloatField;
    Table1Bolum: TStringField;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Label2: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Table1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  duzogr: Tduzogr;

implementation

{$R *.dfm}

procedure Tduzogr.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Tduzogr.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels.Items[0].Text:=timetostr(now);
statusbar1.Panels.Items[1].Text:=datetostr(now);
end;

procedure Tduzogr.RadioGroup1Click(Sender: TObject);
begin
if radiogroup1.ItemIndex=0 then
label2.Caption:='Öðrenci No';
if radiogroup1.ItemIndex=1 then
label2.Caption:='Öðrenci Adý';
if radiogroup1.ItemIndex=2 then
label2.Caption:='Öðrenci Soyadý';
if radiogroup1.ItemIndex=3 then
label2.Caption:='Sýnýfý';
if radiogroup1.ItemIndex=4 then
label2.Caption:='Bölümü';

if radiogroup1.ItemIndex=5 then
begin
label2.Visible:=false;
edit1.Visible:=false;
dbgrid1.DataSource:=datasource1;
table1.Filtered:=false;
end
else
begin
label2.Visible:=true;
edit1.Visible:=true;
end;
end;


procedure Tduzogr.Edit1Change(Sender: TObject);
begin
if radiogroup1.ItemIndex=0 then
begin

dbgrid1.DataSource:=datasource1;
table1.Filtered:=True;
table1.Filter:='';

end;
if radiogroup1.ItemIndex=1 then
begin
dbgrid1.DataSource:=datasource1;
table1.FilterOptions:=[focaseinsensitive];
table1.Filter:='Ad='+QuotedStr(edit1.Text+'*');
table1.Filtered:=True;
end;

if radiogroup1.ItemIndex=2 then
begin
dbgrid1.DataSource:=datasource1;
table1.FilterOptions:=[focaseinsensitive];
table1.Filter:='Soyad='+QuotedStr(edit1.Text+'*');
table1.Filtered:=True;
end;

if radiogroup1.ItemIndex=3 then
begin
dbgrid1.DataSource:=datasource1;
table1.Filtered:=True;
table1.Filter:='';
end;

if radiogroup1.ItemIndex=4 then
begin
dbgrid1.DataSource:=datasource1;
table1.FilterOptions:=[focaseinsensitive];
table1.Filter:='Bolum='+QuotedStr(edit1.Text+'*');
table1.Filtered:=True;
end;
end;

procedure Tduzogr.Table1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
if radiogroup1.ItemIndex=0 then
begin
if (copy(dataset.fieldbyname('OgrNo').AsString,1,length(edit1.Text))=edit1.Text) then
accept:=true
else
accept:=false;
end;


if radiogroup1.ItemIndex=3 then
begin
if (copy(dataset.fieldbyname('sinif').AsString,1,length(edit1.Text))=edit1.Text) then
accept:=true
else
accept:=false;
end;
end;
end.



