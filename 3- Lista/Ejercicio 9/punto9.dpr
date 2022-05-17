program punto9;

uses
  Vcl.Forms,
  diseño in 'diseño.pas' {Form1},
  TADAgenda in 'TADAgenda.pas',
  ListArray in '..\..\TADs 2022\ListArray.pas',
  Tipos in '..\..\TADs 2022\Tipos.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
