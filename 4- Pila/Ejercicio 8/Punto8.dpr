program Punto8;

uses
  Vcl.Forms,
  Diseño in 'Diseño.pas' {Form1},
  Palindromo in 'Palindromo.pas',
  StackArray in '..\..\TADs 2022\StackArray.pas',
  Tipos in '..\..\TADs 2022\Tipos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
