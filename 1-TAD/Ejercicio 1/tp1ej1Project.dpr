program tp1ej1Project;

uses
  Vcl.Forms,
  tp1ej1 in 'tp1ej1.pas' {Form1},
  N�meroRacional in 'N�meroRacional.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
