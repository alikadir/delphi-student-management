unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, Db, DBTables, Buttons,
  ComCtrls;

type
  Tduzdrs = class(TForm)
    DBNavigator2: TDBNavigator;
    BitBtn1: TBitBtn;
    Table1: TTable;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    Label1: TLabel;
    Edit1: TEdit;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Table1FilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  duzdrs: Tduzdrs;

implementation

{$R *.DFM}

procedure Tduzdrs.Button1Click(Sender: TObject);
begin
close;
end;

procedure Tduzdrs.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels.Items[0].Text:=timetostr(now);
statusbar1.Panels.Items[1].Text:=datetostr(now);
end;

procedure Tduzdrs.Edit1Change(Sender: TObject);
begin

if radiogroup1.ItemIndex=0 then
begin
dbgrid1.DataSource:=datasource1;
table1.FilterOptions:=[focaseinsensitive];
table1.Filter:='Ders='+QuotedStr(edit1.Text+'*');
table1.Filtered:=True;
end;
if radiogroup1.ItemIndex=1 then
begin

dbgrid1.DataSource:=datasource1;
table1.Filtered:=True;
table1.Filter:='';

end;
if radiogroup1.ItemIndex=2 then
begin
dbgrid1.DataSource:=datasource1;
table1.Filtered:=True;
table1.Filter:='';
end;
if radiogroup1.ItemIndex=3 then
begin
dbgrid1.DataSource:=datasource1;
table1.FilterOptions:=[focaseinsensitive];
table1.Filter:='Bolum='+QuotedStr(edit1.Text+'*');
table1.Filtered:=True;
end;

end;

procedure Tduzdrs.RadioGroup1Click(Sender: TObject);
begin
if radiogroup1.ItemIndex=0 then
label1.Caption:='Ders Adý';
if radiogroup1.ItemIndex=1 then
label1.Caption:='Ders Kodu';
if radiogroup1.ItemIndex=2 then
label1.Caption:='Ders Kredisi';
if radiogroup1.ItemIndex=3 then
label1.Caption:='Dersin Bölümü';

if radiogroup1.ItemIndex=4 then
begin
label1.Visible:=false;
edit1.Visible:=false;
dbgrid1.DataSource:=datasource1;
table1.Filtered:=false;
end
else
begin
label1.Visible:=true;
edit1.Visible:=true;
end;
end;

procedure Tduzdrs.Table1FilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
if radiogroup1.ItemIndex=1 then
begin
if (copy(dataset.fieldbyname('kod').AsString,1,length(edit1.Text))=edit1.Text) then
accept:=true
else
accept:=false;
end;
if radiogroup1.ItemIndex=2 then
begin
if (copy(dataset.fieldbyname('sinif').AsString,1,length(edit1.Text))=edit1.Text) then
accept:=true
else
accept:=false;
end;
end;

end.
