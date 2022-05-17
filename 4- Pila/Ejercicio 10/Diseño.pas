unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Divisor;

type
  TForm1 = class(TForm)
    N2: TEdit;
    N1: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    Mostrar: TMemo;
    Buscar: TButton;
    procedure BuscarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  D:Operacion;

implementation

{$R *.dfm}

procedure TForm1.BuscarClick(Sender: TObject);
begin
  D.crearPila;
  D.RecursivaBuscar(StrToInt(N1.text),StrToInt(N2.text),0);
  mostrar.Clear;
  mostrar.Lines.Add(D.mostrar);
  mostrar.lines.add('Maximo comun divisor:'+D.Multimo);
end;

end.
