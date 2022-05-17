unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Tipos, ListArray;

const
  MIN = 1;
  MAX = 10;

type
  TForm1 = class(TForm)
    bCrear: TButton;
    mLista: TMemo;
    bInvertida: TButton;
    bMenor: TButton;
    bMayor: TButton;
    mInvertida: TMemo;
    mFunciones: TMemo;
    bPromedio: TButton;
    bMultiplos: TButton;
    mMultiplos: TMemo;
    bSinRepetir: TButton;
    mSinRepetir: TMemo;
    bSuperBoton: TButton;
    bReflejar: TButton;
    mReflejo: TMemo;
    rReflejar: TRadioButton;
    rEspejar: TRadioButton;
    procedure bCrearClick(Sender: TObject);
    procedure bInvertidaClick(Sender: TObject);
    procedure bMenorClick(Sender: TObject);
    procedure bMayorClick(Sender: TObject);
    procedure bPromedioClick(Sender: TObject);
    procedure bMultiplosClick(Sender: TObject);
    procedure bSuperBotonClick(Sender: TObject);
    procedure bSinRepetirClick(Sender: TObject);
    procedure bReflejarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  arreglo= array[MIN..MAX] of integer;

var
  Form1: TForm1;
  l, lSinRepe: lista;

implementation

{$R *.dfm}

//Devuelve la lista desde el ultimo hasta el primer elemento
function mostrarInvertida(l:lista):string;
var
  p: posicionlista;
  x: tipoelemento;
  s: string;
begin
  s:= '';
  p:= l.Fin;
  while p<>Nulo do  begin
    x:= l.Recuperar(p);
    s:= s + x.ArmarString + char(13) + char(10);
    p:= l.Anterior(p);
  end;
  result:= s;
end;

//Menor elemento y posicion
function menorElemento(l:lista):string;
var
  menor: tipoelemento;
  p, paux: posicionlista;
begin
  menor.TipoElementoVacio;
  p:= l.Comienzo;
  menor.Clave:= l.Recuperar(p).Clave;
  paux:= p;
  p:= l.Siguiente(p);
  while p<>Nulo do begin
    if  (l.Recuperar(p).Clave < menor.Clave) then begin
      menor.Clave:= l.Recuperar(p).Clave;
      paux:= p;
    end;
    p:= l.Siguiente(p);
  end;
  result:= 'El menor elemento es ' + menor.ArmarString ;
end;

//Mayor elemento y repeticiones
function mayorElemento(l:lista):string;
var
  mayor: tipoelemento;
  p: posicionlista;
  repeticiones: integer;
begin
  mayor.TipoElementoVacio;
  p:= l.Comienzo;
  mayor.Clave:= l.Recuperar(p).Clave;
  repeticiones:= 1;
  p:= l.Siguiente(p);
  while p<>Nulo do begin
    if (l.Recuperar(p).Clave > mayor.Clave) then  begin
      mayor.Clave:= l.Recuperar(p).Clave;
      repeticiones:= 1;
    end
    else  begin
      if (l.Recuperar(p).Clave = mayor.Clave) then
        inc(repeticiones);
    end;

    p:= l.Siguiente(p);
  end;
  result:= 'El mayor elementos es ' + mayor.ArmarString + 'y aparece ' + inttostr(repeticiones) + ' veces.';
end;

//Promedio de los valores de la lista
function promedio(l:lista):double;
var
  acumulador: integer;
  p: posicionlista;
begin
  acumulador:= 0;
  p:= l.Comienzo;
  while p<>Nulo do begin
    acumulador:= acumulador + l.Recuperar(p).Clave;
    p:= l.Siguiente(p);
  end;
  result:=  acumulador / l.CantidadElementos;
end;

function listaMultiplos(n:integer):lista;
var
  x: tipoelemento;
  lAux: lista;
  p: posicionlista;
begin
  lAux.Crear(Numero,l.CantidadElementos);
  p:= l.Comienzo;
  while p<>Nulo do  begin
    x:= l.Recuperar(p);
    x.Clave:= x.Clave * n;
    lAux.Agregar(x);
    p:= l.Siguiente(p);
  end;
  result:= lAux;
end;

//Crea una lista con valores sin repetir
function listaSinRepeticiones(var lista:lista):lista;
var
  v: arreglo;
  i: Integer;
  x: tipoelemento;
  p:posicionlista;
  flag: boolean;
