unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Tipos, QueuesArrayNCMejorada;

const
  MAX = 10;

type
  TForm1 = class(TForm)
    eElemento: TEdit;
    bCargar: TButton;
    bReiniciar: TButton;
    mGUI: TMemo;
    bDivisor: TButton;
    procedure FormCreate(Sender: TObject);
    procedure bCargarClick(Sender: TObject);
    procedure bDivisorClick(Sender: TObject);
    procedure bReiniciarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  c: cola;

implementation

{$R *.dfm}

//Devuelve el menor de una cola de enteros
function buscarMenor(var c:cola): integer;
var
  x, menor: tipoelemento;
  caux: cola;
begin
  caux.Crear(Numero,MAX);
  x:= c.Recuperar;
  caux.Encolar(x);
  c.DesEncolar;
  menor.Clave:= x.Clave;
  while not c.EsVacia do
    begin
       x:= c.Recuperar;
       if (x.Clave < menor.Clave) then
          menor.Clave:= x.Clave;
       caux.Encolar(x);
       c.DesEncolar;
    end;
  c.InterCambiar(caux,false);
  result:= menor.Clave;
end;

function divisorTotal(var c:cola): integer;
var
  x, divisor: tipoelemento;
  flag: boolean;
  caux: cola;
begin
  flag:= true;
  caux.Crear(Numero,MAX);
  //busca al menor de la cola para dividirlo con el resto
  divisor.Clave:= buscarMenor(c);
  //divido al menor contra el resto
  while not c.EsVacia do
  begin
    x:= c.Recuperar;
    if ((x.clave mod divisor.Clave) <> 0) then
      flag:= false;
    caux.Encolar(x);
    c.DesEncolar;
  end;
  c.InterCambiar(caux,false);
  if (not flag) then
    result:= -1
  else
    result:= divisor.Clave;
end;

procedure TForm1.bCargarClick(Sender: TObject);
var
  x: tipoelemento;
begin
  x.Clave:= StrToInt(eElemento.Text);
  if not c.EsLlena then
    begin
      c.Encolar(x);
      mGUI.Clear;
      mGUI.lines.Add(c.RetornarClaves);
    end
  else
    ShowMessage('La cola esta llena');
end;

procedure TForm1.bDivisorClick(Sender: TObject);
var
  n: integer;
begin
  n:= divisorTotal(c);
  if (n = -1) then
    mGUI.Lines.Add('No hay divisor total dentro de la cola')
  else
    mGUI.Lines.Add('El divisor total es ' + n.ToString);
end;

procedure TForm1.bReiniciarClick(Sender: TObject);
begin
  c.Crear(Numero,MAX);
  mGUI.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  c.Crear(Numero,MAX);
end;

end.
