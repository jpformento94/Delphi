unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,InvertirPila,StackArray,Tipos,
  Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Invertir: TButton;
    Pila: TEdit;
    GroupBox1: TGroupBox;
    Mostrar: TMemo;
    Mostrar2: TMemo;
    Label2: TLabel;
    procedure InvertirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  p:pilaOb;

implementation

{$R *.dfm}

procedure TForm1.InvertirClick(Sender: TObject);
begin
  p.ConvPila(pila.text);
  p.InvPila();
  groupbox1.visible:=true;
  mostrar.lines.add('Pila original:'+slineBreak+p.mostrar);
  mostrar2.lines.add('Pila invertida:'+slineBreak+p.mostrarInv);
end;

end.
