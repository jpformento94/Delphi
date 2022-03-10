program CuadradoLatino;

uses
  Vcl.Forms,
  GUI in 'GUI.pas' {fLayout};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfLayout, fLayout);
  Application.Run;
end.
