program tp1ej2Project;

uses
  Vcl.Forms,
  tp1ej2 in 'tp1ej2.pas' {Form1},
  uVector in '..\..\Downloads\P2_Clase_02_POO\uVector.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
