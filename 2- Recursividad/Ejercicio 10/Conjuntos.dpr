program Conjuntos;

uses
  Vcl.Forms,
  uGUI in 'uGUI.pas' {Form1},
  uConjuntos in 'uConjuntos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
