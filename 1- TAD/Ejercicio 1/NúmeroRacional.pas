unit NúmeroRacional;

interface

Uses
  SysUtils,Math;

Type
  Nracional=object
  private
  public
    function sumar(n1:double;n2:double):double;
    function restar(n1:double;n2:double):double;
    function multiplicar(n1:double;n2:double):double;
    function dividir(n1:double;n2:double):double;
    function poten(n1:double;n2:double):string;
    function compara(n1:double;n2:double):string;
  end;

implementation
function Nracional.sumar(n1:double;n2:double):double;
begin
  sumar:=n1+n2;
end;
function Nracional.restar(n1:double;n2:double):double;
begin
   restar:=n1-n2;
end;
function Nracional.multiplicar(n1:double;n2:double):double;
begin
  multiplicar:=n1*n2;
end;
function Nracional.dividir(n1:double;n2:double):double;
begin
  dividir:=n1/n2;
end;
function Nracional.poten(n1:double;n2:double):string;
var
verif1,verif2:integer;
begin
  verif1:=trunc(n1);
  verif2:=trunc(n2);
  if (verif1=n1) and (verif2=n2)  then
    begin
    poten:=(Power(n1, n2)).tostring;
    end
    else
      begin
         poten:='Uno o ambos numeros no son enteros(recuerde que esta aplicacion solo resuelve potencias de numeros enteros)';
      end;

end;
function Nracional.compara(n1:double;n2:double):string;
var texto:string;
begin
  if n1<n2 then
    begin
    texto:='MENOR';
    end
  else
    if n1>n2 then
    begin
      texto:='MAYOR';
    end
    else
      begin
        texto:='IGUAL';
      end;
  compara:=texto;
end;
end.
