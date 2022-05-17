unit InvertirPila;

interface
uses
StackArray,Tipos;
type
  pilaOb=object
  private
    p:pila;
    pInvertida:pila;
  public
    function ConvPila(texto:string):pila;
    function InvPila():pila;
    function mostrar():string;
    function mostrarInv():string;
  end;

implementation
function pilaOb.ConvPila(texto:string):pila;
var
I:integer;
elementos:TipoElemento;
begin
  p.Crear(Cadena,10);
  for I := 1 to length(texto) do
    begin
    if (copy(texto,I,1)<>'-') and (copy(texto,I,1)<>' ') then
      begin
        elementos.clave:=copy(texto,I,1);
        P.apilar(elementos);
      end;
    end;
end;
function pilaOb.InvPila():pila;
var
PAux:pila;
elemento:TipoElemento;
begin
  PAux.Crear(Cadena,10);
  pInvertida.Crear(Cadena,10);
  While Not P.EsVacia() Do
  Begin
    elemento := P.Recuperar();
    PAux.apilar(elemento);//pAux tiene pila invertida
    pInvertida.apilar(elemento);//pInvertida tiene pila invertida
    P.DesApilar;
  End;
  P.InterCambiar(PAux,True);//P tiene pila original
  InvPila:=pInvertida;
end;

function pilaOb.mostrar():string;
begin
   mostrar:=p.RetornarClaves();
end;

function pilaOb.mostrarInv():string;
begin
   mostrarInv:=pInvertida.RetornarClaves();
end;
end.
