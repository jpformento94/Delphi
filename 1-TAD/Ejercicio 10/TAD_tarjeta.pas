unit TAD_tarjeta;

interface
uses
fecha, sysutils;

type

  Tarjeta=object
  private
    numero8:integer;
    numero16:integer;
    fechaVencimiento:fechas;
    limiteCredito1cuota:double;
    limiteCreditocuotas:double;
    function setnumero(n1,n2:integer):boolean;
    function setfechaVencimiento(dia,mes,año:integer):boolean;
    function setLimiteCredito1cuota(n:integer):boolean;
    function setLimiteCreditoCoutas(n:integer):boolean;
 public
    procedure Carga(n1,n2:integer; dia,mes,año:integer; limiteCredito1,limitecuotas:double);
    function vencimiento(fHoy:fechas):boolean;
    function validarNumero():boolean;
    function entidadEmisora ():string;
    function Validarcompra(Ncuotas:integer;precio:double;fHoy:fechas):boolean;
    function reducirLimiteDeCredito (Ncuotas:integer; precio:double):boolean;
    function getlimiteCredito1cuota():double;
    function getlimitecreditocuotas():double;
    function getfechavencimiento():fechas;
    function getnumero1():integer;
    function getnumero2():integer;

  end;

implementation
//seters  y geters
function Tarjeta.setnumero(n1,n2:integer):boolean;
begin
   numero8:=n1;
   numero16:=n2;

end;
function Tarjeta.setfechaVencimiento(dia,mes,año:integer):boolean;
begin
    fechavencimiento.cargar (dia,mes,año);
    setfechaVencimiento:=true;
end;
function Tarjeta.setLimiteCredito1cuota(n:integer):boolean;
begin
  limiteCredito1cuota:=n;
end;
function Tarjeta.setLimiteCreditoCoutas(n:integer):boolean;
begin
  limitecreditocuotas:=n;
end;

function Tarjeta.getlimiteCredito1cuota():double;
begin
  getlimiteCredito1cuota:=limiteCredito1cuota;
end;
function Tarjeta.getlimitecreditocuotas():double;
begin
    getlimiteCreditocuotas:=limiteCreditocuotas;
end;
function Tarjeta.getfechavencimiento():fechas;
begin
   getfechaVencimiento:=fechavencimiento;
end;
function Tarjeta.getnumero1():integer;
begin
  getNumero1:=numero8;
end;
function Tarjeta.getnumero2():integer;
begin
  getNumero2:=numero16;
end;

//funciones

procedure Tarjeta.Carga(n1,n2:integer; dia,mes,año:integer; limiteCredito1,limitecuotas:double);
begin
  numero8:=n1;
  numero16:=n2;
  fechaVencimiento.cargar(dia,mes,año);
  limiteCredito1Cuota:=limiteCredito1;
  limiteCreditoCuotas:=limiteCuotas;
end;

function duplicarValorySumar(nTarjeta:integer; par:boolean):integer;
begin
   if ((nTarjeta div 10)=0) then   //caso base hay un solo digito
   begin
      if (not par) then  //impar
      begin
        if (2*(ntarjeta mod 10) >=10) then
        begin
          duplicarValorYsumar:=(((nTarjeta*2)div 10)+(nTarjeta *2)mod 10);
        end
        else
          duplicarValorYsumar:=((nTarjeta*2));
      end
      else
      duplicarValorYsumar:=nTarjeta;
   end
   else
     if (not par) then
     begin
        if (2*(ntarjeta mod 10) >=10) then
        begin
           duplicarValorYsumar:= (((2*(nTarjeta mod 10))div 10)+((2*(nTarjeta mod 10))mod 10)+
                                   duplicarValorYsumar((nTarjeta div 10),true)) ;
        end
        else
        duplicarValorYsumar:= (2*(nTarjeta mod 10))+ duplicarValorYsumar((nTarjeta div 10),true) ;
     end
     else
     begin
      duplicarValorYsumar:= ((nTarjeta mod 10))+ duplicarValorYsumar((nTarjeta div 10),false) ;
     end;

end;

function Tarjeta.validarNumero ():boolean;
var aux,aux2:integer;       //5547302941251935
begin
  aux:=(duplicarValorYsumar(numero8,true));
  aux2:= duplicarValorYsumar(numero16,true);

  validarNumero :=((aux+aux2 )mod 10)=0;
end;


function Tarjeta.entidadEmisora ():string;
var
  op1, op2, op3, op4 : integer;
begin
  op1 := (numero8 div 10000000);
  op2 := (numero8 div 1000000);
  op4 := (numero8 div 10000);

  if (op1 = 4) then
    entidadEmisora := ('Visa')
  else
    if (op2 >= 51) and (op2 <= 55) then
      entidadEmisora := ('MasterCard')
    else
      if (op2 >= 34) and (op2 <= 37) then
        entidadEmisora := ('American Express')
      else
        if (op2 = 50) or (op2 >= 56) and (op2 <= 58) then
          entidadEmisora := ('Maestro')
        else
          if (op4 >= 2021) and (op4 <= 2720) then
            entidadEmisora := ('MasterCard')
          else
            entidadEmisora:=('Otra');

end;

function Tarjeta.vencimiento(fHoy:fechas):boolean;
begin
   vencimiento:=fechavencimiento.Vencida(fhoy);
end;

function validarLimite(limiteCredito:double;precio:double):boolean;
begin
    validarLimite:=(precio<=limiteCredito);
end;

function Tarjeta.Validarcompra(Ncuotas:integer;precio:double;fHoy:fechas):boolean;
begin
  if Ncuotas=1 then
  begin
    validarcompra:=validarLimite(limiteCredito1cuota,precio)and validarNumero()and (not vencimiento(fHoy));
  end
  else
   validarcompra:=validarLimite(limiteCreditocuotas,precio)and validarNumero()and (not vencimiento(fHoy));
end;

function Tarjeta.reducirLimiteDeCredito (Ncuotas:integer; precio:double):boolean;
var UnaCuota:double;
begin
  unacuota:=precio/ncuotas;
  if (Ncuotas=1) then
  begin
    if (entidadEmisora='Visa') or  (entidadEmisora= 'American Express') then
    begin
      limiteCredito1cuota:=limiteCredito1cuota-((unacuota*80/100));
    end
    else
      limiteCredito1cuota:=limiteCredito1cuota-unacuota;
  end
  else
    if (Ncuotas<=6) then
    begin
       limiteCredito1cuota:=limiteCredito1cuota-UnaCuota;
       limiteCreditoCuotas:= limiteCreditoCuotas - ((UnaCuota*(ncuotas-1))*90/100);
    end
    else
      limiteCreditoCuotas:=limiteCreditoCuotas - (precio*70/100);
end;

end.
