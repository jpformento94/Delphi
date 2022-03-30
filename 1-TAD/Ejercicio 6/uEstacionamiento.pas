unit uEstacionamiento;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

Const
  MIN = 1;
  MAX = 10;   {Numero maximo de autos que se pueden guardar,
                ya que un estacionamiento tiene un espacio fisico limitado
                cambiar la variable maximo segun la cantidad de autos que se
                puedan guardar en el estacionamiento}

type
  //Registro donde guardo los datos del auto
  auto = record
    patente: String[7];
    hora_entrada: integer;
    minutos_entrada: integer;
    hora_salida: integer;
    minutos_salida: integer;
    dia_entrada: integer;
    mes_entrada: integer;
    dia_salida: integer;
    mes_salida: integer;
    cobro: double;
    activo: boolean;//Bandera para indicar que hay un auto o que el auto se puede sobreescribir
  end;
  //Objeto estacionamiento que contiene un array de autos
  estacionamiento = object
    private
      clientes: Array[MIN..MAX] of auto;
      cantidad_de_autos: word;
    public
      tarifa: double;
      media_tarifa: double;
      tarifa_por_hora: double;
      tarifa_por_10min: double;
      function getCantidadDeAutos():word;
      procedure setTarifa(monto:double);
      procedure cargarAuto(hora,min:integer; fecha, p:string);
      function sacarAuto(hora,min: integer; fecha, p: string):string;
      procedure inicializarVectorClientes();
      function clientesToString:string;
      function informeDeCobro(i:integer):string;
      procedure tarifaAPagar(i:integer);
      function tarifaEnElDia(i:integer):double;
  end;

implementation

//Devuleve el arreglo de clientes como un string
function estacionamiento.clientesToString:string;
var
  i: Integer;
  s: string;
begin
  s:= '';
  for i := MIN to MAX do
    begin
      if (clientes[i].activo = true) then
        begin
          s:= s + 'Patente: '+ clientes[i].patente +
              char(13) + char(10) +
              'Fecha de entrada: ' + clientes[i].dia_entrada.ToString + '/' + clientes[i].mes_entrada.ToString +
              ' Hora de entrada: ' + clientes[i].hora_entrada.ToString + ':' + clientes[i].minutos_entrada.ToString + char(13) + char(10);
        end;
    end;
  result:= s;
end;

function estacionamiento.informeDeCobro(i:integer):string;
begin
  result:=  'Patente: '+ clientes[i].patente + 
            char(13) + char(10) +
            'Fecha de entrada: ' + clientes[i].dia_entrada.ToString + '/' + clientes[i].mes_entrada.ToString +
            ' Hora de entrada: ' + clientes[i].hora_entrada.ToString + ':' + clientes[i].minutos_entrada.ToString + 
            char(13) + char(10) +
            'Fecha de salida: ' + clientes[i].dia_salida.ToString + '/' + clientes[i].mes_salida.ToString +
            ' Hora de salida: ' + clientes[i].hora_salida.ToString + ':' + clientes[i].minutos_salida.ToString  +
            char(13) + char(10) +
            'Tarifa: ' + clientes[i].cobro.ToString;
end;

//Inicializar vector de clientes vacio y con los registros listos para sobreescribir
procedure estacionamiento.inicializarVectorClientes();
var
  i: word;
begin
  for i := MIN to MAX do
    begin
      clientes[i].patente:= '';
      clientes[i].hora_entrada:= 0;
      clientes[i].minutos_entrada:= 0;
      clientes[i].hora_salida:= 0;
      clientes[i].minutos_salida:= 0;
      clientes[i].dia_entrada:= 0;
      clientes[i].mes_entrada:= 0;
      clientes[i].dia_salida:= 0;
      clientes[i].mes_salida:= 0;
      clientes[i].activo:= false;
    end;
end;

//Cargar auto nuevo
procedure estacionamiento.cargarAuto(hora,min: integer; fecha,p: string);
var
  i: word;
begin
  i:= 1;
  while (clientes[i].activo = true) or (i<=MAX) do
    begin
      if (clientes[i].activo=false) then
        begin
          clientes[i].patente:= UpperCase(p);
          clientes[i].dia_entrada:= strtoint(copy(fecha,1,2));
          clientes[i].mes_entrada:= strtoint(copy(fecha,4,2));
          clientes[i].hora_entrada:= hora;
          clientes[i].minutos_entrada:= min;
          clientes[i].activo:= true;
          inc(cantidad_de_autos);   //Incrementa la cantidad de autos
          exit;
        end;
      inc(i);
    end;
  ShowMessage('El estacionamiento esta lleno!');
