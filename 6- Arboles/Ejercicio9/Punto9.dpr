program Punto9;

uses
  Vcl.Forms,
  diseño in 'diseño.pas' {Form1},
  TAD in 'TAD.pas',
  ArbolesBinarios in '..\..\TADs 2022\ArbolesBinarios.pas',
  QueuesPointer in '..\..\TADs 2022\QueuesPointer.pas',
  StackPointer in '..\..\TADs 2022\StackPointer.pas',
  Tipos in '..\..\TADs 2022\Tipos.pas',
  ArbolesBinariosAVL in 'ArbolesBinariosAVL.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
