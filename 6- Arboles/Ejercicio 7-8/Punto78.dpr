program Punto78;

uses
  Vcl.Forms,
  Diseño in 'Diseño.pas' {Form1},
  TADabm in 'TADabm.pas',
  ArbolesBinariosBusqueda in '..\..\TADs 2022\ArbolesBinariosBusqueda.pas',
  Tipos in '..\..\TADs 2022\Tipos.pas',
  QueuesPointer in '..\..\TADs 2022\QueuesPointer.pas',
  StackPointer in '..\..\TADs 2022\StackPointer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
