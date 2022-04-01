unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,cajaregistradora,ShellApi;

type
  TForm1 = class(TForm)
    Saldo: TButton;
    Cargar: TButton;
    pagar: TButton;
    Cerrarcaja: TButton;
    CargarM1: TEdit;
    CargarM2: TEdit;
    CargarB20: TEdit;
    CargarM5: TEdit;
    CargarM10: TEdit;
    CargarB10: TEdit;
    CargarB50: TEdit;
    CargarB100: TEdit;
    CargarB200: TEdit;
    CargarB500: TEdit;
    CargarB1000: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Mostrar: TMemo;
    Totalcompra: TEdit;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    pagarm1: TEdit;
    pagarm2: TEdit;
    pagarb20: TEdit;
    pagarm5: TEdit;
    pagarm10: TEdit;
    pagarb10: TEdit;
    pagarb50: TEdit;
    pagarb100: TEdit;
    pagarb200: TEdit;
    pagarb500: TEdit;
    pagarb1000: TEdit;
    Button1: TButton;
    procedure SaldoClick(Sender: TObject);
    procedure CerrarcajaClick(Sender: TObject);
    procedure pagarClick(Sender: TObject);
    procedure CargarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  m:monedero;


implementation

{$R *.dfm}


procedure TForm1.Button1Click(Sender: TObject);
begin
//Primero abro de nuevo el programa
ShellExecute(Handle,nil,('Punto9.exe'),'','',SW_Shownormal);
//Después de abrir el pograma, este se cierra
Application.Terminate;
end;

procedure TForm1.CargarClick(Sender: TObject);
begin
  m.cargarmonedas(strtoint(cargarM1.text),strtoint(cargarM2.text),strtoint(cargarM5.text),strtoint(cargarM10.text));
  m.cargarbilletes(strtoint(cargarb10.text),strtoint(cargarb20.text),strtoint(cargarb50.text),strtoint(cargarb100.text),
                                        strtoint(cargarb200.text),strtoint(cargarb500.text),strtoint(cargarb1000.text));
  pagar.Visible:=true;
  //Elimino la carga
  cargar.Visible:=false;
  cargarb10.Visible:=false;
  cargarb20.Visible:=false;
  cargarb50.Visible:=false;
  cargarb100.Visible:=false;
  cargarb200.Visible:=false;
  cargarb500.Visible:=false;
  cargarb1000.Visible:=false;

  cargarm1.Visible:=false;
  cargarm2.Visible:=false;
  cargarm5.Visible:=false;
  cargarm10.Visible:=false;

  label23.Visible:=false;
  label12.Visible:=false;
  label15.Visible:=false;
  label14.Visible:=false;
  label13.Visible:=false;
  label16.Visible:=false;
  label21.Visible:=false;
  label22.Visible:=false;
  label18.Visible:=false;
  label19.Visible:=false;
  label20.Visible:=false;
  label17.Visible:=false;
  label27.Visible:=false;
  label28.Visible:=false;

  //Muestrovuelto
  label24.Visible:=true;
  label1.Visible:=true;
  label4.Visible:=true;
  label3.Visible:=true;
  label2.Visible:=true;
  label5.Visible:=true;
  label10.Visible:=true;
  label11.Visible:=true;
  label7.Visible:=true;
  label8.Visible:=true;
  label9.Visible:=true;
  label6.Visible:=true;
  label25.Visible:=true;
  label26.Visible:=true;
  label29.Visible:=true;

  pagarm1.Visible:=true;
  pagarm2.Visible:=true;
  pagarm5.Visible:=true;
  pagarm10.Visible:=true;

  pagarb10.Visible:=true;
  pagarb20.Visible:=true;
  pagarb50.Visible:=true;
  pagarb100.Visible:=true;
  pagarb200.Visible:=true;
  pagarb500.Visible:=true;
  pagarb1000.Visible:=true;
  totalcompra.Visible:=true;
end;

procedure TForm1.CerrarcajaClick(Sender: TObject);
begin
 mostrar.lines.add(m.mostrarmonedero());

end;

procedure TForm1.pagarClick(Sender: TObject);
var Vpago:monedero;
begin
 vpago.cargarmonedas(strtoint(pagarm1.text),strtoint(pagarm2.text),strtoint(pagarm5.text),strtoint(pagarm10.text));
 vpago.cargarbilletes(strtoint(pagarb10.text),strtoint(pagarb20.text),strtoint(pagarb50.text),strtoint(pagarb100.text),
 strtoint(pagarb200.text),strtoint(pagarb500.text),strtoint(pagarb1000.text));
 mostrar.lines.add('Vuelto:');
 mostrar.lines.add(m.darvuelto(vpago,strtoint(totalcompra.text)).mostrarmonedero);
 //Pongo en 0 los edit
 pagarm1.Text:=inttostr(0);
 pagarm2.Text:=inttostr(0);
 pagarm5.Text:=inttostr(0);
 pagarm10.Text:=inttostr(0);
 pagarb10.Text:=inttostr(0);
 pagarb20.Text:=inttostr(0);
 pagarb50.Text:=inttostr(0);
 pagarb100.Text:=inttostr(0);
 pagarb200.Text:=inttostr(0);
 pagarb500.Text:=inttostr(0);
 pagarb1000.Text:=inttostr(0);
 end;

procedure TForm1.SaldoClick(Sender: TObject);
begin
  mostrar.lines.add('El saldo actual del cajero es:'+m.saldo().tostring);
end;
end.
