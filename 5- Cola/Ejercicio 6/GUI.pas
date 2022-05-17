unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uColas, Tipos;

type
  TForm1 = class(TForm)
    bCola1: TButton;
    bCola2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    mCola1: TMemo;
    mCola2: TMemo;
    bVerificar: TButton;
    eCola1: TEdit;
    eCola2: TEdit;
    bReset: TButton;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure bResetClick(Sender: TObject);
    procedure bCola1Click(Sender: TObject);
    procedure bCola2Click(Sender: TObject);
    procedure bVerificarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  colas: framework_colas;

implementation

{$R *.dfm}

procedure TForm1.bCola1Click(Sender: TObject);
var
  x: tipoelemento;
  s: string;
begin
  x.clave:= eCola1.Text;
  s:= colas.agregarCola1(x);
  if (s = 'error') then
    ShowMessage('Cola llena');
  mCola1.Clear;
  mCola1.Lines.Add(colas.c1String);
end;

procedure TForm1.bCola2Click(Sender: TObject);
var
  x: tipoelemento;
  s: string;
begin
  x.clave:= eCola2.Text;
  s:= colas.agregarCola2(x);
  if (s = 'error') then
    ShowMessage('Cola llena');
  mCola2.Clear;
  mCola2.Lines.Add(colas.c2String);
end;

procedure TForm1.bResetClick(Sender: TObject);
begin
  mCola1.Clear;
  mCola2.Clear;
  colas.crearColas;
end;

procedure TForm1.bVerificarClick(Sender: TObject);
begin
  if colas.compararColas then
    ShowMessage('Tienen los mismos elementos')
  else
    ShowMessage('No tienen los mismos elementos')
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  colas.crearColas;
end;

end.
