unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uPuntajePacMan, Vcl.StdCtrls;

type

  TForm1 = class(TForm)
    bRecorrido1: TButton;
    mRecorrido1: TMemo;
    bRecorrido2: TButton;
    mRecorrido2: TMemo;
    procedure bRecorrido1Click(Sender: TObject);
    procedure bRecorrido2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.bRecorrido1Click(Sender: TObject);
var
  r1:puntaje;
begin
  mRecorrido1.Clear;
  r1.cargarRecorrido1;
  mRecorrido1.Lines.Add(r1.recorrido.RetornarClaves);
  showmessage(r1.calcularPuntos);
end;

procedure TForm1.bRecorrido2Click(Sender: TObject);
var
  r2:puntaje;
begin
  mRecorrido2.Clear;
  r2.cargarRecorrido2;
  mRecorrido2.Lines.Add(r2.recorrido.RetornarClaves);
  showmessage(r2.calcularPuntos);
end;

end.
