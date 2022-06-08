unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Tipos, ArbolesBinarios, ListPointer;

type
  TForm1 = class(TForm)
    bCargar: TButton;
    mGUI: TMemo;
    bHojas: TButton;
    bNodosInternos: TButton;
    bNivel: TButton;
    procedure bCargarClick(Sender: TObject);
    procedure bHojasClick(Sender: TObject);
    procedure bNodosInternosClick(Sender: TObject);
    procedure bNivelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a: arbol;

implementation

{$R *.dfm}

{-----------------------Funciones y procedimientos-----------------------}

//Devuelve los nodos hoja
function buscarHojas(var a:arbol):lista;
var
  x: tipoelemento;
  l: lista;
  //Proceso recursivo de busqueda
  procedure buscar(P: PosicionArbol);
  begin
    if P <> Nulo then
      begin
        if (a.HijoIzquierdo(P) = Nulo) and (a.HijoDerecho(P) = Nulo) then
          l.Agregar(a.Recuperar(P));
        buscar(a.HijoIzquierdo(P));
        buscar(a.HijoDerecho(P));
      end;
  end;
//Funcion principal
begin
  l.Crear(a.DatoDeLaClave,a.SizeTree);
  buscar(a.Root);
  result:= l;
end;

function nodosInternos(var a:arbol):lista;
var
  x: tipoelemento;
  l: lista;
  //Proceso recursivo de busqueda
  procedure buscar(P: PosicionArbol);
  begin
    if P <> Nulo then
      begin
        if P <> a.Root then
          begin
            if (a.HijoIzquierdo(P) <> Nulo) or (a.HijoDerecho(P) <> Nulo) then
              l.Agregar(a.Recuperar(P));
          end;
        buscar(a.HijoIzquierdo(P));
        buscar(a.HijoDerecho(P));
      end;
  end;
begin
  l.Crear(a.DatoDeLaClave,a.SizeTree);
  buscar(a.Root);
  result:= l;
end;

//Determina si todas las hojas estan en el mismo nivel
function hojasEnElMismoNivel(var a:arbol):boolean;
var
  x: tipoelemento;
  flag: boolean;
  l: lista;
  Q: posicionlista;
  P: posicionarbol;
  nivel: integer;
begin
  flag:= true;
  l.Crear(a.DatoDeLaClave,a.SizeTree);
  l:= buscarHojas(a);
  //Guardo el primer elemento de la lista
  Q:= l.Comienzo;
  x:= l.Recuperar(Q);
  //Busco la posicion del elemento en el arbol
  P:= a.BuscarPreOrden(x);
  //Calculo el nivel para luego compararlo con el resto de la lista que contiene los nodos hoja
  nivel:= a.Nivel(P);
  Q:= l.Siguiente(Q);
  while Q <> Nulo do
    begin
      x:= l.Recuperar(Q);
      P:= a.BuscarPreOrden(x);
      if (nivel <> a.Nivel(P)) then
        flag:= false;
      Q:= l.Siguiente(Q);
    end;
  result:= flag;
end;

{-----------------------GUI-----------------------}

//Carga el arbol
procedure TForm1.bCargarClick(Sender: TObject);
begin
  a.Crear(cadena,10);
  a.CargarArbol;
  mGUi.Lines.Add(a.PreOrden);
  mGUI.Lines.Add(char(13) + char(10));
end;

procedure TForm1.bHojasClick(Sender: TObject);
begin
  mGUI.lines.Add('Hojas del arbol');
  mGUI.Lines.Add(buscarHojas(a).RetornarClaves);
  mGUI.Lines.Add(char(13) + char(10));
end;

procedure TForm1.bNivelClick(Sender: TObject);
begin
  if (hojasEnElMismoNivel(a) = true) then
    mGUI.Lines.Add('Todas las hojas estan al mismo nivel')
  else
    mGUI.Lines.Add('Las hojas no estan al mismo nivel');
end;

procedure TForm1.bNodosInternosClick(Sender: TObject);
begin
  mGUI.lines.Add('Nodos internos del arbol');
  mGUI.Lines.Add(nodosInternos(a).RetornarClaves);
  mGUI.Lines.Add(char(13) + char(10));
end;

end.
