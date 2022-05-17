unit Disenoparsimoniosa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,TADrecur_parsimoniosa;

type
  TPrograma = class(TForm)
    Generar: TButton;
    ingresar_mostrar: TEdit;
    procedure GenerarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Programa: TPrograma;


implementation

{$R *.dfm}

procedure TPrograma.GenerarClick(Sender: TObject);
var p:parsimoniosa;
begin
  ingresar_mostrar.text:=p.parsimoniosa_recursivo(strtoint(ingresar_mostrar.Text),1);
end;

end.
