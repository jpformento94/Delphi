unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.StdCtrls, TADCarbono;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    bCargar: TButton;
    mostrar: TMemo;
    bCalcular: TButton;
    procedure bCargarClick(Sender: TObject);
    procedure bCalcularClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
    M:Matriz;

implementation

{$R *.dfm}

procedure LlenarMatriz(var M:Matriz);
var I,J:Integer;
begin
  for I := MinF to MaxF do
  begin
    for j := MinC to MaxC do
     begin
     form1.StringGrid1.Cells[J-1,I-1]:=M.GetItem(I,J);
  end;
  end ;
end;

procedure TForm1.bCalcularClick(Sender: TObject);
var Value:String;
begin
  mostrar.Clear;
  Value:=M.CadenaMasLarga;
  mostrar.Lines.Add(Value);
end;

procedure TForm1.bCargarClick(Sender: TObject);
begin
  M.Cargar;
  LlenarMatriz(M);
end;

end.
