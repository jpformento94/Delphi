program Lista;

uses
  Vcl.Forms,
  GUI in 'GUI.pas' {Form1},
  Tipos in 'Tipos.pas',
  ListArray in 'ListArray.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
