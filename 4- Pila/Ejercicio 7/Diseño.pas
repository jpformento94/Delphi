unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Tipos,Matematica,StackArray;//Probado con: StackCursor StackArray StackPointer

type
  TForm5 = class(TForm)
    Verificar: TButton;
    Mostrar: TMemo;
    Texto: TEdit;
    Label1: TLabel;
    procedure VerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
   P:Expresion;
implementation

{$R *.dfm}


procedure TForm5.VerificarClick(Sender: TObject);

begin
  P.CrearPila(texto.text);
  p.CrearPila(texto.Text);
  p.cargarCaracteres;
  p.cargarOperadores;
  Mostrar.Clear;
  Mostrar.Lines.Add('Expresión :'+sLineBreak +P.mostrar);
  if (p.VerificarParentesis() and p.VerificarOperadores()) then
    Mostrar.Lines.Add('La expresión es correcta')
  else
    Mostrar.Lines.Add('La expresión no es correcta');
end;
end.
