program Punto12;

uses
  Vcl.Forms,
  Diseño in 'Diseño.pas' {Form1},
  TAD_27ario in 'TAD_27ario.pas',
  Tipos in '..\..\TADs 2022\Tipos.pas',
  Predictivo in 'Predictivo.pas',
  QueuesPointer in '..\..\TADs 2022\QueuesPointer.pas',
  StackPointer in '..\..\TADs 2022\StackPointer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
