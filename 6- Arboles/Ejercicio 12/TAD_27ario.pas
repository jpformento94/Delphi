unit TAD_27ario;

interface
uses
Tipos, Dialogs, QueuesPointer, StackPointer, SysUtils, Variants;
Const
MIN = 1;
MAX = 2000; // Tamaño maximo del arbol
Nulo= Nil; // Posicion NO valida de un Nodo
Type
PosicionArbol = ^NodoArbol;
NodoArbol = Object
Datos: TipoElemento;
Hijos:array [97..122]of PosicionArbol; //hay que inicilizarlas nulas
End;
Arbol = Object
  Private
    Raiz: PosicionArbol;
    Q_Items: LongInt;
    TDatoDeLaClave: TipoDatosClave;
    Size: LongInt;
  Public

    Function Crear(avTipoClave: TipoDatosClave; alSize: LongInt): Resultado;
    Function CargarArbol(arr:array of char): Resultado;
    Function HijoVacio(P:PosicionArbol): PosicionArbol;
    Function HijoLleno(P:PosicionArbol): PosicionArbol;
    Function Padre(Hijo:PosicionArbol): PosicionArbol;
    Function PreOrden(): String;
    Function RamaNula(P:PosicionArbol): Boolean;
End;
implementation

Function Arbol.Crear(avTipoClave: TipoDatosClave; alSize: LongInt): Resultado;
Begin
  if alSize < Min then
    Crear:= CError;
  if alSize > Max then
    Crear:= CError;
  if (alSize >= Min) And (alSize <= Max) then Begin
    raiz := Nulo;
    q_items := 0;
    TDatoDeLaClave := avTipoClave;
    Size := alSize;
    Crear := OK;
    End;
End;

Function Arbol.CargarArbol(arr:array of char): Resultado;
Var X: TipoElemento;
i:integer;P:PosicionArbol;
// Procedimiento que carga el arbol en preorden desde cero
    Procedure Load(var P: PosicionArbol;i:integer);
    var j:integer;Q: PosicionArbol;c:char;
      Begin
      X.Clave:=arr[i];
      If (X.Clave = '.') Then
       P := nulo
        Else Begin
        New(P);
        P^.Datos := X;
        Inc(Q_Items);
        inc(i);
        if (123>Ord(arr[i]))and(Ord(arr[i])>96) then//si es una letra
          begin
            j:=Ord(arr[i]);//ASCII
            Q:=p.Hijos[j];
            Load(Q,i);
          end;
        for I := 97 to 122 do
          begin
          c:=copy((p.Datos.ArmarString),1,1)[1];//convierto el dato a char
          if i<>(ord(c)) then
            begin
              q:=p.hijos[i];
              Load(Q,5);//para todos los hijos que no cargo, pongo nulo
            end;
          end;
        End;
      End;
// Inicio de la Funcion
Begin
  CargarArbol := CError;
  TDatoDeLaClave := Cadena;
  Crear(TDatoDeLaClave, 100);
  i:=1;
  {X.Clave:='-';
  p:=raiz;
  New(P);
  P^.Datos := X;
  Inc(Q_Items);//cargo raiz (guion)

  j:=Ord(Hola[i]); //104
  Q:=p.Hijos[j];//h cargar en hijo [104] }
  Load(raiz,i);//cargo palabra hola
CargarArbol := OK;
End;

Function RamaNula(P:PosicionArbol): Boolean; // Controla si un apuntador es nil
Begin
RamaNula := (P = Nulo);
End;
// Retorna el Hijo Derecho de un Nodo
Function Arbol.HijoVacio(P:PosicionArbol): PosicionArbol;
var i:integer;condi:boolean;
  Begin
    i:=26;
    while ((i<=27) and (not(RamaNula(p.Hijos[i]))))   do
      begin inc(i); end;
    if i=28 then
      HijoVacio := Nulo//si recorro todo el array y no hay vacios, devuelvo nulo
      else
        HijoVacio :=p.Hijos[i];
  End;
Function Arbol.HijoLleno(P:PosicionArbol): PosicionArbol;
var i:integer;
  Begin
    i:=1;
    while (RamaNula(p.Hijos[i])) and (i<=27) do
      inc(i);
    if i=28 then
      HijoLleno := Nulo//si recorro todo el array y no hay llenos, devuelvo nulo
      else
        HijoLleno :=p.Hijos[i];
  End;
// Retorna la posicion del padre de un nodo o NULO
Function Arbol.Padre(Hijo:PosicionArbol): PosicionArbol;
Var Pad: PosicionArbol;
    Procedure BuscaPadre(P: PosicionArbol);
    var i:integer;
    Begin
    for I := 97 to 122 do
    begin
      If Not RamaNula(P) Then Begin
        If Not RamaNula(p.hijos[i]) Then Begin
          If p.hijos[i] = Hijo Then Pad := P
          End;
      BuscaPadre(p.hijos[i]);
      End;
    End;
    End;
// codigo de la funcion principal
Begin
Pad := Nulo;
BuscaPadre(Raiz);
Padre := Pad;
End;
Function Arbol.RamaNula(P:PosicionArbol): Boolean; // Controla si un apuntador es nil
Begin
RamaNula := (P = Nulo);
End;
Function Arbol.PreOrden(): String;
Var S: String;
    // Proceso que lee en preorden
    Procedure PreOrd(P: PosicionArbol);
    Begin
      If RamaNula(P) Then S := S + '.'
      Else Begin
        S := S + P^.Datos.ArmarString;
        PreOrd(HijoLleno(p));
      End;
    End;
// Inicio de la funcion
Begin
  S := '';
  PreOrd(Raiz);
  PreOrden := S;
End;
end.