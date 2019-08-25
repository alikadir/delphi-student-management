unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, Buttons;

type
  TOgrenciArama = class(TForm)
    DBGrid1: TDBGrid;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Table1: TTable;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    Table1No: TAutoIncField;
    Table1Ogrno: TStringField;
    Table1Ad: TStringField;
    Table1Soyad: TStringField;
    Table1Sinif: TFloatField;
    Table1Bolum: TStringField;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit1: TEdit;
    RadioButton4: TRadioButton;
    Edit4: TEdit;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit4Change(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  OgrenciArama: TOgrenciArama;

implementation

{$R *.DFM}

procedure TOgrenciArama.RadioButton1Click(Sender: TObject);
begin
 if radiobutton1.Checked then
begin
edit1.enabled:=true;
edit1.visible:=true;
table1.IndexName:='adin';
edit2.enabled:=false;
edit2.visible:=false;
edit3.enabled:=false;
edit3.visible:=false;
edit4.Enabled:=false;
edit4.Visible:=false;
 end;
end;

procedure TOgrenciArama.RadioButton2Click(Sender: TObject);
begin
  if radiobutton2.Checked then
begin
edit2.enabled:=true;
edit2.visible:=true;
table1.IndexName:='ogrin';
edit3.enabled:=false;
edit1.enabled:=false;
edit1.visible:=false;
edit3.visible:=false;
edit4.Enabled:=false;
edit4.Visible:=false;
 end;
end;

procedure TOgrenciArama.RadioButton3Click(Sender: TObject);
begin
    if radiobutton3.Checked then
begin
edit3.enabled:=true;
edit3.visible:=true;
table1.IndexName:='sinin';
edit2.enabled:=false;
edit1.enabled:=false;
edit1.visible:=false;
edit2.visible:=false;
edit4.Enabled:=false;
edit4.Visible:=false;
 end;
end;

procedure TOgrenciArama.Edit1Change(Sender: TObject);
begin
table1.FindNearest([edit1.text]);
end;

procedure TOgrenciArama.Edit2Change(Sender: TObject);
begin
table1.FindNearest([edit2.text]);
end;

procedure TOgrenciArama.Edit3Change(Sender: TObject);
begin
table1.FindNearest([edit3.text]);
end;

procedure TOgrenciArama.FormCreate(Sender: TObject);
begin
table1.IndexName:='adin';
end;

procedure TOgrenciArama.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure TOgrenciArama.FormShow(Sender: TObject);
begin
table1.Open;
end;

procedure TOgrenciArama.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
table1.Close;
end;

procedure TOgrenciArama.Edit4Change(Sender: TObject);
begin
table1.FindNearest([edit4.text]);
end;

procedure TOgrenciArama.RadioButton4Click(Sender: TObject);
begin
 if radiobutton4.Checked then
begin
edit4.Enabled:=true;
edit4.Visible:=true;
table1.IndexName:='bolumindex';
edit1.enabled:=false;
edit1.visible:=false;
edit2.enabled:=false;
edit2.visible:=false;
edit3.enabled:=false;
edit3.visible:=false;


 end;
end;

end.