end;

//Sacar un auto y devolver monto a pagar
function estacionamiento.sacarAuto(hora,min: integer; fecha,p: string):string;
var
  i: word;
  flag: boolean;
begin
  if (getCantidadDeAutos<=0) then   //Si no hay autos para sacar devuelvo un mensaje
    Showmessage('No hay autos para sacar')
  else
    begin
      p:= UpperCase(p);
      i:= 0;
      flag:= false;//Mientras la bandera sea falsa quiere decir que no encontro la patente
      while (flag=false) and (i<=MAX) do
      begin
        if (clientes[i].patente = p) and (clientes[i].activo = true) then
          begin
            flag:= true;
            clientes[i].dia_salida:= strtoint(copy(fecha,1,2));
            clientes[i].mes_salida:= strtoint(copy(fecha,4,2));
            clientes[i].hora_salida:= hora;
            clientes[i].minutos_salida:= min;
            clientes[i].activo:= false;
            tarifaAPagar(i);
            dec(cantidad_de_autos);
            result:= informeDeCobro(i);
          end;
        inc(i);
      end;
    if (flag = false) then
      ShowMessage('El auto no se encuentra en el estacionamiento o cargo mal la patente');
    end;
end;

//Obetener cuantos autos hay
function estacionamiento.getCantidadDeAutos(): Word;
begin
  result:=  cantidad_de_autos;
end;

//Carga la tarifa que diga el usuario del programa
procedure estacionamiento.setTarifa(monto:double);
begin
  tarifa:= monto;
  media_tarifa:= tarifa / 2;
  tarifa_por_hora:= tarifa / 4;
  tarifa_por_10min:= tarifa / 10;
end;

//Tarifa en el mismo dia
function estacionamiento.tarifaEnElDia(i:integer):double;
var
  tTotal, tEntrada, tSalida, horas, minutos: integer;   //La t significa tiempo
  monto_a_pagar: double;
begin
  horas:= 0;
  minutos:= 0;
  monto_a_pagar:= 0;
  //Convierto todo a minutos
  tEntrada:= (clientes[i].hora_entrada*60) + clientes[i].minutos_entrada;
  tSalida:= (clientes[i].hora_salida*60) + clientes[i].minutos_salida;
  tTotal:= tSalida - tEntrada;

  //Si estuvo mas de 6hs se cobra estadia completa
  if (tTotal>=360) then begin
    result:= tarifa;
  end;

  //Si estuvo mas de 3hs pero menos de 6hs se cobra media estadia
  if (tTotal>=180) and (tTotal<360) then  begin
    result:= media_tarifa;
  end;

  //Si el auto estuvo menos de una hora se cobra el mininmo de la tarifa que es 1hs
  if (tTotal>=0) and (tTotal<60) then  begin
    result:= tarifa_por_hora;
  end;

  //Si el auto estuvo mas de 1hs pero menos de 3hs
  //calculo la tarifa por hora mas la el tiempo fraccionado de a 10 minutos
  if (tTotal>=60) and (tTotal<180) then begin
    //Si es mayora a 1hs lo voy sumando
    while (tTotal>=60) do begin
      inc(horas);
      tTotal:= tTotal - 60;
    end;
    //Si es mayor o igual a 10 minutos voy sumando
    while (tTotal>=10) do begin
      inc(minutos);
      tTotal:= tTotal - 10;   //Resto de a 10 minutos que es lo que se fracciona despues de una hora
    end;
    monto_a_pagar:= (horas * tarifa_por_hora);//Multiplico la tarifa por la cantidad de horas
    monto_a_pagar:= monto_a_pagar + (minutos * tarifa_por_10min);
    result:= monto_a_pagar;
  end;

end;

//Tarifa a pagar
procedure estacionamiento.tarifaAPagar(i: Integer);
begin
  if (clientes[i].mes_entrada = clientes[i].mes_salida) and (clientes[i].dia_entrada = clientes[i].dia_salida) then begin
    clientes[i].cobro:= estacionamiento.tarifaEnElDia(i);
  end;
end;

end.
