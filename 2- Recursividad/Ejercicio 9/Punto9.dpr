program Punto9;

uses
  Vcl.Forms,
  Dise�o in 'Dise�o.pas' {Form1},
  TADCarbono in 'TADCarbono.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
