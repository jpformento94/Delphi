unit fecha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  fechas=object
  private
    dia:integer;
    mes:integer;
    a�o:integer;

  public
    function Vencida(fHoy:fechas):boolean;
    procedure cargar(ndia,nmes,na�o:integer) ;
    function mostrarFecha():string;
  end;



implementation
procedure fechas.cargar(ndia: Integer; nmes: Integer; na�o: Integer);
begin
if (ndia >= 1) and (ndia <= 31) then
  dia := ndia
  else
    ShowMessage('Ingrese un d�a valido');

if (nmes >= 1) and (nmes <= 12) then
  mes := nmes
  else
    ShowMessage('Ingrese un mes valido');

if (na�o >= 2010) and (na�o <= 2040) then
  a�o := na�o
  else
    ShowMessage('Ingrese un a�o valido');
end;

function fechas.mostrarFecha(): string;
begin
    mostrarFecha:= inttostr (dia)+'/'+ inttostr (mes)+'/'+inttostr (a�o);
end;


function Fechas.vencida(fHoy:fechas):boolean;
begin
  if (fHoy.a�o>a�o) then
  begin
        vencida:=true;
  end
  else
    if (fHoy.a�o=a�o)and (fHoy.mes<mes) then
    begin
      vencida:=true;
    end
    else
      if (fHoy.a�o=a�o)and (fHoy.mes=mes) and (fHoy.dia<=dia)  then
      begin
        vencida:=true;
      end
      else
        vencida:=false;
end;


end.
