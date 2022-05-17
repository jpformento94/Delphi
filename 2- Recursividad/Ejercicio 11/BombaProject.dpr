program BombaProject;

uses
  Vcl.Forms,
  disenobomba in 'disenobomba.pas' {Programa},
  TADrecur_bomba in 'TADrecur_bomba.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrograma, Programa);
  Application.Run;
end.
