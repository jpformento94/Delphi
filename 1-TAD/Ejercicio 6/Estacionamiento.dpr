program Estacionamiento;

uses
  Vcl.Forms,
  uGUI in 'uGUI.pas' {fGUI},
  uEstacionamiento in 'uEstacionamiento.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfGUI, fGUI);
  Application.Run;
end.
