unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, character, Cadenas;

type
  TForm1 = class(TForm)
    mVisualizacion: TMemo;
    bSoloMayusculas: TButton;
    bCargarTexto: TButton;
    bSoloMinusculas: TButton;
    procedure bCargarTextoClick(Sender: TObject);
    procedure bSoloMayusculasClick(Sender: TObject);
    procedure bSoloMinusculasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s: cadenaTexto;

implementation

{$R *.dfm}


procedure TForm1.bCargarTextoClick(Sender: TObject);
begin
  s.cargarString();
  mVisualizacion.Lines.Add(s.texto);
end;

procedure TForm1.bSoloMayusculasClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add(s.soloMayusculas());
end;

procedure TForm1.bSoloMinusculasClick(Sender: TObject);
begin
  mVisualizacion.Lines.Add(s.soloMinusculas);
end;

end.
