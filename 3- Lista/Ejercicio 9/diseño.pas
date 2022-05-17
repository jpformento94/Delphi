unit diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,TADAgenda;

type
  TForm1 = class(TForm)
    Ehora: TEdit;
    Mostrar: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Eminutos: TEdit;
    GroupBox1: TGroupBox;
    Agregar: TButton;
    Label4: TLabel;
    NomActividad: TEdit;
    Label3: TLabel;
    GroupBox2: TGroupBox;
    Actividad: TButton;
    Insertar: TButton;
    Porcentaje: TButton;
    Label5: TLabel;
    procedure InsertarClick(Sender: TObject);
    procedure AgregarClick(Sender: TObject);
    procedure ActividadClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  L:agendas;

implementation

{$R *.dfm}

procedure TForm1.ActividadClick(Sender: TObject);
var
stringhora:string;
begin
  stringhora:=Ehora.text+':'+Eminutos.text;
  mostrar.lines.add(L.SaberActividad(stringhora));
end;

procedure TForm1.AgregarClick(Sender: TObject);
var
stringhora:string;
begin
  groupbox1.visible:=false;
  groupbox2.visible:=true;
  stringhora:=Ehora.text+':'+Eminutos.text;
  L.AgregarActividad(stringhora,NomActividad.text);
  mostrar.lines.add('La actividad se agrego correctamente');
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
  L.cargarTiempo;
end;

procedure TForm1.InsertarClick(Sender: TObject);
begin
  groupbox1.visible:=true;
  groupbox2.visible:=false;
end;

end.
