program Punto10;

uses
  Vcl.Forms,
  Diseño in 'Diseño.pas' {Form1},
  NumAzar in 'NumAzar.pas',
  ArbolesBinariosAVL in '..\..\TADs 2022\ArbolesBinariosAVL.pas',
  ArbolesBinariosBusqueda in '..\..\TADs 2022\ArbolesBinariosBusqueda.pas',
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
