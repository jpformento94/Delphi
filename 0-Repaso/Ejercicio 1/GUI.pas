unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Code;

type
  TfLayout = class(TForm)
    bCargarVector: TButton;
    bMedia: TButton;
    bMediana: TButton;
    bModa: TButton;
    bValorMin: TButton;
    bValorMax: TButton;
    mVisualizacion: TMemo;
    procedure bCargarVectorClick(Sender: TObject);
    procedure bMediaClick(Sender: TObject);
    procedure bMedianaClick(Sender: TObject);
    procedure bModaClick(Sender: TObject);
    procedure bValorMinClick(Sender: TObject);
    procedure bValorMaxClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLayout: TfLayout;
  v: vector;

implementation

{$R *.dfm}

procedure TfLayout.bCargarVectorClick(Sender: TObject);
begin
  mVisualizacion.Clear;
  v.cargarRandom;
  mVisualizacion.Lines.Add(v.devolverString);
end;

procedure TfLayout.bMediaClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add('La media es: ' + FloatToStr(v.media));
end;

procedure TfLayout.bMedianaClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add('El elemento del medio es: ' + inttostr(v.mediana));
end;

procedure TfLayout.bModaClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add('El elemento que mas se repite es: ' + inttostr(v.moda));
end;

procedure TfLayout.bValorMaxClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add('El Mayor elemento es: ' + inttostr(v.valorMax));
end;

procedure TfLayout.bValorMinClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add('El menor elemento es: ' + inttostr(v.valorMin));
end;

end.
