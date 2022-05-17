unit TADrecur_producto;

interface
uses
System.SysUtils, Winapi.Windows;
type
  Producto=object
  public
  function producto_recursivo(n,m:integer):integer;
  end;

implementation

function producto.producto_recursivo(n,m:integer):integer;
var suma:integer;
begin
  if m=1 then
    producto_recursivo:=n
  else
  begin
    m:=m-1;
    producto_recursivo:=n+producto_recursivo(n,m);
  end


end;

end.
