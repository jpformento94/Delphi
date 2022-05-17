unit uColas;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Tipos, QueuesArrayNCMejorada;

const
  MAX = 10;

type
  framework_colas = object
  private
    cola1, cola2: cola;
  public
    procedure crearColas();
    function c1String():string;
    function c2String():string;
    function agregarCola1(x:tipoelemento):string;
    function agregarCola2(x:tipoelemento):string;
    function compararColas():boolean;
  end;

implementation

function framework_colas.compararColas(): boolean;
var
  x1, x2: tipoelemento;
  caux1, caux2: cola;
  flag, iguales: boolean;
begin
  caux1.Crear(Cadena,MAX);
  caux2.Crear(Cadena,MAX);
  iguales:= true;
  //recorro comparando la cola 1 con la cola 2
  while not cola1.EsVacia do
    begin
      x1:= cola1.Recuperar;
      caux1.Encolar(x1);
      cola1.DesEncolar;
      flag:= false;
      while not cola2.EsVacia do
        begin
          x2:= cola2.Recuperar;
          caux2.Encolar(x2);
          cola2.DesEncolar;
          if (x1.Clave = x2.Clave) then
          flag:= true;
        end;
      if not flag then
        iguales:= false;
      cola2.InterCambiar(caux2,false);
    end;
  cola1.InterCambiar(caux1,false);

  //si la cola 1 es igual a la cola 2, ahora busco que todos los elementos de la 2 esten en la 1
  if iguales then
    begin
      while not cola2.EsVacia do
        begin
          x2:= cola2.Recuperar;
          caux2.Encolar(x2);
          cola2.DesEncolar;
          flag:= false;
          while not cola1.EsVacia do
            begin
              x1:= cola1.Recuperar;
              caux1.Encolar(x1);
              cola1.DesEncolar;
              if x2.clave = x1.clave then
                flag:= true;
            end;
          if not flag then
            iguales:= false;
          cola1.InterCambiar(caux1,false);
        end;
      cola2.InterCambiar(caux2,false);
      result:= iguales;
    end
  else
    result:= false;
end;

procedure framework_colas.crearColas;
begin
  cola1.Crear(Cadena,MAX);
  cola2.Crear(Cadena,MAX);
end;

function framework_colas.agregarCola1(x:tipoelemento):string;
begin
  if cola1.EsLlena then
    result:= 'error'
  else
    begin
      cola1.Encolar(x);
      result:= 'encolado';
    end;
end;

function framework_colas.agregarCola2(x:tipoelemento):string;
begin
  if cola2.EsLlena then
    result:= 'error'
  else
    begin
      cola2.Encolar(x);
      result:= 'encolado';
    end;
end;

//devuelve la cola 1 como string
function framework_colas.c1String():string;
begin
  result:= cola1.RetornarClaves;
end;

//devuelve la cola 2 como string
function framework_colas.c2String():string;
begin
  result:= cola2.RetornarClaves;
end;

end.

