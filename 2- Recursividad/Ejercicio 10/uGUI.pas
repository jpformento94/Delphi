unit uGUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConjuntos, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    bCargar: TButton;
    bBuscar: TButton;
    Memo: TMemo;
    procedure bCargarClick(Sender: TObject);
    procedure bBuscarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  c: conjunto;

implementation

{$R *.dfm}

procedure TForm1.bBuscarClick(Sender: TObject);
var
  n:integer;
begin
    n:= strtoint(InputBox('Ingresar numero que sume el subconjunto', 'Numero:', '7'));
    memo.Lines.Add(char(13) + char(10) + 'Subconjuntos' + char(13) + char(10) + c.buscarSubconjunto(n));
end;

procedure TForm1.bCargarClick(Sender: TObject);
begin
  memo.Clear;
  c.cargarConjunto;
  memo.Lines.Add('Conjunto');
  memo.Lines.Add(c.devolverConjunto);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  memo.Clear;
  c.cargarConjunto;
  memo.Lines.Add('Conjunto');
  memo.Lines.Add(c.devolverConjunto);
end;

end.
