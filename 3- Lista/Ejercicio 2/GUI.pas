unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Tipos, ListArray;

const
  MAX = 4;

type
  TForm1 = class(TForm)
    lL1: TLabel;
    mLista1: TMemo;
    lL2: TLabel;
    mLista2: TMemo;
    bCrear: TButton;
    bMultiplo: TButton;
    mResultado: TMemo;
    procedure bCrearClick(Sender: TObject);
    procedure bMultiploClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  l1, l2: lista;

implementation

{$R *.dfm}

{-------------------------Procedimientos de listas-------------------------}

{Devuelve verdadero o falso si una lista es divisible por otra, posicion a posicion}
function divisible(l1, l2:lista):boolean;
 var
  p: posicionlista;
  x1, x2:tipoelemento;
  flag: boolean;
begin
  x1.TipoElementoVacio;
  x2.TipoElementoVacio;
  p:= l1.Comienzo;
  flag:= true;
  while (p <> Nulo) and (flag = true) do begin
    x1.Clave:= l1.Recuperar(p).Clave;
    x2.Clave:= l2.Recuperar(p).Clave;
    if ((x2.Clave mod x1.Clave) <> 0) then
      flag:= false;
    p:= l1.Siguiente(p);
  end;
  result:= flag;
end;

//Encuentra si una lista es multiplo de otra por un escalar
function multipoEscalar (l1,l2:lista):integer;
 var
  p: posicionlista;
  x1, x2:tipoelemento;
  mult: integer;
  flag: boolean;
begin
  x1.TipoElementoVacio;
  x2.TipoElementoVacio;
  p:= l1.Comienzo;
  x1.Clave:= l1.Recuperar(p).Clave;
  x2.Clave:= l2.Recuperar(p).Clave;
  mult:= x2.Clave / x1.Clave;
  p:= l1.Siguiente(p);
  flag:= true;
  while (p <> Nulo) and (flag = true) do begin
    x1.Clave:= l1.Recuperar(p).Clave;
    x2.Clave:= l2.Recuperar(p).Clave;
    if ((x2.Clave / x1.Clave) <> mult) then begin
      flag:= false;
      mult:= 0;
    end;
    p:= l1.Siguiente(p);
  end;
  result:= mult;
end;

{-------------------------Procedimientos de la GUI-------------------------}

procedure TForm1.bCrearClick(Sender: TObject);
var
  x: tipoelemento;
  i: Integer;
begin
  //lista 1 hardcodeada
  l1.Crear(Numero,MAX);
  x.Clave:= 2;
  l1.Agregar(x);
  x.Clave:= 3;
  l1.Agregar(x);
  x.Clave:= 128;
  l1.Agregar(x);
  x.Clave:= 64;
  l1.Agregar(x);
  //lista 2 hardcodeada
  l2.Crear(Numero,MAX);
  x.Clave:= 256;
  l2.Agregar(x);
  x.Clave:= 384;
  l2.Agregar(x);
  x.Clave:= 16384;
  l2.Agregar(x);
  x.Clave:= 8192;
  l2.Agregar(x);
  mLista1.Clear;
  mLista2.Clear;
  mLista1.Lines.Add(l1.RetornarClaves);
  mLista2.Lines.Add(l2.RetornarClaves);
end;

procedure TForm1.bMultiploClick(Sender: TObject);
var
  bandera: boolean;
  n: integer;
begin
  mResultado.Clear;
  bandera:= divisible(l1,l2);
  if bandera = true then begin
    mResultado.Lines.Add('La lista 1 es multiplo posicion a posicion de la lista 2');
    n:= multipoEscalar (l1,l2);
    if (n = 0) then
      mResultado.Lines.Add('No es multiplo por ningun escalar')
    else
      mResultado.Lines.Add('(Lista 1) * (' + inttostr(n) + ') = Lista 2');
  end
  else
    mResultado.Lines.Add('La lista 1 no es multiplo de la lista 2')
end;

end.
