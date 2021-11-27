program Linhas;

uses
  Forms,
  Principal in 'Principal.pas' {Form1},
  Capacitancia in 'Capacitancia.pas' {Form2},
  Indutancia_sem_solo in 'Indutancia_sem_solo.pas' {Form3},
  Indutancia_solo_ideal in 'Indutancia_solo_ideal.pas' {Form4},
  Indutancia_solo_real in 'Indutancia_solo_real.pas' {Form5},
  Resistencia in 'Resistencia.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
