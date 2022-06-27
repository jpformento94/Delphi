unit Predictivo;

interface
uses
SysUtils,Tipos,TAD_27ario;
type
Diccionario=object
  private
    a:arbol;
    hola:array [1..6] of char;
    igual:array [1..6] of char;
  public
    procedure cargarPalabras();
    procedure CrearDiccionario();
    function Mostrar():string;
end;

implementation

procedure Diccionario.cargarPalabras();
begin
  Hola[1]:='-';
  Hola[2]:='h';
  Hola[3]:='o';
  Hola[4]:='l';
  Hola[5]:='a';
  Hola[6]:='.';

  igual[1]:='i';
  igual[2]:='g';
  igual[3]:='u';
  igual[4]:='a';
  igual[5]:='l';
  igual[6]:='.';
end;
procedure Diccionario.CrearDiccionario();
begin
  cargarPalabras();
  a.CargarArbol(hola);
  //a.CargarArbol(igual);

end;
function Diccionario.Mostrar():string;
begin
  Mostrar:=a.PreOrden();
end;
end.
