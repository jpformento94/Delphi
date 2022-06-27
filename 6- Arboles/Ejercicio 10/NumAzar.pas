unit NumAzar;

interface
uses
ArbolesBinariosAVL,ArbolesBinariosBusqueda,tipos,SysUtils ;
type
arboles=object
  private
  a:ArbolAVL;
  a2:ArbolBB;
  public
  function cargar():string;
end;

implementation
function arboles.cargar():string;
var te:TipoElemento;
cant,i:integer;
begin
  randomize();
  cant:=1;
  a.crear(numero,10);
  a2.crear(numero,10);
  while cant<=7 do
    begin
    te.clave:=random(10);
    a.insertar(te);
    a2.insertar(te);
    inc(cant);
    end;
  i:=a.Altura;
  cargar:='Arbol AVL :'+a.PreOrden()+slinebreak+'Altura:'+i.ToString+slinebreak+'Arbol BB:'+a2.preorden()+slinebreak+'Altura:'+a2.Altura.ToString;
end;    //La altula del arbol AVL siempre va a ser menor o igual que el arbol BB
end.
