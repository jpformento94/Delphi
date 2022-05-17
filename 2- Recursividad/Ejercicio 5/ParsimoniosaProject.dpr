program ParsimoniosaProject;

uses
  Vcl.Forms,
  Disenoparsimoniosa in 'Disenoparsimoniosa.pas' {Programa},
  TADrecur_parsimoniosa in 'TADrecur_parsimoniosa.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrograma, Programa);
  Application.Run;
end.
