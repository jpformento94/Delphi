unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Tipos, ArbolesBinarios, ListPointer;

type
  TForm1 = class(TForm)
    bIngresar: TButton;
    mGUI: TMemo;
    bCargar: TButton;
    nPadre: TButton;
    bHijos: TButton;
    bHermano: TButton;
    bEjecutarTodo: TButton;
    bNivel: TButton;
    bAltura: TButton;
    procedure bIngresarClick(Sender: TObject);
    procedure bCargarClick(Sender: TObject);
    procedure nPadreClick(Sender: TObject);
    procedure bHijosClick(Sender: TObject);
    procedure bHermanoClick(Sender: TObject);
    procedure bEjecutarTodoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bNivelClick(Sender: TObject);
    procedure bAlturaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: arbol;
  x: tipoelemento;

implementation

{$R *.dfm}

//Altura del subarbol del nodo ingresado
procedure TForm1.bAlturaClick(Sender: TObject);
var
  altura: integer;
begin
  mGUI.Lines.Add('');
end;

//Crea un arbol y lo carga
procedure TForm1.bCargarClick(Sender: TObject);
begin
  a.Crear(Cadena,10);
  a.CargarArbol;
  mGUI.Lines.Add('Arbol en pre orden');
  mGUI.Lines.Add(a.PreOrden);
  mGUI.Lines.Add('');
end;

//Ejecuta todo
procedure TForm1.bEjecutarTodoClick(Sender: TObject);
begin
  bIngresarClick(Sender);
  nPadreClick(Sender);
  bHijosClick(sender);
  bHermanoClick(sender);
  bNivelClick(Sender);
  bAlturaClick(Sender);
end;

//Devuelve el hermano de un nodo
procedure TForm1.bHermanoClick(Sender: TObject);
var
  p, padre: posicionarbol;
  hermano: tipoelemento;
begin
  padre:= a.Padre(x.Valor2);
  if (a.HijoIzquierdo(padre) <> x.Valor2) and (p <> Nulo) then
    begin
      p:= a.HijoIzquierdo(padre);
      hermano:= a.Recuperar(p);
      mGUI.Lines.Add('El hermano es');
      mGUI.Lines.Add(hermano.ArmarString);
    end;
  if (a.HijoDerecho(padre) <> x.Valor2) and (p <> Nulo) then
    begin
      p:= a.HijoDerecho(padre);
      hermano:= a.Recuperar(p);
      mGUI.Lines.Add('El hermano es');
      mGUI.Lines.Add(hermano.ArmarString);
    end;
  mGUI.Lines.Add('');
end;

//Devuelve los hijos de un nodo
procedure TForm1.bHijosClick(Sender: TObject);
var
  p: posicionarbol;
  HI, HD: tipoelemento;
begin
  mGUI.Lines.Add('Hijo izquierdo');
  p:= a.HijoIzquierdo(x.Valor2);
  if (p = Nulo) then
    mGUI.Lines.Add('No tiene hijo izquierdo')
  else
    begin
      HI:= a.Recuperar(p);
      mGUI.Lines.Add(HI.ArmarString);
    end;
  mGUI.Lines.Add('');
  mGUI.Lines.Add('Hijo derecho');
  p:= a.HijoDerecho(x.Valor2);
  if (p = Nulo) then
    mGUI.Lines.Add('No tiene hijo derecho')
  else
    begin
      HD:= a.Recuperar(p);
      mGUI.Lines.Add(HD.ArmarString);
    end;
  mGUI.Lines.Add('');
end;

//Ingresa un nodo a buscar
procedure TForm1.bIngresarClick(Sender: TObject);
var
  p: posicionarbol;
begin
  x.Clave:= InputBox('Ingresar nodo','Nodo a buscar','');
  x.Valor2:= a.BuscarPreOrden(x);
  mGUI.Lines.Add('Nodo a buscar');
  if (x.valor2 = Nulo) then
    mGUI.Lines.Add('No se encontro el nodo')
  else
    mGUI.Lines.Add(x.ArmarString);
  mGUI.Lines.Add('');
end;

//Nivel del nodo ingresado
procedure TForm1.bNivelClick(Sender: TObject);
var
  nivel: integer;
begin
  nivel:= a.Nivel(x.Valor2);
  mGUI.Lines.Add('Nivel' + nivel.ToString);
  mGUI.Lines.Add('');
end;

//Devuelve el padre del nodo ingresado
procedure TForm1.nPadreClick(Sender: TObject);
var
  p:posicionarbol;
  y: tipoelemento;
begin
  p:= a.Padre(x.Valor2);
  y:= a.Recuperar(p);
  mGUI.Lines.Add('Padre');
  mGUI.Lines.Add(y.ArmarString);
  mGUI.Lines.Add('');
end;

end.
