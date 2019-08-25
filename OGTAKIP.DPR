program ogtakip;

uses
  Forms,
  Unit1 in 'Unit1.pas' {ogrencitkp},
  Unit2 in 'Unit2.pas' {ogrkay},
  Unit3 in 'Unit3.pas' {dersekle},
  Unit4 in 'Unit4.pas' {dersler},
  Unit5 in 'Unit5.pas' {ogrler},
  Unit6 in 'Unit6.pas' {duzdrs},
  Unit7 in 'Unit7.pas' {ogrvedrs},
  Unit8 in 'Unit8.pas' {OgrenciArama},
  Unit9 in 'Unit9.pas' {duzogr},
  Unit10 in 'Unit10.pas' {Form10},
  Unit11 in 'Unit11.pas' {Form11},
  Unit12 in 'Unit12.pas' {Form12},
  Unit13 in 'Unit13.pas' {Form13};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Fýrat Öðrenci Takip Pro 1.0';
  Application.CreateForm(Togrencitkp, ogrencitkp);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(Togrkay, ogrkay);
  Application.CreateForm(Tdersekle, dersekle);
  Application.CreateForm(Tdersler, dersler);
  Application.CreateForm(Togrler, ogrler);
  Application.CreateForm(Tduzdrs, duzdrs);
  Application.CreateForm(Togrvedrs, ogrvedrs);
  Application.CreateForm(TOgrenciArama, OgrenciArama);
  Application.CreateForm(Tduzogr, duzogr);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.Run;

end.
