unit TAD;

interface
uses
ArbolesBinariosAVL,tipos,SysUtils ;
type
  arboles=object
    private
    a:ArbolB;
    a2:ArbolB+;
    a3:ArbolAVL;
    public
    function cargar(claves:integer):string;
  end;

implementation
function arboles.cargar(claves:integer):string;
var te:TipoElemento;
cant,i:integer;
begin
  randomize();
  cant:=1;
  a.crear(numero,claves);
  a2.crear(numero,claves);
  a3.crear(numero,claves);
  while cant<=7 do
    begin
    te.clave:=random(10);
    a.insertar(te);
    a2.insertar(te);
    a3.insertar(te);
    inc(cant);
    end;
  i:=a.Altura;
  cargar:='Arbol AVL :'+a.PreOrden()+slinebreak+'Altura:'+i.ToString+slinebreak
          +'Arbol B:'+a2.preorden()+slinebreak+'Altura:'+a2.Altura.ToString
          +'Arbol B+:'+a3.preorden()+slinebreak+'Altura:'+a3.Altura.ToString;
end;    //La altula del arbol AVL siempre va a ser menor o igual que el arbol BB  NONONONONONNO

end.
