program Punto7;

uses
  Vcl.Forms,
  Diseño in 'Diseño.pas' {Form1},
  Tipos in '..\TAD listas\Tipos.pas',
  ListArray in '..\TAD listas\ListArray.pas',
  MultasDEpatentes in 'MultasDEpatentes.pas',
  fecha in '..\..\TP1\Punto10\fecha.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
