program Project1;

uses
  Vcl.Forms,
  GUI in 'GUI.pas' {Form1},
  Cadenas in 'Cadenas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
