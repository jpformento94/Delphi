program PacMan;

uses
  Vcl.Forms,
  GUI in 'GUI.pas' {Form1},
  uPuntajePacMan in 'uPuntajePacMan.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
