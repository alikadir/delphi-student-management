unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, Grids, DBGrids, Db, DBTables, Buttons,
  ComCtrls, jpeg;

type
  Togrvedrs = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    Table1: TTable;
    DataSource1: TDataSource;
    Table2: TTable;
    DataSource2: TDataSource;
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Query1: TQuery;
    BitBtn3: TBitBtn;
    Label5: TLabel;
    StatusBar1: TStatusBar;
    Label6: TLabel;
    Timer1: TTimer;
    Image1: TImage;
    Table2No: TAutoIncField;
    Table2Ogrno: TStringField;
    Table2Ders: TStringField;
    Table2Vize: TFloatField;
    Table2Final: TFloatField;
    Table2But: TFloatField;
    Edit1: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure BitBtn3Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ogrvedrs: Togrvedrs;

implementation



{$R *.DFM}

procedure Togrvedrs.FormShow(Sender: TObject);
begin
table1.Active:=true;
table2.Active:=true;
end;

procedure Togrvedrs.BitBtn1Click(Sender: TObject);
begin

if listbox1.Items.Count>0 then
begin
     if (listbox1.ItemIndex<0) then
     showmessage('Önce eklenecek dersi seçmelisiniz!')
     else
     begin
     table2.append;
     table2.fields[1].Value:=DBEdit1.text;
     table2.fields[2].Value:=listbox1.Items.Strings[listbox1.ItemIndex];
     table2.post;
     Table2.Refresh;
     listbox1.Items.Delete(listbox1.ItemIndex);
     end;
end;

end;

procedure Togrvedrs.BitBtn2Click(Sender: TObject);
begin

if table2.RecordCount>0 then
begin

if not((table2.FieldByName('Vize').AsString<>'') or (table2.FieldByName('Final').AsString<>'') or (table2.FieldByName('But').AsString<>'')) then
begin
listbox1.Items.Add(table2.FieldValues['ders']);
table2.Edit;
table2.Delete;
table2.Refresh;
end
else
begin
Application.MessageBox('Bu derse ait girilmiþ notlar var. Kayýt silinemez.','Hata',MB_OK+MB_ICONERROR);
end;

end;

end;


procedure Togrvedrs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
table1.Active:=false;
table2.Active:=false;
end;

procedure Togrvedrs.DataSource1DataChange(Sender: TObject; Field: TField);
begin
listbox1.Clear;
query1.ParamByName('prmOgrNo').Value:=DBEdit1.Text;
query1.ParamByName('prmSinif').Value:=DBEdit4.Text;
query1.ParamByName('prmbolum').Value:=DBEdit5.Text;
query1.Active:=true;

        while not query1.Eof do
        begin
        listbox1.Items.Add(query1.Fields[1].AsString);
        query1.Next;
        end;

query1.Active:=false;
end;

procedure Togrvedrs.BitBtn3Click(Sender: TObject);
begin
close;
end;

procedure Togrvedrs.Timer1Timer(Sender: TObject);
begin
statusbar1.Panels.Items[0].Text:=timetostr(now);
statusbar1.Panels.Items[1].Text:=datetostr(now);
end;

procedure Togrvedrs.Edit1Change(Sender: TObject);
begin
table1.FindNearest([edit1.text]);
end;

end.
