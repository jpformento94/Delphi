unit TADabm;

interface
uses arbolesBinariosBusqueda,tipos,Vcl.Dialogs,System.SysUtils;

type
  registro=record

    Cuit:string[20];   //CLAVE
    RazonSocial:String[20];
    Domicilio:string[20];
    Telefono:string[20];
    Celular:string[20];
    Estado:boolean;
  end;

  Fichero = File of registro;

  ABM=object
  private
     A:ArbolBB;
     Archivo:fichero;
  public
     function MostrarAlta():string;
     function mostrarModificaciones():string;
     function MostrarBaja ():string;
     procedure CargarArbol ();
     procedure Buscar ( var R:Registro; var B:Boolean) ;
     function buscaregistro():string;
     //function mostrar():string;
     function mostrarArbol():string;
  end;
var
s:string[255];

implementation

function ABM.buscaregistro():string;
var
  X:Tipoelemento;
  P:PosicionArbol;
  pR:^Registro;
begin
  P:=A.BusquedaBinaria(X);
  if P = Nulo then
   buscaregistro:=('No se encontro el dato')
   else
   begin
   pR:=P.datos.Valor2;
   buscaregistro:=('Cuit:' + (p.datos.clave))
             +('Domicilio:' + pR^.Domicilio)+('Razon social:' + pR^.Razonsocial)+
             ('Telefono' + pR^.Telefono)+('Celular' + pR^.celular);
   end;
end;

function ABM.MostrarAlta():string;

  procedure Alta();
  var
  B:Boolean;
  Value:String;
  R:Registro;
  begin
    Buscar(R,B);
    if B=false then
    begin
      R.cuit:= (inputbox('Alta de registro','Ingrese Cuit',' ') ) ;
      R.RazonSocial:= inputbox('Alta de registro','Ingrese Razon social',' ')  ;
      R.Domicilio:=inputbox('Alta de registro','Ingrese el domicilio',' ' ) ;
      R.Telefono:= (inputbox('Alta de registro','Ingrese el telefono',' ' )) ;
      R.Celular:= (inputbox('Alta de registro','Ingrese el celular',' ' )) ;
      R.estado:=True;
      Seek(Archivo,Filesize(Archivo));
    end
    else
    begin
      R.estado:=true;
      Seek(Archivo,FilePos(Archivo)-1);
    end;
    write(Archivo,R);
  end;

begin
 Reset(Archivo);
 alta();
 CloseFile(Archivo);
 mostrarAlta:='Alta correcta';
end;

{function ABM.mostrar():string;
var
  R:Registro;
  resultado:string;
begin
 Reset(Archivo);
 while not eof(Archivo) do
  begin
    Read(Archivo,R);
    if R.estado=True then
      begin
        resultado:=('Cuil:'+ R.Cuit.Tostring)+('Razon social:'+ R.RazonSocial)+
                    ('Domicilio:'+ R.Domicilio)+('Telefono:'+ R.Telefono.ToString)+
                    ('Celular'+ R.Celular.ToString);
      end;
  end;
  CloseFile(Archivo);
  mostrar:=resultado;
end;}
procedure ABM.Buscar ( var R:Registro; var B:Boolean) ;
var Value:String;
begin
  B:=false;
  Value:= InputBox('Ingresar registro' , 'Ingrese alguno de los indices' , ' ');
  while not eof (Archivo) and B=false do
  begin
    Read(Archivo,R);
    if ((Value=(r.cuit)) or (value = (R.Celular))) then
    B:=True;
  end;
 end;

function ABM.mostrarModificaciones():string;
var
  R:Registro;
  B:Boolean;

  procedure Modificaciones(r:registro);
  begin
     R.telefono:=(Inputbox('Modificacion de registro','Ingrese nuevo telefono',' '));
     R.Domicilio:=Inputbox('Modificacion de registro','Ingrese nuevo domicilio',' ');
     Seek(Archivo,Filepos(Archivo)-1);
     write(Archivo,R);
  end;

begin
   b:=True;
   Reset(Archivo);
   Buscar(R,B);
   Modificaciones(R);
   Closefile(Archivo);
   mostrarModificaciones:=('Modificacion correcta');
end;



function ABM.MostrarBaja():string;
var
  r:registro;
  B:Boolean;

  Procedure Baja (var R:Registro);
   begin
    R.estado:=False;
    Seek(Archivo,Filepos(Archivo)-1);
    write(Archivo,R);
   end;

begin
  B:=True;
  Reset(Archivo);
  Buscar(R,B);
  Baja(R);
  Closefile(Archivo);
  mostrarBaja:='Baja correcta';
end;


function carga():registro;
var r:registro;
begin
      R.cuit:= (inputbox('','Ingrese Cuit',' ') ) ;
      R.RazonSocial:= inputbox('','Ingrese Razon social',' ')  ;
      R.Domicilio:=inputbox('','Ingrese el domicilio',' ' ) ;
      R.Telefono:= (inputbox('','Ingrese el telefono',' ' )) ;
      R.Celular:= (inputbox('','Ingrese el celular',' ' )) ;
      R.estado:=True;
      carga:=r;
end;

procedure ABM.CargarArbol ();
var
  x:TipoElemento;
  R:Registro;
  pR:^Registro;
begin
  AssignFile(Archivo,'C:\Users\maga_\OneDrive\Documentos\GitHub\Trabajos_Practicos_Grupales--Programacion-II-UNLu\TP6\Ejercicio7-8\archivo.txt');
  rewrite(Archivo);
  //s:=ExtractFilePath('Archivo.txt');
  r:=carga;
  if R.estado then
  begin
    X.clave:=R.Cuit;
    new(pR);
    pR^:=R;
    X.valor2:=pR;
    A.Insertar(X);
    write(archivo,r);
    closefile(archivo);
  end;
end;

function ABM.mostrarArbol():string;
begin
  mostrarArbol:=a.PreOrden;
end;
end.
