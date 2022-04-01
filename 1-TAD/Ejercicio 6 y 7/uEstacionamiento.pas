unit uEstacionamiento;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DateUtils;

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
    fecha_entrada: TDate;
    fecha_salida: TDate;
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
      procedure cargarAuto(p:string;fecha:tdate;hora,mn: integer);
      function sacarAuto(p:string;fecha:tdate;hora,mn: integer):string;
      procedure inicializarVectorClientes();
      function clientesToString:string;
      function informeDeCobro(i:integer):string;
      procedure tarifaAPagar(i:integer);
      function tarifaEnElDia(i:integer):double;
      function calcularCobro(i,diferencia:integer;dia_entrada,dia_salida:word):double;
      procedure crearArchivoTexto();
      procedure cargarEnArchivo(i: Integer);
      function recaudacionPorUnDia(dia,mes:integer):string;
      function recaudacionDiaria(dia,mes,dFin,mFin:integer):string;
  end;

var
  a: TextFile;

implementation

{-----------------------------Seccion de archivo---------------------------------------}
//Procedimiento que crea un archivo de texto
procedure estacionamiento.crearArchivoTexto();
begin
  AssignFile(a, ExtractFilePath( Application.ExeName ) + 'estacionamiento.txt' );
  if FileExists(ExtractFilePath( Application.ExeName ) + 'estacionamiento.txt') then
    reset(a)     //Si existe lo abro en modo lectura
  else
    rewrite(a);    //Si no existe lo creo
  closefile(a);
end;

//Carga un auto cobrado en el archivo
procedure estacionamiento.cargarEnArchivo(i: Integer);
var
  dia_entrada, mes_entrada, anio_entrada, dia_salida, mes_salida, anio_salida: word;
  patente, horaE, horaS, cobro: string;
begin
  decodedate(clientes[i].fecha_entrada,anio_entrada,mes_entrada,dia_entrada);
  decodedate(clientes[i].fecha_salida,anio_salida,mes_salida,dia_salida);
  patente:= clientes[i].patente;
  horaE:= clientes[i].hora_entrada.ToString + ' ' + clientes[i].minutos_entrada.ToString;
  horaS:= clientes[i].hora_salida.ToString + ' ' + clientes[i].minutos_salida.ToString;
  cobro:= clientes[i].cobro.ToString;
  append(a);
  writeln(a,anio_salida,' ',mes_salida,' ',dia_salida,' ',anio_entrada,' ',mes_entrada,' ',dia_entrada,' ',horaE,' ',horaS,' ',cobro,' ',patente);
  closefile(a);
end;

//Recaudacion por una fecha determinada
function estacionamiento.recaudacionPorUnDia(dia,mes:integer):string;
var
  dia_entrada, mes_entrada, anio_entrada, dia_salida, mes_salida, anio_salida: word;
  hE,mE,hS,mS: word;
  sRecaudacion, patente: string;
  totalDia, cobro: double;
begin
  sRecaudacion:= '';
  totalDia:= 0;
  reset(a);
  readln(a,anio_salida,mes_salida,dia_salida,anio_entrada,mes_entrada,dia_entrada,hE,mE,hS,mS,cobro,patente);
  while (dia=dia_salida) and not eof(a) do  begin
    totalDia:= totalDia + cobro;
    readln(a,anio_salida,mes_salida,dia_salida,anio_entrada,mes_entrada,dia_entrada,hE,mE,hS,mS,cobro,patente);
  end;
  sRecaudacion:=  sRecaudacion + 'El dia ' + dia.ToString + '/' + mes.ToString + ' se recaudaron $' + totalDia.ToString + char(13) + char(10);
  closefile(a);
  result:= sRecaudacion;
end;


//Recaudacion dia por dia entre dos fechas
function estacionamiento.recaudacionDiaria(dia,mes,dFin,mFin:integer):string;
var
  dia_entrada, mes_entrada, anio_entrada, dia_salida, mes_salida, anio_salida: word;
  hE,mE,hS,mS: word;
  sRecaudacion, patente: string;
  totalDia, cobro: double;
begin
  sRecaudacion:= '';
  totalDia:= 0;
  reset(a);
  while (mes<=mFin) and not eof(a) do begin
    readln(a,anio_salida,mes_salida,dia_salida,anio_entrada,mes_entrada,dia_entrada,hE,mE,hS,mS,cobro,patente);
    while (mes=mes_salida)and not eof(a) do begin
      while (dia=dia_salida) and not eof(a) do  begin
        totalDia:= totalDia + cobro;
        readln(a,anio_salida,mes_salida,dia_salida,anio_entrada,mes_entrada,dia_entrada,hE,mE,hS,mS,cobro,patente);
      end;
      sRecaudacion:=  sRecaudacion + 'El dia ' + dia.ToString + '/' + mes.ToString + ' se recaudaron $' + totalDia.ToString + char(13) + char(10);
      inc(dia);
      totalDia:= 0;
    end;
    inc(mes);
  end;
  closefile(a);
  result:= sRecaudacion;
end;

{-----------------------------Fin seccion de archivo---------------------------------------}


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
              'Fecha de entrada: ' + datetostr(clientes[i].fecha_entrada) +
              ' Hora de entrada: ' + clientes[i].hora_entrada.ToString + ':' + clientes[i].minutos_entrada.ToString + char(13) + char(10);
        end;
    end;
  result:= s;
end;

