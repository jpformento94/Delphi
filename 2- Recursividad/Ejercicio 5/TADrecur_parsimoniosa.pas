unit TADrecur_parsimoniosa;

interface
uses
System.SysUtils, Winapi.Windows;
type
  parsimoniosa=object
  public
  function parsimoniosa_recursivo(n,m:integer):string;
  end;
var
  texto:string;

implementation
function parsimoniosa.parsimoniosa_recursivo(n,m:integer):string;
var
s1,s2,s3:string;
begin
   s1:='**\/**';
   s2:='++';
   s3:='**';
   if (n<m) then
    parsimoniosa_recursivo:=texto
   else
    begin
    if m=1 then
      texto:=s1
    else
      if (m mod 2=0) then
        texto:=s2+'\'+texto+'/'+s2
      else
        texto:=s3+'\'+texto+'/'+s3;
     m:=m+1;
     parsimoniosa_recursivo:=parsimoniosa_recursivo(n,m);
   end



end;


end.
