unit Disenoproducto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Tadrecur_producto;

type
  TPrograma = class(TForm)
    n1: TEdit;
    Multiplicador: TLabel;
    Calcular: TButton;
    Mostrar: TMemo;
    m1: TEdit;
    Numero: TLabel;
    procedure CalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Programa: TPrograma;

implementation

{$R *.dfm}

procedure TPrograma.CalcularClick(Sender: TObject);
var p:producto;
begin
   mostrar.lines.add(inttostr(p.producto_recursivo(strtoint(n1.text),strtoint(m1.text))));
end;

end.
