unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

  const
    MIN = 1;
    //Rango de la matriz
    N = 4;

type
  TfLayout = class(TForm)
    bCargar: TButton;
    sgMatriz: TStringGrid;
    procedure bCargarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  matriz= array[MIN..N, MIN..N] of integer;

var
  fLayout: TfLayout;
  m: matriz;

implementation

{$R *.dfm}

//Inicializo la matriz en 0
procedure inicializarMatriz(var m:matriz);
var
  i,j: integer;
begin
  for i := MIN to n do
    begin
      for j := MIN to n do
        m[i,j]:=0;
    end;
end;

//Cargar cubo latino
procedure cargarCuboLatino(var m:matriz);
var
  i,j,i2,j2,numero,n2: integer;
  esta, terminar : boolean;
begin
  randomize();
  n2:= (N*N)+1;
  for i := MIN to n do
    begin
      for j := MIN to n do
        begin
          terminar:= false;
          while (terminar=false) do
            begin
              esta:= false;
              numero:= random(n2);
              for i2 := MIN to N do
                begin
                  for j2 := MIN to N do
                    begin
                      if m[i2,j2]= numero then
                        esta:= true;
                    end;
                end;
              if esta=false then
                terminar:= true;
            end;
          m[i,j]:= numero;
        end;
    end;
end;

//Devolver matriz como string grid
function devolverStringGrid(m:matriz):string;
var
  i,j: integer;
begin
  for i := MIN to n do
      for j := MIN to n do
          fLayout.sgMatriz.Cells[j-1,i-1]:= m[i,j].ToString;
end;

procedure TfLayout.bCargarClick(Sender: TObject);
begin
  inicializarMatriz(m);
  cargarCuboLatino(m);
  devolverStringGrid(m);
end;

end.
