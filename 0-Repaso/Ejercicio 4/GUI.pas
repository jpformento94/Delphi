unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids;

  const
    MIN = 1;
    //Rango de la matriz
    N = 10;

type
  TfLayout = class(TForm)
    bCargar: TButton;
    mVisualizacion: TMemo;
    procedure bCargarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  matriz= array[MIN..N, MIN..N] of integer;

var
  fLayout: TfLayout;
  M: matriz;

implementation

{$R *.dfm}

  //Cargar cubo latino
  function cargarCuboLatino(var M:matriz):string;
  var
    i,j: integer;
    s: string;
  begin
    s:= '';
    randomize();
    for i := MIN to n do
      begin
        for j := MIN to n do
          begin
            M[i,j]:= random(N * N);
            if (M[i,j] < 10) then
              s:= s + '  ';
            s:= s + (inttostr(M[i,j]) + '    ');
          end;
        s:= s + Char(13) + Char(10);
      end;
    result:= s;
  end;

procedure TfLayout.bCargarClick(Sender: TObject);
begin
  mVisualizacion.Clear;
  mVisualizacion.Lines.Add(cargarCuboLatino(M));
end;

end.
