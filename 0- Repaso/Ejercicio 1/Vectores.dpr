program Vectores;

uses
  Vcl.Forms,
  GUI in 'GUI.pas' {fLayout},
  Code in 'Code.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfLayout, fLayout);
  Application.Run;
end.
