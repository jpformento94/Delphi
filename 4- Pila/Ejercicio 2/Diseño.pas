unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,PilasIguales;

type
  TForm1 = class(TForm)
    Iguales: TButton;
    Pila1: TEdit;
    Pila2: TEdit;
    label1: TLabel;
    Label2: TLabel;
    Mostrar: TMemo;
    Label3: TLabel;
    procedure IgualesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  p:pilas;


implementation

{$R *.dfm}


procedure TForm1.IgualesClick(Sender: TObject);
begin
 p.ConvPila(pila1.text,pila2.text);
 if p.verifico then
  Mostrar.lines.add('Las Pilas son iguales')
  else
    Mostrar.lines.add('Las Pilas no son iguales');
end;

end.
