unit TADrecur_bomba;

interface
uses
System.SysUtils, Winapi.Windows;
type
  bomba1=object
  public
  function bomba(n,b:integer):string;
  end;

implementation

function bomba1.bomba(n,b:integer):string;
var s:string;
res1:integer;
   function recursiva_b (n,b:integer):string ;
      begin
        if (b<n) then  //caso base bomba es menor que numero
          begin
            res1:=(n div b);
            n:=n - res1;
            if res1>b then
              recursiva_b:=recursiva_b(res1,b)
              else
                s:=s+' '+res1.tostring;
            if n>b then
              recursiva_b:=recursiva_b(n,b)
                else
                  s:=s+' '+n.tostring;
          end
          else
            begin
               s:=s+' '+n.tostring;
               recursiva_b:=s;
            end;
      end;
begin
   res1:=(n div b);
   n:=n - res1;
   recursiva_b(res1,b);
   recursiva_b(n,b);
   bomba:=s;
end;


end.
