unit Divisor;

interface
uses
System.SysUtils,tipos,StackArray;
type
operacion=object
  private
  p:pila;
  public
  procedure CrearPila();
  function RecursivaBuscar(n1,n2,cont:integer):integer;
  function mostrar():string;
  function Multimo():string;
end;

implementation
procedure operacion.crearPila();
begin
  p.crear(Numero,10);
end;
//MIRAR VIDEO DE CLASE A PARTIR DE MINUTO 8


//esta funcion esta mal, busca MCD pero de otra forma
function operacion.RecursivaBuscar(n1,n2,cont:integer):integer;
var
res1,res2:integer;
añadir:TipoElemento;
begin
  inc(cont);
  if not((cont>n1) or (cont>n2)) then
  begin
    res1:=n1 mod cont;
    res2:=n2 mod cont;
    if (res1=0) and (res2=0) then
      begin
        añadir.clave:=cont;
        p.apilar(añadir);
      end;
    RecursivaBuscar:=RecursivaBuscar(n1,n2,cont);
  end
  else
    RecursivaBuscar:=cont-1;
end;

function operacion.mostrar():string;
begin
   mostrar:=P.RetornarClaves();
end;
function operacion.Multimo():string;
begin
   Multimo:=P.Recuperar().Clave;
end;
end.
