unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm13 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

    sifreonay:boolean;

  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

procedure TForm13.Button2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm13.Button1Click(Sender: TObject);
begin

   if edit1.Text='qq' then
   begin
   sifreonay:=true;
   ModalResult := mrOK;
   end
   else
   begin
   sifreonay:=false;
   Application.MessageBox('Girdiðiniz Þifre Geçersizdir','Hata',MB_OK+MB_ICONERROR);
   edit1.SetFocus;
   end;

end;

procedure TForm13.FormCreate(Sender: TObject);
begin
if form13.ShowModal=mrOK then
begin
form13.Close;
end;
end;

procedure TForm13.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
canclose:=sifreonay;
end;

procedure TForm13.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
        if Key=chr(13) then button1.Click; 
end;

end.
