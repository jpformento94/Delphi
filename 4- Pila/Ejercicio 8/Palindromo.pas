unit Palindromo;

interface
uses
Tipos,StackArray;
type
  PilaPalin=object
    private
    texto:pila;
    public
    function VerifPalindromo():boolean;
    function CrearPila(t:string):pila;
    function mostrar():string;
  end;



implementation
function PilaPalin.CrearPila(t:string):pila;
var
  I: Integer;
  elemento:TipoElemento;
begin
  texto.Crear(Cadena,length(t)+1);
  for I :=  1 to length(t) do
  begin
    elemento.clave:=copy(t,I,1);
    texto.Apilar(elemento);
  end;
end;

function PilaPalin.VerifPalindromo():boolean;
var
p1,p2:pila;
elem1,elem2:TipoElemento;
bandera:boolean;
begin
  bandera:=True;
  p1.Crear(cadena,texto.SizeStack);
  p2.Crear(cadena,texto.SizeStack);
  while not texto.EsVacia do
  begin
    p1.Apilar(texto.Recuperar());
    p2.Apilar(texto.Recuperar());
    texto.desapilar();
  end;
  texto.InterCambiar(p2,True);
  //p1 tiene pila invertida, texto tiene pila original
  while not texto.EsVacia do
  begin
    elem1:=p1.Recuperar();
    elem2:=texto.Recuperar();
    p2.Apilar(elem2);//pila invertida
    if (elem1.clave<>elem2.clave) then
      bandera:=False;
    texto.desapilar();
    p1.desapilar();
  end;
  texto.InterCambiar(p2,True);//paso pila p2(invertida) a texto
  VerifPalindromo:=bandera;
end;
function PilaPalin.mostrar():string;
begin
   mostrar:=texto.RetornarClaves();
end;
end.
