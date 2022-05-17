unit CajaRegistradora;

interface
uses SysUtils;
type
  moneda=record
    nombre:integer;
    cantidad:integer;
  end;

  B=array[1..7]of moneda;
  M=array [1..4]of moneda;
  monedero=object
   Billetes:B;
   Monedas:M;
   procedure inicMonedas();
   procedure inicBilletes();
   procedure inicvuelto();
   procedure cargarbilletes(diez:integer;veinte:integer;
                                cincuenta:integer; cien:integer;
                                docientos:integer; quinientos:integer;
                                mil:integer);
   procedure cargarMonedas(uno:integer;dos:integer;cinco:integer;
                                diez:integer);
   function darvuelto(billet_moned:monedero; precio:integer):monedero;
   function saldo():double;
   function mostrarmonedero():string;
  end;

implementation
 
procedure monedero.inicMonedas();
var
  I: Integer;
begin
  monedas[1].nombre:=1;
  monedas[2].nombre:=2;
  monedas[3].nombre:=5;
  monedas[4].nombre:=10;
end;
procedure monedero.inicBilletes();
var
  I: Integer;
begin
  billetes[1].nombre:=10;
  billetes[2].nombre:=20;
  billetes[3].nombre:=50;
  billetes[4].nombre:=100;
  billetes[5].nombre:=200;
  billetes[6].nombre:=500;
  billetes[7].nombre:=1000;
end;
procedure monedero.cargarMonedas(uno:integer;dos:integer;cinco:integer;
                                diez:integer);
begin
  if not(monedas[1].nombre=1) then
    inicMonedas();
  monedas[1].cantidad:=monedas[1].cantidad+uno;
  monedas[2].cantidad:=monedas[2].cantidad+dos;
  monedas[3].cantidad:=monedas[3].cantidad+cinco;
  monedas[4].cantidad:=monedas[4].cantidad+diez;
end;
procedure monedero.cargarbilletes(diez:integer;veinte:integer;
                                cincuenta:integer; cien:integer;
                                docientos:integer; quinientos:integer;
                                mil:integer);
begin
  if not(billetes[1].nombre=1) then
    inicBilletes();
  billetes[1].cantidad:=billetes[1].cantidad+diez;
  billetes[2].cantidad:=billetes[2].cantidad+veinte;
  billetes[3].cantidad:=billetes[3].cantidad+cincuenta;
  billetes[4].cantidad:=billetes[4].cantidad+cien;
  billetes[5].cantidad:=billetes[5].cantidad+docientos;
  billetes[6].cantidad:=billetes[6].cantidad+quinientos;
  billetes[7].cantidad:=billetes[7].cantidad+mil;
end;

function monedero.mostrarmonedero():string;
var s:string;
  I: Integer;
begin
  for I := 1 to length (Billetes) do
  begin
    if Billetes[i].cantidad>0 then
      s:= s+ 'Billete:'+ inttostr(Billetes[i].nombre)+'  cantidad:'
                        +inttostr(Billetes[i].cantidad)+(sLineBreak);

  end;
  for I := 1 to length (Monedas) do
  begin
    if monedas[i].cantidad>0 then
    s:= s+ 'Moneda:'+ inttostr(monedas[i].nombre)+'  cantidad:'
                        +inttostr(monedas[i].cantidad)+(sLineBreak);
  end;
  mostrarmonedero:=s;
end;
procedure monedero.inicvuelto();
var
  I: Integer;
begin
  billetes[1].nombre:=10;
  billetes[2].nombre:=20;
  billetes[3].nombre:=50;
  billetes[4].nombre:=100;
  billetes[5].nombre:=200;
  billetes[6].nombre:=500;
  billetes[7].nombre:=1000;
  monedas[1].nombre:=1;
  monedas[2].nombre:=2;
  monedas[3].nombre:=5;
  monedas[4].nombre:=10;
  for I := 1 to 4 do
    monedas[i].cantidad:=0;
  for I := 1 to 7 do
    billetes[i].cantidad:=0;

end;
function auxdarvuelto (devolver:integer; var billetes:b;var monedas:m):monedero;
var
  I: Integer;
  vuelto:monedero;
begin
 vuelto.inicvuelto();
  while (devolver>0) do
    begin
        for I := Length(billetes) downto 1 do
        begin
          if (devolver>=billetes[i].nombre) and (billetes[i].cantidad>0) then
          begin
            devolver:=devolver-billetes[i].nombre;
            billetes[i].cantidad:=billetes[i].cantidad -1;
            inc(vuelto.billetes[i].cantidad);
          end;
        end;
        for I := length(monedas) downto 1 do
        begin
          if (devolver>=monedas[i].nombre) and (monedas[i].cantidad>0) then
          begin
            devolver:=devolver-monedas[i].nombre;
            monedas[i].cantidad:=monedas[i].cantidad -1;
            inc(vuelto.monedas[i].cantidad);
          end;
        end;

    end;
    auxdarvuelto:=vuelto;
end;

procedure cargarBilletesYmonedas(billet_moned:monedero;var billetes:b; var monedas:m );
var
  I: Integer;
begin
  for I := 1 to 7 do
  begin
    billetes[I].cantidad:=billetes[I].cantidad + billet_moned.Billetes[i].cantidad;
  end;
  for I := 1 to 4 do
  begin
   monedas[I].cantidad:=monedas[I].cantidad + billet_moned.monedas[i].cantidad;
  end;
end;

function monedero.darvuelto (billet_moned:monedero; precio:integer):monedero;
var
  pago,i:integer;
begin
  pago:=0;
  cargarBilletesYmonedas(billet_moned, billetes, monedas);
  for I  := 1 to 4 do
    pago:=pago+billet_moned.monedas[i].cantidad*billet_moned.monedas[i].nombre;
  for I  := 1 to 7 do
    pago:=pago+billet_moned.billetes[i].cantidad*billet_moned.billetes[i].nombre;
  pago:=pago-precio;
  darVuelto:=(auxDarVuelto(pago,billetes,monedas));
end;

function monedero.saldo ():double;
var
  I: Integer;
  suma:double;
begin
  suma:=0;
  for I := 1 to 7 do
    begin
       suma:= suma+ billetes[i].nombre*billetes[i].cantidad;
    end;
  for I := 1 to 4 do
    begin
       suma:= suma+ monedas[i].nombre*monedas[i].cantidad;
    end;
  saldo:=suma;
end;

end.
