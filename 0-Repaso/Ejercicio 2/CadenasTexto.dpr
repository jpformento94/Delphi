program CadenasTexto;

uses
  Vcl.Forms,
  GUI in 'GUI.pas' {fLayout},
  Cadenas in 'Cadenas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfLayout, fLayout);
  Application.Run;
end.
