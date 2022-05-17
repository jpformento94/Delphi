unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Tipos, QueuesArrayNCMejorada, StackArray;

Const
  MAX = 20;

type
  TForm1 = class(TForm)
    bCrear1: TButton;
    bCrear2: TButton;
    mCola1: TMemo;
    mCola2: TMemo;
    bConcatenar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    bBuscar: TButton;
    bInsertar: TButton;
    Label4: TLabel;
    Label5: TLabel;
    eNumero: TEdit;
    ePosicion: TEdit;
    bEliminar: TButton;
    bCantidad: TButton;
    Label3: TLabel;
    mInvertida: TMemo;
    bInvertida: TButton;
    procedure bCrear1Click(Sender: TObject);
    procedure bCrear2Click(Sender: TObject);
    procedure bConcatenarClick(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure bInsertarClick(Sender: TObject);
    procedure bEliminarClick(Sender: TObject);
    procedure bCantidadClick(Sender: TObject);
    procedure bInvertidaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  cola1, cola2: cola;

implementation

{$R *.dfm}

{----------------------------Procedimientos y resoluciones-----------------------}

//Concatena dentro de la Cola1 la Cola2
procedure concatenarColas(var cola1, cola2: cola);
var
  x: tipoelemento;
begin
  while not cola2.EsVacia do begin
    x:= cola2.Recuperar;
    cola2.DesEncolar;
    cola1.Encolar(x);
  end;
end;

//Busca en la Cola1 un numero entero pasado como parametro
function buscarElemento(var cola1:cola; n:integer):boolean;
var
  x: tipoelemento;
  flag: boolean;
  cAux: cola;
begin
  cAux.Crear(Numero, MAX);
  flag:= false;
  while not cola1.EsVacia do begin
    x:= cola1.Recuperar;
    if (x.Clave = n) then
      flag:= true;
    cAux.Encolar(x);
    cola1.DesEncolar;
  end;
  cola1.InterCambiar(cAux, false);
  result:= flag;
end;

//Inserta un numero en una posicion dada
function insertarElemento(var cola1:cola; n,p:integer):boolean;
var
  x: tipoelemento;
  cAux: cola;
  c: integer; //Contador
  flag: boolean;
begin
  if (cola1.EsLlena) then
    result:= false
  else
    begin
      cAux.Crear(Numero,MAX);
      c:= 1;
      flag:= false;
      while not cola1.EsVacia do begin
        if (c = p) then begin
          x.Clave:= n;
          cAux.Encolar(x);
          flag:= true;
        end
        else begin
          x:= cola1.Recuperar;
          cAux.Encolar(x);
          cola1.DesEncolar;
        end;
        inc(c);
      end;

      if not flag then begin     //si pasaron una posicion donde no hay elementos
        x.Clave:= n;             //lo agrego al final de la lista
        cAux.Encolar(x);
      end;
      end;
    cola1.InterCambiar(cAux, true);
    result:= true;
end;

//Elimina un elemento y todas sus repeticiones
function eliminarElemento(var cola1:cola;n:integer):boolean;
var
  cAux: cola;
  x: tipoelemento;
  flag: boolean;
begin
  cAux.Crear(Numero,MAX);
  flag:= false;
  while not cola1.EsVacia do begin
    x:= cola1.Recuperar;
    if (x.Clave = n) then begin
      cola1.DesEncolar;
      flag:= true;
    end
    else begin
      cAux.Encolar(x);
      cola1.DesEncolar;
    end;
  end;
  cola1.InterCambiar(cAux,false);
  result:= flag;
end;

//Cuenta la cantidad de elementos de una cola
function contarElementos(var cola1:cola):integer;
var
  x:tipoelemento;
  cAux:cola;
  c: integer;   //contador
begin
  cAux.Crear(Numero,MAX);
  c:= 0;
  while not cola1.EsVacia do begin
    x:= cola1.Recuperar;
    cAux.Encolar(x);
    cola1.DesEncolar;
    inc(c);
  end;
  cola1.InterCambiar(cAux,false);
  result:= c;
end;

//Invierte una cola pasandola primero a una pila y luego a la cola
function invertirCola(var cola1:cola):cola;
var
  x: tipoelemento;
  cAux: cola;
  pAux: pila;
begin
  cAux.Crear(Numero,MAX);
  pAux.Crear(Numero,MAX);
  while not cola1.EsVacia do begin
    x:= cola1.Recuperar;
    cAux.Encolar(x);
    pAux.Apilar(x);
    cola1.DesEncolar;
  end;
  cola1.InterCambiar(cAux,false);
  while not pAux.EsVacia do begin
    x:= pAux.Recuperar;
    cAux.Encolar(x);
    pAux.DesApilar;
  end;
  result:= cAux;
end;

{------------------------GUI-----------------------}

procedure TForm1.bBuscarClick(Sender: TObject);
var
  n: integer;
begin
  n:= StrToInt(InputBox('Buscar numero','Ingrese entero','4'));
  if (buscarElemento(cola1,n)) then
    ShowMessage('El elemento esta en la cola')
  else
    ShowMessage('El elemento no esta en la cola');
end;

procedure TForm1.bCantidadClick(Sender: TObject);
var
  s: string;
begin
  s:= contarElementos(cola1).ToString;
  ShowMessage('Hay ' + s + ' elementos');
end;

procedure TForm1.bConcatenarClick(Sender: TObject);
begin
  mCola1.Clear;
  mCola2.Clear;
  concatenarColas(cola1,cola2);
  mCola1.Lines.Add(cola1.RetornarClaves);
  mCola2.Lines.Add(cola2.RetornarClaves);
end;

procedure TForm1.bCrear1Click(Sender: TObject);
var
  i: integer;
  x: tipoelemento;
begin
  randomize;
  mCola1.Clear;
  cola1.Crear(Numero, MAX);
  for i := 1 to 5 do  begin
    x.Clave:= Random(11);
    cola1.Encolar(x);
  end;
  mCola1.Lines.Add(cola1.RetornarClaves);
end;

procedure TForm1.bCrear2Click(Sender: TObject);
begin
  mCola2.Clear;
  cola2.LLenarClavesRandom(5,0,10);
  mCola2.Lines.Add(cola2.RetornarClaves);
end;

procedure TForm1.bEliminarClick(Sender: TObject);
var
  n: integer;
begin
  n:= StrToInt(InputBox('Eliminar numero','Ingrese entero','4'));
  if (not eliminarElemento(cola1,n)) then
    ShowMessage('El numero no se encuentra en la cola')
  else begin
    mCola1.Clear;
    mCola1.Lines.Add(cola1.RetornarClaves);
  end;
end;

procedure TForm1.bInsertarClick(Sender: TObject);
var
  n, p: integer;
begin
  n:= StrToInt(eNumero.Text);
  p:= StrToInt(ePosicion.Text);
  if (p<0) or (p>MAX) then
    ShowMessage('Ingrese una posicion valida para ingresar el elemento')
  else begin
    if (not insertarElemento(cola1,n,p)) then
      ShowMessage('La cola esta llena no se pueden insertar mas elementos')
    else begin
      mCola1.Clear;
      mCola1.Lines.Add(cola1.RetornarClaves);
    end;
  end;
end;

procedure TForm1.bInvertidaClick(Sender: TObject);
begin
  mInvertida.Clear;
  mInvertida.Lines.Add(invertirCola(cola1).RetornarClaves);
end;

end.
