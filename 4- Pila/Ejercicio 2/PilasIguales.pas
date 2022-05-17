unit PilasIguales;

interface
uses
Tipos,StackArray;
 type
 pilas=object
  private
    p1:pila;
    p2:pila;
   public
    function ConvPila(texto1,texto2:string):pila;
    function verifico():boolean;
 end;

implementation
function pilas.ConvPila(texto1,texto2:string):pila;
var
s:string;
I,largo:integer;
elementos:TipoElemento;
begin
  p1.Crear(Cadena,10);
  for I := 1 to length(texto1) do
    begin
    if (copy(texto1,I,1)<>'-') and (copy(texto1,I,1)<>' ') then
      begin
        elementos.clave:=copy(texto1,I,1);
        P1.apilar(elementos);
      end;
    end;
  p2.Crear(Cadena,10);
  for I := 1 to length(texto2) do
    begin
    if (copy(texto2,I,1)<>'-') and (copy(texto2,I,1)<>' ') then
      begin
        elementos.clave:=copy(texto2,I,1);
        P2.apilar(elementos);
      end;
    end;
end;

function pilas.verifico():boolean;
var
pAux:pila;
elem1,elem2:TipoElemento;
bandera:boolean;
begin
  pAux.crear(Cadena,10);
  bandera:=True;
  while (not p1.EsVacia) and (elem1.Clave=elem2.Clave) do
    begin
      elem1:=P1.Recuperar;
      elem2:=P2.Recuperar;
      P1.DesApilar;
      P2.DesApilar;
      if elem1.Clave=elem2.Clave then
        pAux.apilar(elem1);
    end;
  if (elem1.Clave=elem2.Clave) then  //salio del while porque es vacia
    begin
      while (not pAux.EsVacia) do
      begin
        P1.apilar(Paux.recuperar);
        P2.apilar(Paux.recuperar);
        Paux.DesApilar;
      end;
    end
  else  //salio del while porque elementos son distintos
    begin
      bandera:=False;
      P1.apilar(elem1);
      P2.apilar(elem2);
      while (not pAux.EsVacia) do
      begin
        P1.apilar(Paux.recuperar);
        P2.apilar(Paux.recuperar);
        Paux.DesApilar;
      end;
    end;
  verifico:=bandera;
end;

end.
