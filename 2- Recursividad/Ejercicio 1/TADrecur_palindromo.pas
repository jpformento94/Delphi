unit TADrecur_palindromo;

interface
uses
System.SysUtils, Winapi.Windows;
type
  palindromo1=object
  public
  function palindromo_recursivo(s:string):boolean;
  end;

implementation

function palindromo1.palindromo_recursivo(s:string):boolean;
begin
  if (length(s)=1) or (length(s)=0) then
    palindromo_recursivo:=True
  else
    begin
      if (s[1]<>s[length(s)]) then
        palindromo_recursivo:=False
      else
        begin
          s:=copy(s,2,(length(s)-2));
          palindromo_recursivo:=palindromo_recursivo(s);
        end;
    end;
end;
end.
