unit uVector;

interface

Uses
  SysUtils;

Type
  Vector = Object
    Private
    Items:array[1..1000]of integer;
    Public
      Procedure Cargaraleatorio(desde:integer;hasta: integer;repite:string;ele:integer);
      procedure cargar();
      Function RtnAsString(Sep: String;elem:integer): String;
      Function Sumatoria(elem:integer): integer;
      Function Mayor(Var Pos: Integer;elem:integer): integer;
      Function Menor(Var Pos: Integer;elem:integer): integer;
      Function GetValue(Posicion: Integer):integer;
      Function Promedio(elem:integer): Double;
      Function MultiEscalar(N: Integer;elem:integer): Vector;
      Function SumarVector(var v:vector;desde:integer;hasta: integer;ele:integer): Vector;
      function usado(n_ram:integer):boolean;
  End;


implementation
procedure vector.cargar();
var i:integer;
begin
  for i := 1 to length(items) do
    items[i]:=-1;
end;
function vector.usado(n_ram:integer):boolean;
var
i,n:integer;
devuelve:boolean;
begin
  devuelve:=True;
  i:=0;
  while not(items[i]=-1) do
    begin
      if n_ram=items[i] then
      begin
        devuelve:=False;
      end;
      inc(i);
    end;
usado:=devuelve;
end;
Procedure Vector.CargarAleatorio(desde:integer;hasta: integer;repite:string;ele:integer);
Var n_ram,I: Integer;
verificar:boolean;
Begin
  cargar();
  Randomize;
  for I := 1 to ele do
    Begin
      if (repite='no') or (repite='NO')then
          begin
            verificar:=False;
            while verificar=False do
              begin
                n_ram:=Random(hasta-desde) + desde;
                verificar:=(usado(n_ram));
              end;
            Items[I]:=n_ram;
          end;
      if (repite='si') or (repite='SI')then
              Items[I]:=Random(hasta-desde) + desde;
    End;
End;

Function Vector.RtnAsString(Sep: String;elem:integer): String;
Var I: Integer;
    S: String;
Begin
  S := '';
  for I := 1 to elem do Begin
    S := S + Items[I].ToString + Sep;
  End;
  RtnAsString := S;
End;

Function Vector.Sumatoria(elem:integer): integer;
var
s,i:integer;
Begin
    for I := 1 to elem do Begin
    S := S + Items[I];
  End;
  Sumatoria := s;
End;

Function Vector.Mayor(Var Pos: Integer;elem:integer): integer;
Var I: Integer;
    May: integer;
Begin
  // Asumo que el primero es el mayor
  May := Items[1];
  Pos := 1;
  // Recorro
  for I := 1 to elem do Begin
    if Items[I] > May then Begin
      May := Items[I];
      Pos := I;
    End;
    Mayor := May;
  End;
End;

Function Vector.Menor(Var Pos: Integer;elem:integer): integer;
Var I: Integer;
    min: integer;
Begin
  // Asumo que el primero es el mayor
  Min := Items[1];
  Pos := 1;
  // Recorro
  for I := 1 to elem do Begin
    if Items[I] < min then Begin
      min := Items[I];
      Pos := I;
    End;
    menor := min;
  End;
End;

Function Vector.GetValue(Posicion: Integer):integer;
Begin
  GetValue := Items[Posicion];
End;

Function Vector.Promedio(elem:integer): Double;
var
s,i:integer;
Begin
s:=0;
    for I := 1 to elem do Begin
    S := S + Items[I];
  End;
  promedio := s /elem;
End;
Function Vector.MultiEscalar(N: Integer;elem:integer): Vector;
Var V: Vector;
    I: Integer;
Begin
  for I := 1 to elem do
    V.Items[I] := Items[I] * N;
  MultiEscalar := V;
End;

Function Vector.SumarVector(var v:vector;desde:integer;hasta: integer;ele:integer): Vector;
var
i,n:integer;

Begin
  for I := 1 to ele do Begin
    v.items[I]:=Random(hasta-desde) + desde;
  End;
  for I := 1 to ele do Begin
    Items[I]:=v.items[I]+Items[I]
  End;
  sumarvector:=v;
End;

end.
