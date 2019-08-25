unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, StdCtrls, ExtCtrls, Buttons;

type
  Togrler = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Query1: TQuery;
    BitBtn1: TBitBtn;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ogrler: Togrler;

implementation

{$R *.DFM}

procedure Togrler.FormActivate(Sender: TObject);
begin
//query1.refresh;

end;

procedure Togrler.BitBtn1Click(Sender: TObject);
begin
close;
end;

procedure Togrler.RadioGroup2Click(Sender: TObject);
begin
RadioGroup3.ItemIndex:=-1;
query1.Close;
query1.ParamByName('prmbolum').AsString:='Bilgisayar';
query1.ParamByName('prmsinif').Asinteger:=RadioGroup2.ItemIndex+1;
query1.Open;
end;

procedure Togrler.RadioGroup3Click(Sender: TObject);
begin
RadioGroup2.ItemIndex:=-1;
query1.Close;
query1.ParamByName('prmbolum').AsString:='Elektronik';
query1.ParamByName('prmsinif').Asinteger:=RadioGroup3.ItemIndex+1;
query1.Open;
end;

end.
