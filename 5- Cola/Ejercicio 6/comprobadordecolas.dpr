program comprobadordecolas;

uses
  Vcl.Forms,
  GUI in 'GUI.pas' {Form1},
  uColas in 'uColas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
