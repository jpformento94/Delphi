unit TADCampoMinado;

interface

uses
  Variants, SysUtils;

Const
  MinC = 1;
  MaxC = 10;
  MinF=1;
  MaxF=7;

Type
  campo=record
    fila:string;
    columna:string;
  end;
  campoPosicion=record
    fila:integer;
    columna:integer;
  end;


  DimensionC = MinC .. MaxC;
  DimensionF = MinF .. MaxF;
  vectorPosicion= array [1..20] of campo;

  Vector = Array [DimensionF, DimensionC] Of char;

  Matriz = Object
  Private
    Items: vector;
    PosicionExplorador:campoPosicion;
  Public
    Procedure cargar();
    Function GetItem(R, C: DimensionC): Char;
    function cadenaSegura():string;
  end;

var
  v: vector;

implementation

Function Matriz.GetItem(R, C: DimensionC): Char;
Begin
  GetItem := Items[R, C];
End;

procedure Matriz.cargar;
var
  i,j: integer;

begin
  PosicionExplorador.fila:=2;
  PosicionExplorador.columna:=2;
  for i := MinF to MaxF do
  begin
    for j := MinC to MaxC do
      Items[i,j]:= 'P';
  end;
  for J := 3 to 6 do
     Items[2,j]:='S';
  for J := 5 to 7 do
  Items[7,j]:='S';
  for I := 3 to 5 do
    Items[I,1]:='S';

  for I := 2 to 4 do
    Items[I,9]:='S';
  for I := 3 to 5 do
     Items[I,3]:='S';
  for I := 4 to 7 do
     Items[I,4]:='S';
  for I := 5 to 7 do
     Items[I,10]:='S';
  for J := 5 to 7 do
    Items[6,J]:='S';
  Items[2,8]:='S';
  Items[3,2]:='S';
  Items[3,8]:='S';
  Items[3,10]:='S';
  Items[5,2]:='S';
  Items[5,5]:='S';
  Items[5,7]:='S';
  Items[5,8]:='S';
  Items[6,9]:='S';
  Items[7,1]:='S';
  Items[7,2]:='S';
  Items[7,6]:='S';
  Items[7,8]:='S';
  Items[1,6]:='M';
  Items[1,9]:='M';
  Items[1,10]:='M';
  Items[2,7]:='M';
  Items[4,2]:='M';
  Items[4,8]:='M';
  Items[4,10]:='M';
  Items[5,9]:='M';
  Items[6,8]:='M';
  Items[7,3]:='M';
  Items[7,5]:='M';
  Items[7,7]:='M';
  Items[7,9]:='M';
  Items[2,2]:='E';
  Items[5,6]:='D';
end;

function BuscarRecur(Var Items:vector;  I,j:Integer;  t:integer;var  posiciones:vectorPosicion; posicionactual:campo):vectorPosicion;
begin
  posicionActual.columna:=items[i,j];
  if posicionActual.columna='D' then    //si es el documento termina
  begin
    posiciones[t]:=posicionActual;
    BuscarRecur:=posiciones;
  end
  else
    if (I>0) and (I<MaxF) and (J>0) and (J<MaxC) and (Items[I,J]<>'E') then
    begin
      begin
        if posicionActual.columna='S'  then
        begin
          posiciones[t]:=posicionActual;
          inc(t);
          Items[I,J]:='E';

          posicionActual.fila:='D';
          BuscarRecur(Items,I,J+1,t,posiciones,posicionActual);    //derecha

          posicionActual.fila:='AR';
          BuscarRecur(Items,I-1,J,t,posiciones,posicionActual);   //arriba

          posicionActual.fila:='I';
          BuscarRecur(Items,I,J-1,t,posiciones,posicionActual);   //izquierda

          posicionActual.fila:='AB';
          BuscarRecur(Items,I+1,J,t,posiciones,posicionActual);   //abajo
        end;
      end;
    end;
end;

function mostrarPosiciones (vector:vectorPosicion;t:integer):string;
var
  I: Integer;  mostrar:string;
begin
  for I := 1 to (20) do
  begin
    if vector[i].fila<>'' then
      mostrar:=mostrar +' '+'['+(vector[i].fila)+','+(vector[i].columna)+']';
  end;
  mostrarPosiciones:=mostrar;
end;

Function Matriz.CadenaSegura():String;
var
  I,t,J:Integer;
  posiciones:vectorPosicion;
  mostrar:string;
  posicionActual:Campo;
begin
  t:=2;
  posicionActual.fila:='.';
  posicionActual.columna:='E';
  posiciones[1]:=posicionActual;
  posicionActual.fila:='AB';
  BuscarRecur(Items,PosicionExplorador.fila+1,PosicionExplorador.columna,
              t,posiciones,PosicionActual);
  CadenaSegura:='El camino seguro es: ' + mostrarPosiciones(posiciones,t);
end;

end.
