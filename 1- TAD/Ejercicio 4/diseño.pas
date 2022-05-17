unit diseño;

interface

uses
    Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
    Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, tad_binario;

type
  TForm1 = class(TForm)
    Sumar: TButton;
    numero1: TEdit;
    n1: TLabel;
    numero2: TEdit;
    n2: TLabel;
    Restar: TButton;
    conv_bd: TButton;
    conv_db: TButton;
    andorxor: TButton;
    Memo1: TMemo;
    procedure SumarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.SumarClick(Sender: TObject);
var n,n2:binario;
begin
 n.cargar(strtoint(numero1.text));
 n2.cargar(strtoint(numero2.text));
 memo1.lines.add(n.suma((n2)));
end;
end.
