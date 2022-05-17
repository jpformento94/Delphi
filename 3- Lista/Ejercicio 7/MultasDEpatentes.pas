unit MultasDEpatentes;
interface
uses
Tipos,ListArray,fecha;
type
  EnumeradoEstado=(pendiente,abonada,anulada);
  DatosMulta=record
  fecha:fechas;
  importe:double;
  estado:EnumeradoEstado;
  end;
  vehiculo=object
  private
    ListaAutos:lista;
    ListaMultas:lista;
    Puntero:^Lista;
    Puntero2:^DatosMulta;
  public
     Function CargarAuto(patente:String):boolean;
     Function CargarMultaPatente(patente:String;Numero:String;fecha:fechas;importe:double;estado:EnumeradoESTADO):boolean;
     Function MostrarLista():string;
     function totalmulta(patente:string):integer;
     function MultaMasAntigua(patente:string):string;
     function MultaMasReciente(patente:string):string;
     function setEstado(estado:enumeradoestado;patente:string;acta:string):boolean;
     procedure inic_autos();
  end;


implementation

procedure vehiculo.inic_autos();
  begin
    listaAutos.Crear(Cadena,10);
    ListaMultas.Crear(Cadena,10);
  end;

Function vehiculo.CargarAuto(patente:String):boolean;
var auto:TipoElemento;
begin
  Auto.clave:=patente;
  //auto.valor2:=Puntero;
  ListaAutos.Agregar(auto);
end;

Function vehiculo.MostrarLista():string;
begin
  mostrarlista:=ListaAutos.RetornarClaves;
end;

Function vehiculo.CargarMultaPatente(patente:String;Numero:String;fecha:fechas;importe:double;estado:EnumeradoESTADO):boolean;
var Multas:tipoelemento;
EncontrarElem:tipoelemento;
datos:datosMulta;
posicion:longint;
begin
   Multas.clave:=numero;
   Datos.fecha:=fecha;
   Datos.importe:=importe;
   Datos.estado:=estado;
   Multas.Valor2:=Puntero2;//NIL¿?
   EncontrarElem.Clave:=patente;
   posicion:=ListaAutos.Buscar(EncontrarElem);
   ListaMultas.Agregar(Multas);
end;

function vehiculo.totalmulta(patente:string):integer;
var
elemento:tipoelemento;
posicion:Longint;
listapatentes:lista;
sumatotal:Longint;
punteroAux:pointer;
begin
   elemento.clave:=patente;
   posicion:=ListaAutos.Buscar(elemento);
   elemento:=listaAutos.Recuperar(posicion);
   punteroAux:=elemento.Valor2;
   listapatentes:=puntero^;//NIL¿?
   posicion:=listapatentes.comienzo;
   while posicion<>listapatentes.fin do
    begin
      elemento:=listapatentes.Recuperar(posicion);
      sumatotal:=sumatotal+elemento.Valor1;
      posicion:=listapatentes.Siguiente(posicion);
    end;
   elemento:=listapatentes.Recuperar(posicion);
   sumatotal:=sumatotal+elemento.Valor1;
   totalmulta:=sumatotal;
end;

function vehiculo.MultaMasAntigua(patente:string):string;
var
elemento:tipoelemento;
datos,datosAntiguo:datosmulta;
MAntiguo:tipoelemento;
posicion:Longint;
listapatentes:lista;
begin
   elemento.clave:=patente;
   posicion:=ListaAutos.Buscar(elemento);
   elemento:=listaautos.recuperar(listaautos.comienzo);
   listapatentes:=puntero^;
   posicion:=listapatentes.Comienzo;
   elemento:=listapatentes.Recuperar(posicion);
   posicion:=listapatentes.Siguiente(posicion);
   MAntiguo:=elemento;
   while posicion<>listapatentes.fin do
    begin
      elemento:=listapatentes.Recuperar(posicion);
      datos:=puntero2^;
      //datosAntiguo:=MAntiguo.Valor2^;
      if not(datosAntiguo.fecha.vencido(datosAntiguo.fecha)) then
         MAntiguo:=elemento;
      posicion:=listapatentes.Siguiente(posicion);
    end;
    elemento:=listapatentes.Recuperar(posicion);
    datos:=puntero2^;
    //datosAntiguo:=MAntiguo.Valor2^;
    if not(datosAntiguo.fecha.vencido(datosAntiguo.fecha)) then
      MAntiguo:=elemento;
    posicion:=listapatentes.Siguiente(posicion);
    MultaMasAntigua:=MAntiguo.ArmarString();
end;

function vehiculo.MultaMasReciente(patente:string):string;
var
elemento:tipoelemento;
datos,datosReciente:datosmulta;
MReciente:tipoelemento;
posicion:Longint;
listapatentes:lista;
begin
   elemento.clave:=patente;
   posicion:=ListaAutos.Buscar(elemento);
   elemento:=listaautos.recuperar(listaautos.comienzo);
   listapatentes:=puntero^;
   posicion:=listapatentes.Comienzo;
   elemento:=listapatentes.Recuperar(posicion);
   posicion:=listapatentes.Siguiente(posicion);
   MReciente:=elemento;
   while posicion<>listapatentes.fin do
    begin
      elemento:=listapatentes.Recuperar(posicion);
      datos:=puntero2^;
      //datosReciente:=MReciente.Valor2^;
      if (datosReciente.fecha.vencido(datosReciente.fecha)) then
         MReciente:=elemento;
      posicion:=listapatentes.Siguiente(posicion);
    end;
    elemento:=listapatentes.Recuperar(posicion);
    datos:=puntero2^;
    //datosReciente:=MReciente.Valor2^;
    if (datosReciente.fecha.vencido(datosReciente.fecha)) then
      MReciente:=elemento;
    posicion:=listapatentes.Siguiente(posicion);
    MultaMasReciente:=MReciente.ArmarString();
end;

function vehiculo.setEstado(estado:enumeradoestado;patente:string;acta:string):boolean;
var
elemento:tipoelemento;
datos,datosAntiguo:DatosMulta;
bandera:boolean;
posicion:Longint;
listapatentes:lista;
begin
    bandera:=False;
    elemento.clave:=patente;
    posicion:=ListaAutos.Buscar(elemento);
    elemento:=listaautos.recuperar(listaautos.comienzo);
    listapatentes:=puntero^;
    posicion:=listapatentes.Comienzo;
    elemento:=listapatentes.Recuperar(posicion);
    posicion:=listapatentes.Siguiente(posicion);
    while (posicion<>listapatentes.fin) and not(bandera) do
    begin
      elemento:=listapatentes.Recuperar(posicion);
      //datos:=elemento.valor2^;
      posicion:=listapatentes.Siguiente(posicion);
      if elemento.Clave=acta then
        bandera:=True;
    end;
    datos.estado:=estado;
    listaautos.actualizar(elemento,listapatentes.Anterior(posicion));
    setEstado:=True;
end;

end.
