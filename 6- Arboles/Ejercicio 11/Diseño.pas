unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,TAD;

type
  TForm1 = class(TForm)
    Claves: TEdit;
    Memo1: TMemo;
    Mostrar: TButton;
    Label1: TLabel;
    procedure MostrarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  a:arboles;

implementation

{$R *.dfm}

procedure TForm1.MostrarClick(Sender: TObject);
begin
  memo1.lines.add(a.cargar(strtoint(claves.Text)));

end;

end.
