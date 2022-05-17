unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids,TADCampoMinado;

type
  TForm2 = class(TForm)
    bSafe: TButton;
    StringGrid1: TStringGrid;
    Cargar: TButton;
    mostrar: TMemo;
    procedure CargarClick(Sender: TObject);
    procedure bSafeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  m:matriz;

implementation

{$R *.dfm}
procedure LlenarMatriz(var M:Matriz);
var I,J:Integer;
begin
  for I := MinF to MaxF do
  begin
    for j := MinC to MaxC do
     begin
     form2.StringGrid1.Cells[J-1,I-1]:=M.GetItem(I,J);
  end;
  end ;
end;

procedure TForm2.bSafeClick(Sender: TObject);
begin
  mostrar.Lines.Add(m.cadenaSegura);
end;

procedure TForm2.CargarClick(Sender: TObject);
begin
  M.Cargar;
  LlenarMatriz(M);
end;

end.
