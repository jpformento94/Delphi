unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,MultasDEpatentes,tipos,fecha;

type
  TForm1 = class(TForm)
    CargMulta: TButton;
    Patente: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Fecha: TLabel;
    diahoy: TEdit;
    meshoy: TEdit;
    añohoy: TEdit;
    Importe: TEdit;
    Ing_patente: TLabel;
    Ing_multa: TLabel;
    GroupBox1: TGroupBox;
    Ing_patente2: TLabel;
    ConsMultas: TButton;
    Mostrar: TMemo;
    MayorCantidad: TButton;
    MayorDeuda: TButton;
    SinDeuda: TButton;
    Patente2: TEdit;
    Label3: TLabel;
    NumActa: TEdit;
    GroupBox2: TGroupBox;
    Label4: TLabel;
    NumActa2: TEdit;
    Label5: TLabel;
    Patente3: TEdit;
    CambiarEstado: TButton;
    Anular: TButton;
    Paga: TButton;
    procedure MayorCantidadClick(Sender: TObject);
    procedure MayorDeudaClick(Sender: TObject);
    procedure SinDeudaClick(Sender: TObject);
    procedure ConsMultasClick(Sender: TObject);
    procedure CargMultaClick(Sender: TObject);
    procedure CambiarEstadoClick(Sender: TObject);
    procedure PagaClick(Sender: TObject);
    procedure AnularClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  auto:vehiculo;
  F_carga:fechas;
  estado:EnumeradoEstado;

implementation

{$R *.dfm}



procedure TForm1.CambiarEstadoClick(Sender: TObject);
begin
  groupbox2.visible:=True;
end;

procedure TForm1.CargMultaClick(Sender: TObject);
begin
  estado:=pendiente;
  auto.CargarAuto(Patente.text);
  F_carga.cargar(strtoint(diahoy.text),strtoint(meshoy.text),strtoint(añohoy.text));
  auto.CargarMultaPatente(Patente.text,NumActa.text,F_carga,strtofloat(importe.text),estado);
  //Mostrar
  groupbox1.visible:=True;
  mostrar.lines.add(auto.MostrarLista());
end;

procedure TForm1.ConsMultasClick(Sender: TObject);
begin
  mostrar.lines.add('El total de las multas es:'+inttostr(auto.totalmulta(Patente2.text)));
  //mostrar.lines.add('La multa mas antigua es:'+auto.MultaMasAntigua(Patente2.text));
  //mostrar.lines.add('La multa mas antigua es:'+auto.MultaMasReciente(Patente2.text));
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  auto.inic_autos();
end;

procedure TForm1.MayorCantidadClick(Sender: TObject);
begin
  //mostrar.lines.add();
end;

procedure TForm1.MayorDeudaClick(Sender: TObject);
begin
  //mostrar.lines.add();
end;

procedure TForm1.SinDeudaClick(Sender: TObject);
begin
  //mostrar.lines.add();
end;

procedure TForm1.PagaClick(Sender: TObject);
begin
  auto.setEstado(abonada,Patente3.text,NumActa2.text);
end;

procedure TForm1.AnularClick(Sender: TObject);
begin
   auto.setEstado(anulada,Patente3.text,NumActa2.text);
end;
end.
