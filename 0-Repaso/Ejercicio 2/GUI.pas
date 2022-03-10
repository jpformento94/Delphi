unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, character, Cadenas;

type
  TfLayout = class(TForm)
    mVisualizacion: TMemo;
    bSoloMayusculas: TButton;
    bCargarTexto: TButton;
    bSoloMinusculas: TButton;
    bNoSpace: TButton;
    bNoSpaceInverter: TButton;
    bCaracteres: TButton;
    bConsonantes: TButton;
    procedure bCargarTextoClick(Sender: TObject);
    procedure bSoloMayusculasClick(Sender: TObject);
    procedure bSoloMinusculasClick(Sender: TObject);
    procedure bNoSpaceClick(Sender: TObject);
    procedure bNoSpaceInverterClick(Sender: TObject);
    procedure bCaracteresClick(Sender: TObject);
    procedure bConsonantesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLayout: TfLayout;
  s: cadenaTexto;

implementation

{$R *.dfm}


procedure TfLayout.bCaracteresClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add(s.cantidadDeCaracteres);
end;

procedure TfLayout.bCargarTextoClick(Sender: TObject);
begin
  mVisualizacion.Clear;
  s.cargarString();
  mVisualizacion.Lines.Add(s.texto);
end;

procedure TfLayout.bConsonantesClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add(s.ocurrenciasDeConsonantes);
end;

procedure TfLayout.bNoSpaceClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add(s.sinEspacios);
end;

procedure TfLayout.bNoSpaceInverterClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add(s.sinEspaciosInvertida);
end;

procedure TfLayout.bSoloMayusculasClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add(s.soloMayusculas());
end;

procedure TfLayout.bSoloMinusculasClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add(s.soloMinusculas);
end;

end.
