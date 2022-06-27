unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,TADabm;

type
  TForm1 = class(TForm)
    Memo: TMemo;
    Alta: TButton;
    Baja: TButton;
    Modificar: TButton;
    CargarArbol: TButton;
    Buscar: TButton;
    Mostrar: TButton;
    procedure CargarArbolClick(Sender: TObject);
    procedure MostrarClick(Sender: TObject);
    procedure BajaClick(Sender: TObject);
    procedure ModificarClick(Sender: TObject);
    procedure BuscarClick(Sender: TObject);
    procedure AltaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  archivo:ABM;

implementation

{$R *.dfm}

procedure TForm1.AltaClick(Sender: TObject);
begin
  memo.Clear;
  memo.Lines.add(archivo.MostrarAlta());
end;

procedure TForm1.BajaClick(Sender: TObject);
begin
  memo.Clear;
  memo.Lines.Add(archivo.MostrarBaja());
end;

procedure TForm1.BuscarClick(Sender: TObject);
begin
  memo.Clear;
  memo.lines.add(archivo.buscaregistro);
end;

procedure TForm1.CargarArbolClick(Sender: TObject);
begin
  memo.Clear;
  archivo.CargarArbol();
  memo.lines.add(archivo.mostrarArbol());
  memo.Lines.Add(s);
end;


procedure TForm1.ModificarClick(Sender: TObject);
begin
  memo.Clear;
  memo.lines.Add(archivo.mostrarModificaciones());
end;

procedure TForm1.MostrarClick(Sender: TObject);
begin
  memo.Clear;
  memo.lines.add(archivo.mostrarArbol());
end;

end.
