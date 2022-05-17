unit disenobomba;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,TADrecur_bomba;

type
  TPrograma = class(TForm)
    Numero: TEdit;
    bomba: TEdit;
    Calcular: TButton;
    Mostrar: TMemo;
    Label1: TLabel;
    Label2: TLabel;
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
var
b:bomba1;
begin
  Mostrar.visible:=true;
  mostrar.Clear;
  Mostrar.lines.add('Numero:'+ numero.text);
  Mostrar.lines.add('Bomba:'+ bomba.text);
  Mostrar.lines.add(b.bomba(strtoint(numero.text),strtoint(bomba.text)));
end;

end.
