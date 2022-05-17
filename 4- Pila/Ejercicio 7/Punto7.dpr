program Punto7;

uses
  Vcl.Forms,
  Diseño in 'Diseño.pas' {Form5},
  StackArray in '..\..\TADs 2022\StackArray.pas',
  Tipos in '..\..\TADs 2022\Tipos.pas',
  Matematica in 'Matematica.pas',
  StackCursor in '..\..\TADs 2022\StackCursor.pas',
  StackPointer in '..\..\TADs 2022\StackPointer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
