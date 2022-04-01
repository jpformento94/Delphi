program Punto10;

uses
  Vcl.Forms,
  diseño in 'diseño.pas' {Form1},
  TAD_tarjeta in 'TAD_tarjeta.pas',
  fecha in 'fecha.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
