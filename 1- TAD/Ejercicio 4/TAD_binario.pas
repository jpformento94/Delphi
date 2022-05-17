unit TAD_binario;

interface
uses  System.SysUtils;

type
  binario=object
  private
    numero:integer;
  public
    function cargar (numeroNuevo:integer):boolean;
    function suma(numero2:binario):string;
    function resta(numero2:binario):string;
    function operacionAND(numero2:binario):string;
    function operacionOR(numero2:binario):string;
    function operacionXOR(numero2:binario):string;
  end;


implementation
function RecursivoValidar (numero:integer):boolean;
begin
  if numero=0 then
      RecursivoValidar:=true
  else
    if ((numero mod 10)<> 0) and ((numero mod 10)<> 1)then
    begin
      RecursivoValidar:=false;
    end
    else
      RecursivoValidar(numero div 10);
end;
function binario.cargar (numeroNuevo:integer):boolean;
begin
  if (RecursivoValidar (numeroNuevo)) then
  begin
    numero:=numeroNuevo;
    cargar:=True;
  end
  else
    cargar:=false;
end;

function RecursivoSuma (numero,numero2:integer;aux:integer):string;
begin
  if ((numero div 10) =0) or ((numero2 div 10)=0)then
  begin
        if (numero mod 10 =0) and (numero2 mod 10=0)  then
        begin
            if (numero2 div 10<>0)then
            begin
             recursivoSuma:= inttostr (numero2 div 10) + inttostr(aux);
            end
            else
               recursivoSuma:= inttostr (numero div 10) + inttostr(aux);
        end
        else
          if (numero mod 10 =1) and (numero2 mod 10=0) and (aux=0) then
          begin
            if (numero2 div 10<>0)then
            begin
             recursivoSuma:= inttostr (numero2 div 10) + inttostr(1);
            end
            else
               recursivoSuma:= inttostr (numero div 10) + inttostr(1);
          end
          else
            if (numero mod 10 =0) and (numero2 mod 10=1) and (aux=0) then
            begin
              if (numero2 div 10<>0)then
              begin
               recursivoSuma:= inttostr (numero2 div 10) + inttostr(1);
              end
              else
                 recursivoSuma:= inttostr (numero div 10) + inttostr(1);
              end
            else
              if (numero mod 10 =0) and (numero2 mod 10=0) and (aux=1) then
              begin
                if (numero2 div 10<>0)then
                begin
                 recursivoSuma:= inttostr (numero2 div 10) + inttostr(1);
                end
                else
                   recursivoSuma:= inttostr (numero div 10) + inttostr(1);
              end
              else
                if (numero mod 10 =1) and (numero2 mod 10=1) and (aux=0) then
                begin
                  if (numero2 div 10<>0)then
                  begin
                   recursivoSuma:= inttostr (numero2 div 10) + inttostr(10);
                  end
                  else
                     recursivoSuma:= inttostr (numero div 10) + inttostr(10);

                end
                else
                  if (numero mod 10 =1) and (numero2 mod 10=1) and (aux=1) then
                  begin
                    if (numero2 div 10<>0)then
                    begin
                     recursivoSuma:= inttostr (numero2 div 10) + inttostr(11);
                    end
                    else
                       recursivoSuma:= inttostr (numero div 10) + inttostr(11);

                  end;

  end
  else
  if (numero mod 10 =0) and (numero2 mod 10=0)  then
  begin
    recursivoSuma:= inttostr (aux) + recursivoSuma(numero div 10 ,numero2 div 10,0);
  end
  else
    if (numero mod 10 =1) and (numero2 mod 10=0) and (aux=0) then
    begin
      recursivoSuma:= inttostr (1) + recursivoSuma(numero div 10 ,numero2 div 10,0);
    end
    else
      if (numero mod 10 =0) and (numero2 mod 10=1) and (aux=0) then
      begin
        recursivoSuma:= inttostr (1) + recursivoSuma(numero div 10 ,numero2 div 10,0);
      end
      else
        if (numero mod 10 =0) and (numero2 mod 10=0) and (aux=1) then
        begin
          recursivoSuma:= inttostr (1) + recursivoSuma(numero div 10 ,numero2 div 10,0);
        end
        else
          if (numero mod 10 =1) and (numero2 mod 10=1) and (aux=0) then
          begin
            recursivoSuma:= inttostr (0) + recursivoSuma(numero div 10 ,numero2 div 10,1);
          end
          else
            if (numero mod 10 =1) and (numero2 mod 10=1) and (aux=1) then
            begin
              recursivoSuma:= inttostr (1) + recursivoSuma(numero div 10 ,numero2 div 10,1);
            end;

end;

function binario.suma(numero2:binario):string;
begin
  suma:=RecursivoSuma(numero,numero2.numero,0);
end;

function recursivoResta (numero,numero2:integer):string;
begin

end;
function binario.resta(numero2:binario):string;
begin
  resta:=RecursivoResta(numero,numero2.numero);
end;

function recursivoAND(numero,numero2:integer):string;
begin
  if (numero div 10 <>0) and (numero2 div 10<>0)  then
  begin
    recursivoAND:= inttostr ((numero mod 10) and (numero2 mod 10)) + recursivoAND((numero div 10),(numero2 div 10));
  end
  else
  if (numero div 10 =0) then
    recursivoAND:= inttostr(numero div 10) + inttostr ((numero mod 10) and (numero2 mod 10))
    else
       recursivoAND:= inttostr(numero2 div 10) + inttostr ((numero mod 10) and (numero2 mod 10));
end;
function binario.operacionAND(numero2:binario):string;
begin
  operacionAND:=recursivoAND(numero,numero2.numero);
end;

function recursivoOR(numero,numero2:integer):string;
begin
  if (numero div 10 <>0) and (numero2 div 10<>0)  then
  begin
    recursivoOR:= inttostr ((numero mod 10) OR(numero2 mod 10)) + recursivoOR((numero div 10),(numero2 div 10));
  end
  else
  if (numero div 10 =0) then
    recursivoOR:= inttostr(numero div 10) + inttostr ((numero mod 10) OR (numero2 mod 10))
    else
       recursivoOR:= inttostr(numero2 div 10) + inttostr ((numero mod 10) OR (numero2 mod 10));

end;
function binario.operacionOR(numero2:binario):string;
begin
  operacionOR:=recursivoOR(numero,numero2.numero);
end;

function recursivoXOR(numero,numero2:integer):string;
begin
  if (numero div 10 <>0) and (numero2 div 10<>0)  then
  begin
    recursivoXOR:= inttostr ((numero mod 10) XOR(numero2 mod 10)) + recursivoXOR((numero div 10),(numero2 div 10));
  end
  else
  if (numero div 10 =0) then
    recursivoXOR:= inttostr(numero div 10) + inttostr ((numero mod 10) XOR (numero2 mod 10))
    else
       recursivoXOR:= inttostr(numero2 div 10) + inttostr ((numero mod 10) XOR(numero2 mod 10));

end;
function binario.operacionXOR(numero2:binario):string;
begin
  operacionXOR:=recursivoXOR(numero,numero2.numero);
end;

end.
