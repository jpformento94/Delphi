unit TADAgenda;

interface
uses listarray,tipos,SysUtils;
type
  agendas=object
    //Clave horario
    //Valor1 actividad
    //valor2 horariofinal
    Agenda:lista;

    //Clave actividad
    //Clave tiempo
    ListadoTiempo:lista;
    VARactividad:^string;

      procedure cargarTiempo ();
      function AgregarActividad(horario:string;Actividad:string):boolean;
      function SaberActividad (horario:string):string;
  end;

implementation

  //Funciones aux
  function  convertirAminutos(horario:string):string;
  var hora,minutos:integer;
  begin
    minutos:=strtoint (copy(horario,4,2));
    hora:=strtoint(copy(horario,1,2));
    while (hora>=1) do
    begin
      minutos:=minutos+60;
      dec(hora);
    end;
    convertirAminutos:= inttostr(minutos);
  end;
  function sumarMinutos(min1,min2:string):string;
  begin
    sumarMinutos:=inttostr(strtoint(min1)+strtoint(min2));
  end;


  //Funciones TAD
procedure agendas.cargarTiempo ();
  var elemento:tipoelemento;
  begin
    elemento.Clave:='reunion con gerente';
    elemento.Valor1:='30';
    listadoTiempo.Agregar(elemento);
    elemento.Clave:='atender cliente';
    elemento.Valor1:='10';
    listadoTiempo.Agregar(elemento);
    elemento.Clave:='atender cliente VIP';
    elemento.Valor1:='30';
    listadoTiempo.Agregar(elemento);
    elemento.Clave:='almuerzo de negocios';
    elemento.Valor1:='120';
    listadoTiempo.Agregar(elemento);
  end;
function agendas.agregarActividad(horario:string;Actividad:string):boolean;
  var Elemento:tipoelemento;
    elementoTiempo:tipoelemento;
    bandera:boolean;
    Posicion:longint;
    elementoRecuperado:tipoelemento;
    algo:longint;
  begin
    elemento.clave:= convertirAminutos(horario);
    elementorecuperado.clave:=actividad;
    algo:=ListadoTiempo.buscar(elementorecuperado);
    elementoTiempo:=listadoTiempo.Recuperar(algo);
    elemento.Valor1:=sumarminutos(elemento.clave,elementoTiempo.Valor1);
    varactividad^:=actividad;
    elemento.Valor2:=varActividad;
    bandera:=false;
    posicion:=agenda.Comienzo;
    while (bandera<>true) and (agenda.Fin<>posicion) do
    begin
       elementoRecuperado:=agenda.Recuperar(posicion);
       if (strtoint(elementoRecuperado.Valor1))>=(strtoint(elemento.Valor1)) then
          bandera:=true;
       posicion:=agenda.siguiente(posicion);
    end;
    if bandera=false then
    begin
      agenda.Agregar(elemento);
      agregarActividad:=true;
    end
    else
      agregarActividad:=false;
  end;

function agendas.SaberActividad (horario:string):string;
  var hora:integer; bandera:boolean;
  posicion:longint; elementorecuperado:tipoelemento;
  begin
    hora:=strtoint(convertirAminutos(horario));
    posicion:=agenda.Comienzo;
    while (bandera<>true) and (agenda.Fin<>posicion) do
    begin
       elementoRecuperado:=agenda.Recuperar(posicion);
       if (hora<=(strtoint(elementorecuperado.Valor1))) and (hora>=(strtoint(elementorecuperado.clave))) then
          bandera:=true;
       posicion:=agenda.siguiente(posicion);
    end;

     if bandera then
     begin
        posicion:=agenda.Anterior(posicion);
        elementoRecuperado:=agenda.Recuperar(posicion);
        SaberActividad:=varActividad^;
     end;

  end;
end.
