unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Tipos, QueuesArrayNCMejorada;

const
  MAX = 5;

type
  TForm1 = class(TForm)
    lCola1: TLabel;
    mCola1: TMemo;
    mCola2: TMemo;
    lCola2: TLabel;
    bVerificar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure bVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  cola1, cola2: cola;

implementation

{$R *.dfm}

//carga dos colas iguales
procedure cargarIguales(var cola1, cola2:cola);
var
  x: tipoelemento;
begin
  randomize;
  cola1.Crear(Numero,MAX);
  cola2.Crear(Numero,MAX);
  while (not cola1.EsLlena) and (not cola2.EsLlena) do begin
    x.Clave:= Random(10);
    cola1.Encolar(x);
    cola2.Encolar(x);
  end;
end;

//carga dos colas distintas
procedure cargarDistintas(var cola1, cola2:cola);
var
  x: tipoelemento;
begin
  cola1.Crear(Numero,MAX);
  cola2.Crear(Numero,MAX);

  x.Clave:= 5;
  cola1.Encolar(x);
  cola2.Encolar(x);

  x.Clave:= 8;
  cola1.Encolar(x);
  cola2.Encolar(x);

  x.Clave:= 1;
  cola1.Encolar(x);
  x.Clave:= 3;
  cola2.Encolar(x);

  x.Clave:= 2;
  cola1.Encolar(x);
  x.Clave:= 6;
  cola2.Encolar(x);

  x.Clave:= 10;
  cola1.Encolar(x);
  cola2.Encolar(x);
end;

//Verifica que dos colas sean iguales elemento a elemento posicion a posicion
function verificarIgualdad(var cola1,cola2:cola):boolean;
var
  x, y: tipoelemento;
  cAux: cola;
  flag: boolean;
  i, p: integer;   //posicion hastas la cual copiar los elementos
begin
  flag:= true;
  cAux.Crear(Numero,MAX);
  while (not cola1.EsVacia) and (flag) do begin
    x:= cola1.Recuperar;
    y:= cola2.Recuperar;
    if (x.Clave = y.Clave) then begin
      cAux.Encolar(x);
      cola1.DesEncolar;
      cola2.DesEncolar;
    end
    else
      flag:= false;
  end;
  p:= cAux.Final;
  p:= MAX - p;
  while not cAux.EsVacia do begin
    x:= cAux.Recuperar;
    cola1.Encolar(x);
    cola2.Encolar(x);
    cAux.DesEncolar;
  end;

  //Rearmo la cola 1
  if (p>0) then begin
    for i := 1 to p do begin
      x:= cola1.Recuperar;
      cAux.Encolar(x);
      cola1.DesEncolar;
    end;
    while not cAux.EsVacia do begin
      x:= cAux.Recuperar;
      cola1.Encolar(x);
      cAux.DesEncolar;
    end;

    //Rearmo la cola 2
    for i := 1 to p do begin
      x:= cola2.Recuperar;
      cAux.Encolar(x);
      cola2.DesEncolar;
    end;
    while not cAux.EsVacia do begin
      x:= cAux.Recuperar;
      cola2.Encolar(x);
      cAux.DesEncolar;
    end;
  end;
  result:= flag;
end;

procedure TForm1.bVerificarClick(Sender: TObject);
begin
  if (verificarIgualdad(cola1,cola2)) then
    ShowMessage('Son iguales')
  else
    ShowMessage('No son iguales');
  mCola1.Clear;
  mCola2.Clear;
  mCola1.Lines.Add(cola1.RetornarClaves);
  mCola2.Lines.Add(cola2.RetornarClaves);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  //cargarIguales(cola1,cola2);
  cargarDistintas(cola1,cola2);
  mCola1.Lines.Add(cola1.RetornarClaves);
  mCola2.Lines.Add(cola2.RetornarClaves);
end;

end.
