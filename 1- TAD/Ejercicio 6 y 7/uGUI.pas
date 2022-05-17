unit uGUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uEstacionamiento,
  Vcl.ComCtrls, DateUtils;

type
  TfGUI = class(TForm)
    lCantTexto: TLabel;
    lCantidad: TLabel;
    bAgregar: TButton;
    bSacar: TButton;
    lPatente: TLabel;
    ePatente: TEdit;
    lHora: TLabel;
    eHora: TEdit;
    lMinutos: TLabel;
    memo: TMemo;
    lEstadia: TLabel;
    lMediaEstadia: TLabel;
    lCantEst: TLabel;
    lCantMediaEst: TLabel;
    lTarifaPorHora: TLabel;
    lTarifaHora: TLabel;
    memoCobro: TMemo;
    datePicker: TDateTimePicker;
    l10min: TLabel;
    l10minutos: TLabel;
    lDesde: TLabel;
    eDiaDesde: TEdit;
    eMesDesde: TEdit;
    lBarra1: TLabel;
    lFechaHasta: TLabel;
    eDiaHasta: TEdit;
    eMesHasta: TEdit;
    lBarra2: TLabel;
    bCalcularRecaudacion: TButton;
    memoRecaudacion: TMemo;
    bRecaudacionPorUnDia: TButton;
    cambiarTarifas: TButton;
    Diaria: TEdit;
    medioDia: TEdit;
    xhora: TEdit;
    diezmin: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cargar: TButton;
    Label2: TLabel;
    eminutos: TEdit;
    procedure bAgregarClick(Sender: TObject);
    procedure bSacarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
   // procedure bSetTarifaClick(Sender: TObject);
    procedure bCalcularRecaudacionClick(Sender: TObject);
    procedure bRecaudacionPorUnDiaClick(Sender: TObject);
    procedure cambiarTarifasClick(Sender: TObject);
    procedure cargarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fGUI: TfGUI;
  e: estacionamiento;

implementation

{$R *.dfm}

//Validar datos
function validarDatos(hora,minutos:integer):boolean;
  begin
    if (hora>=0) and (hora<=23)  then begin   //Valido las horas
      if (minutos>=0) and (minutos<=59) then begin    //Valido los minutos
        result:= true;    //Si pasa la validacion retorna true
      end
      else
      ShowMessage('Los minutos deben estar entre 0 y 59');
    end
    else
      ShowMessage('La hora debe ser un valor entre 00 y 23');
end;

//LLamado a la funcion agregar auto
procedure TfGUI.bAgregarClick(Sender: TObject);
var
  hora, minutos: integer;
  patente: string[7];
  fecha: tdate;
begin
  //El form valida que no tenga datos en blanco
  if (eHora.Text<>'') and (eMinutos.Text<>'') and (ePatente.Text<>'') then
    begin
      //Una vez valido que no tiene datos en blanco los convierto y llamo a validar
      hora:= strtoint(eHora.Text);
      minutos:= strtoint(eMinutos.Text);
      patente:= ePatente.Text;
      if (validarDatos(hora,minutos) = true) then
        begin
          memo.Clear;
          fecha:= datePicker.Date;
          e.cargarAuto(patente,fecha,hora,minutos);
          lCantidad.Caption:= e.getCantidadDeAutos.ToString;
          memo.Lines.Add(e.clientesToString);
        end;
    end
  else
    ShowMessage('No deje datos en blanco');
end;

//Llamado a la funcion sacar auto y devuelve por pantalla cuanto debe abonar
procedure TfGUI.bCalcularRecaudacionClick(Sender: TObject);
var
  dDesde,mDesde,dHasta,mHasta:integer;
begin
  dDesde:= strtoint(eDiaDesde.Text);
  mDesde:= strtoint(eMesDesde.Text);
  dHasta:= strtoint(eDiaHasta.Text);
  mHasta:= strtoint(eMesHasta.Text);
  memoRecaudacion.Clear;
  memoRecaudacion.Lines.Add(e.recaudacionDiaria(dDesde,mDesde,dHasta,mHasta));
end;

procedure TfGUI.bRecaudacionPorUnDiaClick(Sender: TObject);
var
  dDesde,mDesde:integer;
begin
  dDesde:= strtoint(eDiaDesde.Text);
  mDesde:= strtoint(eMesDesde.Text);
  memoRecaudacion.Lines.Add(e.recaudacionPorUnDia(dDesde,mDesde))
end;

procedure TfGUI.bSacarClick(Sender: TObject);
var
  hora, minutos, dia, mes: integer;
  patente: string[7];
  fecha: tdate;
begin
  //El form valida que no tenga datos en blanco
  if (eHora.Text<>'') and (eMinutos.Text<>'') and (ePatente.Text<>'') then
    begin
      //Una vez valido que no tiene datos en blanco los convierto y llamo a validar
      hora:= strtoint(eHora.Text);
      minutos:= strtoint(eMinutos.Text);
      patente:= ePatente.Text;
      if (validarDatos(hora,minutos) = true) then
        begin
          memo.Clear;
          memoCobro.Clear;
          fecha:= datePicker.Date;
          memoCobro.Lines.Add(e.sacarAuto(patente,fecha,hora,minutos));
          lCantidad.Caption:= e.getCantidadDeAutos.ToString;
          memo.Lines.Add(e.clientesToString);
        end;
    end
  else
    ShowMessage('No deje datos en blanco');
end;

//Permite camibar el valor de la tarifa mientras se ejecuta el programa
{procedure TfGUI.bSetTarifaClick(Sender: TObject);
var
  t:double;
begin
  t:= StrToFloat(InputBox('Ingresar tarifa del dia', 'Tarifa', '100'));
  e.setTarifa(t);
  lCantEst.Caption:= e.tarifa.ToString;
  lCantMediaEst.Caption:= e.media_tarifa.ToString;
  lTarifaHora.Caption:= e.tarifa_por_hora.ToString;
  l10Minutos.Caption:= e.tarifa_por_10min.ToString;
end;}

procedure TfGUI.cambiarTarifasClick(Sender: TObject);
begin
  label1.Visible:=true;
  label3.Visible:=true;
  label4.Visible:=true;
  label5.Visible:=true;
  diaria.Visible:=true;
  mediodia.Visible:=true;
  xhora.Visible:=true;
  diezmin.Visible:=true;
  cargar.visible:=true;
end;

procedure TfGUI.cargarClick(Sender: TObject);
begin
  e.setTarifa(strtoint(diaria.Text),strtoint(diezmin.Text),
              strtoint(mediodia.Text),strtoint(xhora.Text));

  lcantest.Caption:= diaria.Text;
  lcantmediaest.Caption:= mediodia.Text;
  ltarifahora.Caption:=xhora.Text;
  l10minutos.Caption:=diezmin.Text;

end;

//Crea el form e inicializa el vector vacio

procedure TfGUI.FormCreate(Sender: TObject);
var
  t:double;
begin
  e.inicializarVectorClientes;
  e.crearArchivoTexto;
  label1.Visible:=false;

  label3.Visible:=false;
  label4.Visible:=false;
  label5.Visible:=false;
  diaria.Visible:=false;
  mediodia.Visible:=false;
  xhora.Visible:=false;
  diezmin.Visible:=false;
  cargar.Visible:=false;
end;


end.
