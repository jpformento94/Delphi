unit uColas;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Tipos, QueuesArrayNCMejorada,
    StackArray, ListArray;

const
  MAX = 10;

type
  framework_colas = object
  private
    p: pila;
    c: cola;
  public
    function pString():string;
    function cString():string;
    procedure crearPilaRandom();
    procedure crearColaRandom();
    function elementosComunes():lista;
  end;

implementation

function framework_colas.elementosComunes: Lista;
var
  x1, x2, s: tipoelemento;
  laux: lista;
  paux: pila;
  caux: cola;
  posPila, posCola: integer;   //variables para contar en que posicion estoy
begin
  laux.Crear(Cadena,MAX);
  paux.Crear(Numero,MAX);
  caux.Crear(Numero,MAX);
  posPila:= 1;
  posCola:= 1;
  while not p.EsVacia do    //recorro la pila
    begin
      x1:= p.Recuperar;
      paux.Apilar(x1);
      p.DesApilar;
      while not c.EsVacia do  //recorro la cola
        begin
          x2:= c.Recuperar;
          caux.Encolar(x2);
          c.DesEncolar;
          if (x1.Clave = x2.Clave) then
            begin
              s.Clave:= x1.ArmarString + ':' + posPila.ToString+ ':' + posCola.ToString;
              laux.Agregar(s);
            end;
          inc(posCola);
        end;
      posCola:= 1;
      inc(posPila);
      c.InterCambiar(caux,false);
    end;
    p.InterCambiar(paux,false);
    result:= laux;
end;

//crea una pila con numeros al azar
procedure framework_colas.crearPilaRandom;
begin
  p.LlenarClavesRandom(MAX,1,10);
end;

//crea una cola con numeros al azar
procedure framework_colas.crearColaRandom;
begin
  c.LLenarClavesRandom(MAX,1,10);
end;

//devuele la pila como string
function framework_colas.pString():string;
begin
  result:= p.RetornarClaves;
end;

//devuelve la cola como string
function framework_colas.cString():string;
begin
  result:= c.RetornarClaves;
end;

end.
