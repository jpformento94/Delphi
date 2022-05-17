program Punto1Project;

uses
  Vcl.Forms,
  Disenopalindromo in 'Disenopalindromo.pas' {Programa},
  TADrecur_palindromo in 'TADrecur_palindromo.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrograma, Programa);
  Application.Run;
end.