function estacionamiento.informeDeCobro(i:integer):string;
begin
  result:=  'Patente: '+ clientes[i].patente + 
            char(13) + char(10) +
            'Fecha de entrada: ' + datetostr(clientes[i].fecha_entrada) +
            ' Hora de entrada: ' + clientes[i].hora_entrada.ToString + ':' + clientes[i].minutos_entrada.ToString + 
            char(13) + char(10) +
            'Fecha de salida: ' + datetostr(clientes[i].fecha_salida) +
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
      clientes[i].activo:= false;
    end;
end;

//Cargar auto nuevo
procedure estacionamiento.cargarAuto(p:string;fecha:tdate;hora,mn: integer);
var
  i: word;
  cargado: boolean;
begin
  cargado:= false;
  i:= MIN;
  while (cargado = false) and (i<=MAX) do
    begin
      if (clientes[i].activo=false) then
        begin
          clientes[i].patente:= UpperCase(p);
          clientes[i].fecha_entrada:= fecha;
          clientes[i].hora_entrada:= hora;
          clientes[i].minutos_entrada:= mn;
          clientes[i].activo:= true;
          inc(cantidad_de_autos);   //Incrementa la cantidad de autos
          cargado := true;
        end;
      inc(i);
    end;
  if (cargado = false) then
    ShowMessage('El estacionamiento esta lleno!');
end;

//Sacar un auto y devolver monto a pagar
function estacionamiento.sacarAuto(p:string;fecha:tdate;hora,mn: integer):string;
var
  i: word;
  encontrado: boolean;
begin
  if (getCantidadDeAutos=0) then   //Si no hay autos para sacar devuelvo un mensaje
    Showmessage('No hay autos para sacar')
  else
    begin
      p:= UpperCase(p);
      i:= 0;
      encontrado:= false;//Mientras la bandera sea falsa quiere decir que no encontro la patente
      while (encontrado=false) and (i<=MAX) do
      begin
        if (clientes[i].patente = p) and (clientes[i].activo = true) then
          begin
            encontrado:= true;
            clientes[i].fecha_salida:= fecha;
            clientes[i].hora_salida:= hora;
            clientes[i].minutos_salida:= mn;
            clientes[i].activo:= false;
            tarifaAPagar(i);
            cargarEnArchivo(i);
            dec(cantidad_de_autos);
            result:= informeDeCobro(i);
          end;
        inc(i);
      end;
      if (encontrado = false) then
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

{------------------------------------------------------------------------------}
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

  //Si el auto estuvo menos de una hora asumo que hay que cobrarle como minimo 1 hora por haber usado el servicio
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

{------------------------------------------------------------------------------}
//Calcula la tarifa si el auto estuvo mas de un dia
function estacionamiento.calcularCobro(i,diferencia:integer;dia_entrada,dia_salida:word):double;
var
  tTotal, dias, ultimoDia: integer;   //La d significa dia
  monto_a_pagar: double;
begin
  monto_a_pagar:= 0;
  tTotal:= 1440 - ((clientes[i].hora_entrada * 60) + clientes[i].minutos_entrada);    //Cantidad de horas que estuvo el primer diaa
  dias:= 2;
  while ((dias) <= (diferencia)) do  begin
    monto_a_pagar:= monto_a_pagar + tarifa;
    inc(dias);
  end;
  //Cuando salgo calculo las horas que estuvo el ultimo dia
  ultimoDia:= ((clientes[i].hora_salida * 60) + clientes[i].minutos_salida);
  tTotal:= tTotal + ultimoDia;

  //Si estuvo mas de 6hs se cobra estadia completa
  if (tTotal>=360) then begin
    monto_a_pagar:= monto_a_pagar + tarifa;
  end;

  //Si quedan mas de 3hs le cobro al total media estadia mas
  if (tTotal>=180) and (tTotal<360) then  begin
    monto_a_pagar:= monto_a_pagar + media_tarifa;
  end;
 
  //Si me queda mas de una hora pero menos de 3 calculo el tiempo por hora y se lo sumo al total
  if (tTotal>0) and (tTotal<180) then begin
    while (tTotal>=60) do begin
      monto_a_pagar:= monto_a_pagar + tarifa_por_hora;
      tTotal:= tTotal - 60;
    end;
    while (tTotal>=10) do begin
      monto_a_pagar:= monto_a_pagar + tarifa_por_10min;
      tTotal:= tTotal - 10;
    end;
  end;
  result:= monto_a_pagar;
end;

{------------------------------------------------------------------------------}
{Depende los dias y el mes llama a la funcion correspondiente para calcular la tarifa a pagar}
procedure estacionamiento.tarifaAPagar(i: Integer);
var
  diferencia: integer;
  dia_entrada, mes_entrada, anio_entrada, dia_salida, mes_salida, anio_salida: word;
begin
  decodedate(clientes[i].fecha_entrada,anio_entrada,mes_entrada,dia_entrada);
  decodedate(clientes[i].fecha_salida,anio_salida,mes_salida,dia_salida);
  //Calcula el precio de la tarifa de un auto que entro y salio en el mismo dia
  if (mes_entrada = mes_salida) and (dia_entrada = dia_salida) and (anio_entrada = anio_salida) then begin
    clientes[i].cobro:= estacionamiento.tarifaEnElDia(i);
  end
  else
    begin
      diferencia:= (DaysBetween(clientes[i].fecha_entrada,clientes[i].fecha_salida));
      clientes[i].cobro:= estacionamiento.calcularCobro(i,diferencia,dia_entrada,dia_salida);
    end;
end;

end.
