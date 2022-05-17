unit uPuntajePacMan;

interface

uses
  SysUtils, Tipos, ListArray;


type
  puntaje = object
    private
      function score(n:tipoelemento):integer;
    public
      recorrido: lista;
      procedure cargarRecorrido1();
      procedure cargarRecorrido2();
      function calcularPuntos():string;
  end;

implementation

procedure puntaje.cargarRecorrido1();
var
  x: tipoelemento;
begin
  recorrido.Crear(Cadena,12);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'frutilla';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'banana';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'fantasma';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'cerezas';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
end;

procedure puntaje.cargarRecorrido2();
var
  x: tipoelemento;
begin
  recorrido.Crear(Cadena,14);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'banana';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'bonus';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'fantasma';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
  x.Clave:= 'cerezas';
  recorrido.Agregar(x);
  x.Clave:= 'puntito';
  recorrido.Agregar(x);
end;

function puntaje.score(n:tipoelemento): Integer;
begin
  if (n.Clave = 'puntito') then result:= 1;
  if (n.Clave = 'frutilla') then  result:= 10;
  if (n.Clave = 'banana') then result:= 30;
  if (n.Clave = 'cerezas') then result:= 50;
  if (n.Clave = 'fantasma') then  result:= 100;
end;

function puntaje.calcularPuntos():string;
var
  puntos, pasos: integer;
  p: posicionlista;
  x: tipoelemento;
  bonus: boolean;
begin
  bonus:= false;
  puntos:= 0;
  pasos:= 0;
  p:= recorrido.Comienzo;
  {Recorro la lista de objetos que comio Pac-Man}
  while (p<>Nulo) do  begin
    x.Clave:= recorrido.Recuperar(p).Clave;
    {Logica de control de puntos}
    //Si come un fantasma y no tenia bonus pone los puntos en 0 y dice que perdio
    if (x.Clave = 'fantasma') and (bonus = false) then begin
      result:= 'PERDISTE';
      exit;
    end;
    {Si encuentra un bonus pone en 10 los pasos
      si ya tenia un bonus activo lo reinicia}
    if (x.Clave = 'bonus') then begin
      bonus:= true;
      pasos:= 10;
    end;
    {Si tenia un bonus activo los puntos valen el doble}
    if (bonus = true) then  begin
      puntos:= puntos + (score(x) * 2);
      dec(pasos);
    end
    else
      {Si no tengo un bonus activo los puntos valen como estan declarados}
      puntos:= puntos + score(x);
    {Si pasos es mayor a 0, decremento una unidad
      si no hay mas pasos para decrementar, pongo el bonus en false}
    if (pasos <= 0) then
      bonus:= false;
    p:= recorrido.Siguiente(p);
  end;
  result:= inttostr(puntos) + ' puntos.';
end;

end.
