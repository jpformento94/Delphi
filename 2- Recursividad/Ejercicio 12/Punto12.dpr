program Punto12;

uses
  Vcl.Forms,
  Dise�o in 'Dise�o.pas' {Form2},
  TADCampoMinado in 'TADCampoMinado.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
