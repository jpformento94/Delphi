program Punto2;

uses
  Vcl.Forms,
  Dise�o in 'Dise�o.pas' {Form1},
  PilasIguales in 'PilasIguales.pas',
  Tipos in '..\..\TADs 2022\Tipos.pas',
  StackArray in '..\..\TADs 2022\StackArray.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
