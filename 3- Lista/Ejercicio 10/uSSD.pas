unit uSSD;

interface

uses
  SysUtils, Tipos, ListArray;

const
  MAX = 20;

type
  ssd = object
    private
      lSSD: lista;
      lNumero1: lista;
      lNumero2: lista;
      numero1: string;
      numero2: string;
      procedure cargarListaSSD();
      function convertiraSSD(n:string):lista;
    public
      function retornarNumero1():string;
      function retornarNumero2():string;
      procedure cargarNumero(dato1, dato2:string);
      function sumar(n1, n2:string):string;
      function restar(n1, n2:string):string;
      function multiplicar(n1, n2:string):string;
      function dividir(n1, n2:string):string;
  end;

implementation


{Crea una lista con los parametros del ssd
en clave guarda el numero que va a buscar y en valor1 el valor en codigo ssd}
procedure ssd.cargarListaSSD();
var
  x: tipoelemento;
begin
  lSSD.Crear(Cadena,10);
  x.Clave:= '0';
  x.Valor1:= '1111110';{0}
  lSSD.Agregar(x);
  x.Clave:='1';
  x.valor1:= '0110000';{1}
  lSSD.Agregar(x);
  x.Clave:='2';
  x.valor1:= '1101101';{2}
  lSSD.Agregar(x);
  x.Clave:='3';
  x.valor1:= '1111001';{3}
  lSSD.Agregar(x);
  x.Clave:='4';
  x.valor1:= '0110011';{4}
  lSSD.Agregar(x);
  x.Clave:='5';
  x.valor1:= '1011011';{5}
  lSSD.Agregar(x);
  x.Clave:='6';
  x.valor1:= '1011111';{6}
  lSSD.Agregar(x);
  x.Clave:='7';
  x.valor1:= '1110000';{7}
  lSSD.Agregar(x);
  x.Clave:='8';
  x.valor1:= '1111111';{8}
  lSSD.Agregar(x);
  x.Clave:='9';
  x.valor1:= '1111011';{9}
  lSSD.Agregar(x);
end;

//Crea la lista SSD y guarda los numeros
procedure ssd.cargarNumero(dato1, dato2:string);
begin
  cargarListaSSD();
  numero1:= dato1;
  lNumero1.Crear(Cadena,MAX);
  lNumero1:= convertiraSSD(dato1);
  numero2:= dato2;
  lNumero2.Crear(Cadena,MAX);
  lNumero2:= convertiraSSD(dato2);
end;

//Convierte un numero a codigo ssd y lo devuelve en forma de lista
function ssd.convertiraSSD(n:string):lista;
var
  p: posicionlista;
  x: tipoelemento;
  i: integer;
  l: lista;
begin
  l.Crear(Cadena,MAX);
  for i := 1 to Length(n) do begin
    x.Clave:= copy(n,i,1);
    p:= lSSD.Buscar(x);
    x:= lSSD.Recuperar(p);
    l.Agregar(x);
  end;
  result:= l;
end;

//Suma
function ssd.sumar(n1, n2:string):string;
var
  suma: string;
  l: lista;
begin
  l.Crear(Cadena,MAX);
  suma:= (strtoint(n1) + strtoint(n2)).ToString;
  l:= convertiraSSD(suma);
  result:= l.RetornarClaves;
end;

//Resta
function ssd.restar(n1, n2:string):string;
var
  resta: string;
  l: lista;
begin
  l.Crear(Cadena,MAX);
  resta:= (strtoint(n1) - strtoint(n2)).ToString;
  l:= convertiraSSD(resta);
  if (resta.ToInteger<0) then
    result:= '-' + l.RetornarClaves
  else
    result:= l.RetornarClaves;
end;

//Multiplicacion
function ssd.multiplicar(n1, n2:string):string;
var
  multi: string;
  l: lista;
begin
  l.Crear(Cadena,MAX);
  multi:= (strtoint(n1) * strtoint(n2)).ToString;
  l:= convertiraSSD(multi);
  result:= l.RetornarClaves;
end;

//Dividir
function ssd.dividir(n1: string; n2: string): string;
var
  division, resto: string;
  l: lista;
begin
  l.Crear(Cadena,MAX);
  division:= (strtoint(n1) / strtoint(n2)).ToString;
  l:= convertiraSSD(division);
  result:= l.RetornarClaves;
end;

//Devuelve el numero 1 como arreglo de string
function ssd.retornarNumero1():string;
begin
  result:= lNumero1.RetornarClaves;
end;

//Devuelve el numero 2 como arreglo de string
function ssd.retornarNumero2():string;
begin
  result:= lNumero2.RetornarClaves;
end;

end.
