unit uColas;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Tipos, QueuesArrayNCMejorada;

const
  MAX = 10;

type
  colas_clientes = object
  private
    cola1, cola2, cola3: cola;
  public
    procedure crearColas();
    function c1String():string;
    function c2String():string;
    function c3String():string;
    function atenderClientes(t: integer):cola;
  end;

implementation


function colas_clientes.atenderClientes(t: integer): Cola;
var
  x1, x2, x3: tipoelemento;
  caux1, caux2, caux3, colaResultado: cola;
  cont1, cont2, cont3: integer;
begin
  caux1.Crear(Numero,MAX);
  caux2.Crear(Numero,MAX);
  caux3.Crear(Numero,MAX);
  colaResultado.Crear(Cadena,MAX);
  x1:= cola1.Recuperar;
  x2:= cola2.Recuperar;
  x3:= cola3.Recuperar;
  caux1.Encolar(x1);
  caux2.Encolar(x2);
  caux3.Encolar(x3);
  cont1:= 1;
  cont2:= 1;
  cont3:= 1;
  while (not cola1.EsVacia) or (not cola2.EsVacia) or (not cola3.EsVacia) do
    begin
      //proceso cola 1
      if not cola1.EsVacia then
        begin
          x1.Clave:= x1.Clave - t;
          if x1.Clave <= 0 then
            begin
              x1.Clave:= 'Cliente ' + cont1.ToString + ', Cola 1';
              colaResultado.Encolar(x1);
              cola1.DesEncolar;
              x1:= cola1.Recuperar;
              caux1.Encolar(x1);
              inc(cont1);
            end;
        end;
      //proceso cola 2
      if not cola2.EsVacia then
        begin
          x2.Clave:= x2.Clave - t;
          if (x2.Clave <= 0) then
            begin
              x2.Clave:= 'Cliente ' + cont2.ToString + ', Cola 2';
              colaResultado.Encolar(x2);
              cola2.DesEncolar;
              x2:= cola2.Recuperar;
              caux2.Encolar(x2);
              inc(cont2);
            end;
        end;
      //proceso cola 3
      if not cola3.EsVacia then
        begin
          x3.Clave:= x3.Clave - t;
          if (x3.Clave <= 0) then
            begin
              x3.Clave:= 'Cliente ' + cont3.ToString + ', Cola 3';
              colaResultado.Encolar(x3);
              cola3.DesEncolar;
              x3:= cola3.Recuperar;
              caux3.Encolar(x3);
              inc(cont3);
            end;
        end;
    end;
  cola1.InterCambiar(caux1,false);
  cola2.InterCambiar(caux2,false);
  cola3.InterCambiar(caux3,false);
  result:= colaResultado;
end;

procedure colas_clientes.crearColas;
var
  x: tipoelemento;
begin
  //Cola 1
  cola1.Crear(Numero,MAX);
  x.Clave:= 40;
  cola1.Encolar(x);
  x.Clave:= 20;
  cola1.Encolar(x);
  x.Clave:= 30;
  cola1.Encolar(x);

  //Cola 2
  cola2.Crear(Numero,MAX);
  x.Clave:= 20;
  cola2.Encolar(x);
  x.Clave:= 10;
  cola2.Encolar(x);

  //Cola3
  cola3.Crear(Numero,MAX);
  x.Clave:= 10;
  cola3.Encolar(x);
  x.Clave:= 10;
  cola3.Encolar(x);
  x.Clave:= 10;
  cola3.Encolar(x);
end;

//devuelve la cola 1 como string
function colas_clientes.c1String():string;
begin
  result:= cola1.RetornarClaves;
end;

//devuelve la cola 2 como string
function colas_clientes.c2String():string;
begin
  result:= cola2.RetornarClaves;
end;

//devuelve la cola 3 como string
function colas_clientes.c3String():string;
begin
  result:= cola3.RetornarClaves;
end;

end.


