 unit TADCarbono;

interface

uses
  Variants, SysUtils;

Const
  MinC = 1;
  MaxC = 13;
  MinF=1;
  MaxF=7;

Type
  registro=record
    fila:integer;
    columna:integer;
  end;

  DimensionC = MinC .. MaxC;
  DimensionF = MinF .. MaxF;
  vectorPosicion= array [1..30] of registro;

  Vector = Array [DimensionF, DimensionC] Of Char;

  Matriz = Object
  Private
    Items: vector;
  Public
    Function GetItem(R, C: DimensionC): Char;
    Procedure Cargar();
    Function CadenaMasLarga(): String;
  End;
var
V:Vector;

implementation
procedure inci_posi(var v:vectorposicion) ;
var
  I: Integer;begin
  for I := 1 to length(v) do
    begin
      v[i].fila:=0;
      v[i].columna:=0;
    end;
end;
Function Matriz.GetItem(R, C: DimensionC): Char;
Begin
  GetItem := Items[R, C];
End;

procedure Matriz.Cargar;
var
  i, j: Integer;
begin
  for I := 1 to MaxF do
  begin
    for J := 1 to MaxC do
      Items[i, j]:='.';
  end;
  Items[1, 1] := 'C';
  Items[2, 1] :='C';
  Items[3, 10] := 'C';
  Items[4, 10] := 'C';
  Items[5, 3] := 'C';

  for i := 2 to 7 do
  begin
    Items[i, 2] := 'C';
  end;
  for i := 2 to 5  do
  begin
    j := 4;
    Items[i, j] := 'C';
  end;
  for J := 5 to 10 do
  begin
    I := 5;
    Items[I,J] := 'C';
  end;
end;

procedure BuscarRecur(Var Items:vector;  I,J,cont:Integer;var Max2:Integer;var  posiciones:vectorPosicion);
begin
  if (I<1) or (I>MaxF) or (J<1) or (J>MaxC) or (Items[I,J]='.') or (Items[I,J]='X') then
  begin
    if cont > max2 then
    max2:=Cont;
  end
  else
    begin
      Items[I,J]:='X';
      if posiciones[cont+1].fila=0 then begin
        posiciones[cont+1].fila:=i;
        posiciones[cont+1].columna:=j;
      end;
      BuscarRecur(Items,I,J+1,Cont+1,Max2,posiciones);//derecha
      BuscarRecur(Items,I-1,J,Cont+1,Max2,posiciones);//arriba
      BuscarRecur(Items,I+1,J,Cont+1,Max2,posiciones);//abajo
      BuscarRecur(Items,I,J-1,Cont+1,Max2,posiciones);//izquierda
    end;
end;

function mostrarPosiciones (vector:vectorPosicion; largo:integer):string;
var
  I: Integer;  mostrar:string;
begin
  for I := 1 to (largo) do
  begin
    mostrar:=mostrar +' '+'['+inttostr(vector[i].fila)+','+inttostr(vector[i].columna)+']';
  end;
  mostrarPosiciones:=mostrar;
end;

Function Matriz.CadenaMasLarga():String;
var
  max2,I,J,cont:Integer;
  posiciones:vectorPosicion;
  mostrar:string;

begin
  max2:=0;
  I:=1;
  J:=1;
  Cont:=0;
  posiciones[1].fila:=1;
  posiciones[1].columna:=1;
  inci_posi(posiciones);
  BuscarRecur(Items,I,J,Cont,Max2,posiciones);
  CadenaMasLarga:='Largo de la cadena'+ inttostr(Max2)+ ' Posiciones' + mostrarPosiciones(posiciones,max2);
end;

end.
