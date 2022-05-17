program ProductoProject;

uses
  Vcl.Forms,
  Disenoproducto in 'Disenoproducto.pas' {Programa},
  TADrecur_producto in 'TADrecur_producto.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrograma, Programa);
  Application.Run;
end.
