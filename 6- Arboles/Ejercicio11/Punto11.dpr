program Punto11;

uses
  Vcl.Forms,
  Diseño in 'Diseño.pas' {Form1},
  TAD in 'TAD.pas',
  ArbolesBinariosAVL in '..\..\TADs 2022\ArbolesBinariosAVL.pas',
  QueuesPointer in '..\..\TADs 2022\QueuesPointer.pas',
  StackPointer in '..\..\TADs 2022\StackPointer.pas',
  Tipos in '..\..\TADs 2022\Tipos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
