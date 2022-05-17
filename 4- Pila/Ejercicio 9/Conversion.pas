unit Conversion;

interface
uses
System.SysUtils,StackArray,Tipos;
type
numero=object
  private
    hexa:array[1..16]of char;
    procedure cargar ();
  public
    resultado:pila;
    function crear():pila;
    function ConvNumero (n,b:integer):pila;
    function mostrar():string;
end;

implementation
procedure numero.cargar ();
var
  I,cont: Integer;
begin
  cont:=49;
  for I := 1 to 9 do //49=1 58=9
    begin
      hexa[i]:=Chr(cont);
      inc(cont);
    end;
  hexa[10]:='A';
  hexa[11]:='B';
  hexa[12]:='C';
  hexa[13]:='D';
  hexa[14]:='E';
  hexa[15]:='F';
end;
function numero.crear():pila;
begin
  resultado.Crear(Cadena,15);
end;

function numero.ConvNumero (n,b:integer):pila;
var
elemento:TipoElemento;
begin
  if b<16 then
   begin
     if n>=b then
       begin
         elemento.clave:=(IntToStr(n mod b));
         n:=n div b;
         resultado.apilar(elemento);
         if (n<b) and (n<>0) then
          begin
            elemento.clave:=(IntToStr(n));
            resultado.apilar(elemento);
          end
         else
          ConvNumero:=ConvNumero(n,b);
       end
     else
       begin
         elemento.clave:=(IntToStr(n));
         resultado.apilar(elemento);
       end;
   end
   else
   begin
        cargar();
       if n>=b then
         begin
           elemento.clave:=hexa[((n mod b))];
           n:=n div b;
           resultado.apilar(elemento);
           if (n<b) and (n<>0) then
            begin
              elemento.clave:=hexa[n];
              resultado.apilar(elemento);
            end
           else
            ConvNumero:=ConvNumero(n,b);
         end
       else
         begin
           elemento.clave:=hexa[n];
           resultado.apilar(elemento);
         end;
   end;
   ConvNumero:=resultado;
end;
function numero.mostrar():string;
begin
   mostrar:=resultado.RetornarClaves();
end;
end.
