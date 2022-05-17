program punto4;

uses
  Vcl.Forms,
  diseño in 'diseño.pas' {Form1},
  TAD_binario in 'TAD_binario.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
