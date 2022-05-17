unit diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,TAD_tarjeta,ShellApi,fecha;

type
  TForm1 = class(TForm)
    dia: TEdit;
    mes: TEdit;
    Anio: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    limite1cuota: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    limiteMasCuotas: TEdit;
    Cargar: TButton;
    validarNumero: TButton;
    entidadEmisora: TButton;
    GestionarCompra: TButton;
    MostrarLimiteDeCompra: TButton;
    diahoy: TEdit;
    meshoy: TEdit;
    añohoy: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    NumeroCuotas: TEdit;
    Label10: TLabel;
    Total: TEdit;
    Label12: TLabel;
    Comprar: TButton;
    MostrarInfoCompra: TMemo;
    Label11: TLabel;
    MostrarValidacion: TEdit;
    mostrarEntidad: TEdit;
    mostrarLimites: TMemo;
    Numero: TEdit;
    Reinicio: TButton;
    MostrarDatos: TMemo;
    procedure validardigitos();
    procedure CargarClick(Sender: TObject);
    procedure GestionarCompraClick(Sender: TObject);
    procedure ComprarClick(Sender: TObject);
    procedure validarNumeroClick(Sender: TObject);
    procedure entidadEmisoraClick(Sender: TObject);
    procedure MostrarLimiteDeCompraClick(Sender: TObject);
    procedure ReinicioClick(Sender: TObject);


  private
    { Private declarations }
    tarjetaNueva:tarjeta;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


procedure tform1.validardigitos();
begin
  if (length(numero.text))<>16  then
    begin
      showmessage('La cantidad de digitos no corresponde a una tarjeta de credito(16 digitos)');
      //Primero abro de nuevo el programa
      ShellExecute(Handle,nil,('punto10.exe'),'','',SW_Shownormal);
      //Después de abrir el pograma, este se cierra
      Application.Terminate;
    end;
end;
procedure TForm1.CargarClick(Sender: TObject);
var numero8,numero16:integer;
begin
//ocultar
  Label3.Visible:=false;
   Label4.Visible:=false;
   Label5.Visible:=false;
   Label6.Visible:=false;
   Label1.Visible:=false;
   Label2.Visible:=false;
   Numero.Visible:=false;
   dia.Visible:=false;
   mes.Visible:=false;
   anio.Visible:=false;
   limite1cuota.Visible:=false;
   limiteMasCuotas.Visible:=false;
   mostrarDatos.Visible:=true;
//mostrar
   mostrarDatos.Visible:=true;
   validarNumero.Visible:=true;
   entidadEmisora.Visible:=true;
   GestionarCompra.Visible:=true;
   mostrarLimiteDeCompra.Visible:=true;
   cargar.Visible:=false;
   validardigitos();
   numero8:=strtoint(copy(numero.text,1,8));
   numero16:=strtoint(copy(numero.text,9,16));
   reinicio.Visible:=true;
   tarjetaNueva.Carga(numero8,numero16,
                      strtoint(dia.text),strtoint(mes.text),strtoint(anio.text),
                      strtoint(limite1cuota.text),strtofloat(limitemascuotas.text));

   mostrarDatos.Lines.Add('-----INFORMACIÓN DE LA TARJETA-----');
   mostrarDatos.Lines.Add('Número de la tarjeta:' + inttostr(tarjetaNueva.getnumero1)+ inttostr(tarjetaNueva.getnumero2));
   mostrarDatos.Lines.Add('Emisora de la tarjeta:' + tarjetaNueva.entidadEmisora);
   mostrarDatos.Lines.Add('Vencimiento:'+tarjetaNueva.getfechavencimiento.mostrarFecha);
   mostrarDatos.Lines.Add('Limite de compra para 1 cuota:$'+ floattostr(tarjetaNueva.getlimiteCredito1cuota));
   mostrarDatos.Lines.Add('Limite de compra para más cuota:$'+ floattostr(tarjetaNueva.getlimitecreditocuotas));
;

end;

procedure TForm1.ComprarClick(Sender: TObject);
var
fechaHoy:fechas;


begin
  mostrarInfoCompra.Visible:=true;
  Label11.Visible:=true;
  fechaHoy.cargar(strtoint(diaHoy.text),strtoint(mesHoy.text),strtoint(añohoy.text));
  if tarjetaNueva.Validarcompra(strtoint(NumeroCuotas.text),
                            strtoint(total.Text),fechaHoy) then
  begin
    tarjetaNueva.reducirLimiteDeCredito(strtoint(NumeroCuotas.text), strtoint(total.Text));
    mostrarInfoCompra.Lines.add('La compra fue realizada con exito');
    mostrarInfoCompra.Lines.add('-----INFORMACIÓN-----');
    mostrarInfoCompra.Lines.add('Número de la tarjeta:' + inttostr(tarjetaNueva.getnumero1)+ inttostr(tarjetaNueva.getnumero2));
    mostrarInfoCompra.Lines.add('Emisora de la tarjeta:' + tarjetaNueva.entidadEmisora);
    mostrarInfoCompra.Lines.add('-----------------------------------');
    mostrarInfoCompra.Lines.add('Total a pagar:$'+ total.Text);
    mostrarInfoCompra.Lines.add('Cuotas:' + numeroCuotas.Text);
    mostrarInfoCompra.Lines.add('Pago por cuotas:$' +
                                floattostr(strtoint(total.Text)/strtoint(numeroCuotas.Text)));
  end
  else
    mostrarInfoCompra.Lines.add('La compra es invalida');

end;

procedure TForm1.entidadEmisoraClick(Sender: TObject);
begin
  cargar.Visible:=false;
  mostrarentidad.visible:=true;
  mostrarEntidad.text:=tarjetaNueva.entidadEmisora;
end;



procedure TForm1.GestionarCompraClick(Sender: TObject);
begin
  Label9.Visible:=true;
  Label10.Visible:=true;
  Label12.Visible:=true;
  Label7.Visible:=true;
  Label8.Visible:=true;
  diahoy.Visible:=true;
  mesHoy.Visible:=true;
  añoHoy.Visible:=true;
  NumeroCuotas.Visible:=true;
  Total.Visible:=true;
  comprar.Visible:=true;

  mostrarLimites.Visible:=false;
  mostrarEntidad.Visible:=false;
  mostrarValidacion.Visible:=false;

 { validarNumero.Visible:=false;
  entidadEmisora.Visible:=false;
  GestionarCompra.Visible:=false;
  mostrarLimiteDeCompra.Visible:=false;  }

  cargar.Visible:=false;
  reinicio.Visible:=true;
end;




procedure TForm1.MostrarLimiteDeCompraClick(Sender: TObject);
begin
  cargar.Visible:=false;
  mostrarLimites.Visible:=true;
  mostrarLimites.Clear;
  mostrarLimites.Lines.Add('El limite de credito para una cuota es: ' +
                          floattostr(tarjetaNueva.getlimiteCredito1cuota));

  mostrarLimites.Lines.Add('El limite de credito para más cuotas es: '+
                          floattostr(tarjetaNueva.getlimitecreditocuotas));
end;

procedure TForm1.ReinicioClick(Sender: TObject);
begin
  ShellExecute(Handle,nil,('punto10.exe'),'','',SW_Shownormal);
  Application.Terminate;
end;

procedure TForm1.validarNumeroClick(Sender: TObject);
begin
  cargar.Visible:=false;
  mostrarValidacion.Visible:=true;
  if tarjetaNueva.validarNumero then
  begin
    mostrarValidacion.Text:='El número de la tarjeta es valido';
  end
  else
    mostrarValidacion.Text:='El número de la tarjeta es invalido';
end;

end.
