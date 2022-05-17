unit Matematica;

interface
uses
StackArray,Tipos;//Probado con: StackCursor StackArray StackPointer
type
  operadores=array [1..4] of char;
  operandos=array [1..64] of char;
  Expresion=object
    private
      P:Pila;
      o:operadores;
      caracteres:operandos;
      caract:integer;//caracteres de la expresion
    public
      procedure cargarOperadores();
      procedure cargarCaracteres();
      function CrearPila(t:string):pila;
      Function VerificarParentesis():Boolean ;
      Function VerificarOperadores():Boolean ;
      function mostrar():string;
  end;


implementation


procedure Expresion.cargarOperadores();
begin
   O[1]:='-';
   O[2]:='+';
   O[3]:='*';
   O[4]:='/';
end;
procedure Expresion.cargarCaracteres();
var
I:integer;
begin
  for I := 1 to 10 do
    caracteres[i]:=chr(i+47);//NOMEROS
  for I := 11 to 36 do
    caracteres[i]:=chr(i+54);//LETRAS MAYUS
  for I := 37 to 62 do
    caracteres[i]:=chr(i+60);//LETRAS MINUS
  caracteres[63]:=chr(40);// (
  caracteres[64]:=chr(41);// )
end;
function expresion.CrearPila(t:string):pila;
var
  I: Integer;
  elemento:TipoElemento;
begin
  caract:=length(t);
  p.Crear(Cadena,caract);
  for I :=  1 to length(t) do
  begin
    if copy(t,I,1)<>' ' then
    begin
      elemento.clave:=copy(t,I,1);
      p.Apilar(elemento);
    end;
  end;
end;


Function Expresion.VerificarOperadores():Boolean ;
var x,Xanterior,Xsiguiente:TipoElemento;
    bandera,sigLetra,antLetra,Xletra,sigPar,antPar,sigNum,xOper:Boolean;
    pAux,pAux2:Pila;
begin
  pAux.Crear(P.DatoDeLaClave,caract);
  pAux2.Crear(P.DatoDeLaClave,caract);
  pAux.intercambiar(P,false);//pAux tiene pila invertida
  while not pAux.EsVacia do
  begin
    x:=pAux.Recuperar;
    p.Apilar(x);//p tiene pila original
    pAux2.Apilar(x);//pAux2 tiene pila original
    pAux.DesApilar;
  end;
  bandera:=true;
  while not p.EsVacia and bandera do
  begin
    x:=p.Recuperar;
    p.DesApilar;
    xsiguiente:=p.Recuperar;
    xLetra:=(x.Clave>=Caracteres[11]) and (x.Clave<=Caracteres[62]);
    xOper:=(x.Clave=o[1]) or (x.Clave=o[2]) or (x.Clave=o[3]) or (x.Clave=o[4]);
    sigNum:=((xsiguiente.Clave>=Caracteres[1]) and (xSiguiente.Clave<=Caracteres[10]));
    sigLetra:=((xsiguiente.Clave>=Caracteres[11]) and (xSiguiente.Clave<=Caracteres[62]));
    antLetra:=((xanterior.Clave>=Caracteres[11]) and (xanterior.Clave<=Caracteres[62]));
    sigPar:=((xsiguiente.Clave=Caracteres[63]) or (xsiguiente.Clave=Caracteres[64]));
    antPar:=((xanterior.Clave=Caracteres[63]) or (xanterior.Clave=Caracteres[64]));
    if (  xletra and( (antPar and sigLetra)or(antLetra and sigPar) )  ) then
      Bandera:=False;
    if (xOper and antPar and sigPar)then//operador entre()
      Bandera:=False;
    xAnterior:=x;
    end;

  verificarOperadores:=bandera;
end;

Function Expresion.VerificarParentesis():Boolean ;
var x:TipoElemento;
    bandera:Boolean;
    pAux:Pila;
    ContA,ContC:Integer;
begin
bandera:=True;
pAux.Crear(P.DatoDeLaClave,caract);
ContA:=0;
ContC:=0;
  while not P.EsVacia do
  begin
    X:=P.Recuperar;
    if X.clave=char(40) then
      Inc(ContC);
    if X.clave=char(41) then
      Inc(ContA);
    if contA<contC then//contador ) es mayor a contador (, devuelvo falso
      bandera:=False;
    pAux.Apilar(x);
    P.DesApilar;
  end;
  P.InterCambiar(pAux,false);
  if contA<>contC then
   bandera:=False;
  VerificarParentesis:=Bandera;
end;

function Expresion.mostrar():string;
begin
   mostrar:=P.RetornarClaves();
end;
end.
