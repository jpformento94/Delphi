unit diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,TAD;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  arbol:arboles;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  arbol.cargarBinario;
  memo1.Lines.Add(arbol.mostrarB);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  arbol.convertir;
  memo1.lines.add(arbol.mostrarAVL);
end;

end.
