unit uConjuntos;

interface

uses
  System.SysUtils, System.Variants, System.Classes;

Const
  MIN = 1;
  MAX = 6;

type
  conjunto = object
    numero: array[MIN..MAX] of word;
    subconjuntos: string;
    procedure cargarConjunto;
    function devolverConjunto:string;
    function buscarSubconjunto(n:integer):string;
  end;

implementation

procedure conjunto.cargarConjunto;
var
  i:integer;
begin
  numero[1]:= 10;
  numero[2]:= 3;
  numero[3]:= 1;
  numero[4]:= 7;
  numero[5]:= 4;
  numero[6]:= 2;
end;

function conjunto.devolverConjunto: string;
var
  i:integer;
  s:string;
begin
  s:='';
  for I := MIN to MAX do
    s:= s + inttostr(numero[i]) + (' - ');
  result:= s;
end;

function conjunto.buscarSubconjunto(n: integer): string;
var
  i, suma:integer;
  s, aux, sAux:string;
  function buscar(i,suma:integer):string;
  var
    j:integer;
  begin
    if (i<=MAX) then
      begin
        if (numero[i]<n) then
          begin
            for j := i to MAX do
              begin
                suma:= suma + numero[j];
                aux:= aux + inttostr(numero[j]) + ', ';
                inc(i);
                if (suma = n) then
                  begin
                    result:= aux;
                  end
                else
                  buscar(i,suma);
              end;
          end;
      end;
  end;


begin
  s:= '';
  sAux:='';
  for i := MIN to MAX do
    begin
      aux:= '';
      suma:= 0;
      if (numero[i] = n) then
        s:= s + '{' + inttostr(numero[i]) + '}'
      else
        begin
          sAux:= buscar(i+1,suma);
          if (sAux <> '') then
            s:= s + '{' + sAux + '}';
        end;
    end;
  result:= s;
end;

end.
