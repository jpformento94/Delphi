unit TAD;

interface
uses
arbolesBinarios,arbolesBinariosAVL,tipos,System.SysUtils;
type
  arboles=object
  private
    ab:Arbol;
    aAVL:ArbolAVL;
  public
    procedure cargarBinario();
    procedure convertir();
    function mostrarAVL():string;
    function mostrarB():string;
  end;

implementation

procedure Arboles.cargarBinario();
begin
  ab.Crear(numero,10);
  aAVL.Crear(numero,10);
  ab.CargarArbol;
end;


procedure Arboles.convertir();
var
  p:PosicionArbol;


function RECURSIVAconvertir(p:PosicionArbol):boolean;
VAR x:tipoelemento;
begin
  if not (ab.RamaNula(p)) then
  begin
    x:=ab.Recuperar(p);
    aAVL.Insertar(x);
    Recursivaconvertir(ab.HijoIzquierdo(p));
    Recursivaconvertir(ab.HijoDerecho(p));
  end
  else
   Recursivaconvertir:=true;
end;

begin
  p:=ab.Root;
  RecursivaConvertir(p);
end;

function Arboles.mostrarAVL():string;
begin
  mostrarAVL:='Arbol AVL'+aAVL.PreOrden;
end;
function Arboles.mostrarB():string;
begin
  mostrarB:='Arbol B'+aB.PreOrden;
end;

end.
