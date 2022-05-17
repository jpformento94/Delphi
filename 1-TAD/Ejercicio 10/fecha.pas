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
    año:integer;
  public
    function Vencido(fHoy:fechas):boolean;
    procedure cargar(ndia,nmes,naño:integer) ;
    function mostrarFecha():string;
  end;



implementation
procedure fechas.cargar(ndia: Integer; nmes: Integer; naño: Integer);
begin
if (ndia >= 1) and (ndia <= 31) then
  dia := ndia
  else
    ShowMessage('Ingrese un día valido');

if (nmes >= 1) and (nmes <= 12) then
  mes := nmes
  else
    ShowMessage('Ingrese un mes valido');

if (naño >= 2000) and (naño <= 2040) then
  año := naño
  else
    ShowMessage('Ingrese un año valido');
end;

function fechas.mostrarFecha(): string;
begin
    mostrarFecha:= inttostr (dia)+'/'+ inttostr (mes)+'/'+inttostr (año);
end;


function Fechas.vencido(fHoy:fechas):boolean;
begin
  if (fHoy.año>año) then
  begin
        vencido:=true;
  end
  else
    if (fHoy.año=año)and (fHoy.mes<mes) then
    begin
      vencido:=true;
    end
    else
      if (fHoy.año=año)and (fHoy.mes=mes) and (fHoy.dia<=dia)  then
      begin
        vencido:=true;
      end
      else
        vencido:=false;
end;


end.
