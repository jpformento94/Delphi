unit uEstacionamiento;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

Const
  MIN = 1;
  MAX = 3;   {Numero maximo de autos que se pueden guardar,
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
      hora_salida: integer;
      minutos_salida: integer;
      tarifa: double;
      media_tarifa: double;
      tarifa_por_hora: double;
      function getCantidadDeAutos():word;
      procedure setTarifa(monto:double);
      procedure cargarAuto(mes,dia,hora,min:integer; p:string);
      procedure sacarAuto(mes,dia,hora,min: integer; p: string);
      procedure inicializarVectorClientes();
      function clientesToString:string;
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
                ' Fecha de entrada: ' + clientes[i].dia_entrada.ToString + '/' + clientes[i].mes_entrada.ToString +
                ' Hora de entrada: ' + clientes[i].hora_entrada.ToString + ':' + clientes[i].minutos_entrada.ToString + char(13) + char(10);
        end;
    end;
  result:= s;
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
procedure estacionamiento.cargarAuto(mes,dia,hora,min: integer; p: string);
var
  i: word;
begin
  i:= 1;
  while (clientes[i].activo = true) or (i<=MAX) do
    begin
      if (clientes[i].activo=false) then
        begin
          clientes[i].patente:= UpperCase(p);
          clientes[i].mes_entrada:= mes;
          clientes[i].dia_entrada:= dia;
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
procedure estacionamiento.sacarAuto(mes,dia,hora,min: integer; p: string);
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
            clientes[i].mes_salida:= mes;
            clientes[i].dia_salida:= dia;
            clientes[i].hora_salida:= hora;
            clientes[i].minutos_salida:= min;
            clientes[i].activo:= false;
            dec(cantidad_de_autos);
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
  media_tarifa:= monto / 2;
  tarifa_por_hora:= tarifa / 4;
end;

//Tarifa a pagar
function tarifa():double;
var
  i:integer;
begin

end;

end.