begin
  randomize();
  for i := MIN to MAX do
    v[i]:= i;
  lista.Crear(Numero,MAX);
  while (lista.EsLLena = false) do  begin
    i:= random(MAX)+1;
    if (v[i]<>0) then begin
      x.Clave:= v[i];
      lista.Agregar(x);
      v[i]:= 0;
    end;
  end;
  result:= lista;
end;

function reflejarEspejar(l:lista;flag:boolean):lista;
var
  p: posicionlista;
  x: tipoelemento;
  lAux: lista;
begin
  if flag = false then  begin
    lAux.Crear(Numero,(MAX*2)-1);
    p:= l.Comienzo;
    while p<>Nulo do begin
      x.Clave:= l.Recuperar(p).Clave;
      lAux.Agregar(x);
      p:= l.Siguiente(p);
    end;
    p:= l.Fin;
    p:= l.Anterior(p);
    while p<>Nulo do begin
      x.Clave:= l.Recuperar(p).Clave;
      lAux.Agregar(x);
      p:= l.Anterior(p);
    end
  end
  else  begin
    lAux.Crear(Numero,MAX*2);
    p:= l.Comienzo;
    while p<>Nulo do begin
      x.Clave:= l.Recuperar(p).Clave;
      lAux.Agregar(x);
      p:= l.Siguiente(p);
    end;
    p:= l.Fin;
    while p<>Nulo do begin
      x.Clave:= l.Recuperar(p).Clave;
      lAux.Agregar(x);
      p:= l.Anterior(p);
    end;
  end;
  result:= lAux;
end;

{-------------------Procedimientos de la GUI-------------------}

procedure TForm1.bCrearClick(Sender: TObject);
begin
  mLista.Clear;
  mInvertida.Clear;
  mMultiplos.Clear;
  mFunciones.Clear;
  mReflejo.Clear;
  l.LlenarClavesRandom(MAX,0,10);
  mLista.Lines.Add('Lista');
  mLista.Lines.Add(l.RetornarClaves);
  bInvertida.Enabled:= true;
  bMenor.Enabled:= true;
  bMayor.Enabled:= true;
  bPromedio.Enabled:= true;
  bMultiplos.Enabled:= true;
  bReflejar.Enabled:= true;
end;

procedure TForm1.bInvertidaClick(Sender: TObject);
begin
  mInvertida.Lines.Add('Lista invertida');
  mInvertida.Lines.Add(mostrarInvertida(l));
end;

procedure TForm1.bMayorClick(Sender: TObject);
begin
  mFunciones.Lines.Add(mayorElemento(l));
end;

procedure TForm1.bMenorClick(Sender: TObject);
begin
  mFunciones.Lines.Add(menorElemento(l));
end;

procedure TForm1.bMultiplosClick(Sender: TObject);
var
  n:integer;
begin
  n:= strtoint(InputBox('Lista de multiplos','Ingrese un multiplicador entero','10'));
  mMultiplos.Lines.Add('Lista de multiplos');
  mMultiplos.Lines.Add(listaMultiplos(n).RetornarClaves);
end;

procedure TForm1.bPromedioClick(Sender: TObject);
begin
  mFunciones.Lines.Add('El promedio es ' + promedio(l).toString);
end;

procedure TForm1.bReflejarClick(Sender: TObject);
var
  flag: boolean;
begin
  if (rReflejar.Checked = true) then begin
    flag:= true;
    mReflejo.Lines.Add('Lista reflejada');
    mReflejo.Lines.Add(reflejarEspejar(l,flag).RetornarClaves);
  end;
  if (rEspejar.Checked = true) then  begin
    flag:= false;
    mReflejo.Lines.Add('Lista espejada');
    mReflejo.Lines.Add(reflejarEspejar(l,flag).RetornarClaves);
  end;
  mReflejo.Lines.Add('');
end;

procedure TForm1.bSinRepetirClick(Sender: TObject);
begin
  mSinRepetir.Clear;
  mReflejo.Clear;
  mSinRepetir.Lines.Add('Lista sin repeticiones');
  mSinRepetir.Lines.Add(listaSinRepeticiones(l).RetornarClaves);
  bReflejar.Enabled:= true;
end;

procedure TForm1.bSuperBotonClick(Sender: TObject);
begin
  bCrear.Click;
  bInvertida.Click;
  bMenor.Click;
  bMayor.Click;
  bPromedio.Click;
  bMultiplos.Click;
  bSinRepetir.Click;
  bReflejar.Click;
end;

end.
