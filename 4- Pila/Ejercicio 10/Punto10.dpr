program Punto10;

uses
  Vcl.Forms,
  Diseño in 'Diseño.pas' {Form1},
  Divisor in 'Divisor.pas',
  StackArray in '..\..\TADs 2022\StackArray.pas',
  StackCursor in '..\..\TADs 2022\StackCursor.pas',
  StackPointer in '..\..\TADs 2022\StackPointer.pas',
  Tipos in '..\..\TADs 2022\Tipos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
