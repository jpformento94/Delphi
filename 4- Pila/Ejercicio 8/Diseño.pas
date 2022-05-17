unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Palindromo,Tipos,StackArray;

type
  TForm1 = class(TForm)
    Texto: TEdit;
    Verificar: TButton;
    Mostrar: TMemo;
    Label1: TLabel;
    procedure VerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  p:PilaPalin;

implementation

{$R *.dfm}

procedure TForm1.VerificarClick(Sender: TObject);
begin
  p.crearPila(texto.text);
  mostrar.Clear;
  if p.VerifPalindromo then
    mostrar.lines.add('"'+texto.text+'"'+' es palindromo')
  else
    mostrar.lines.add('"'+texto.text+'"'+' no es palindromo');
  mostrar.lines.add('Pila original:'+sLineBreak +p.mostrar());
end;

end.
