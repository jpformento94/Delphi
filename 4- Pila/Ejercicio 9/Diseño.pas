unit Diseño;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,Conversion;

type
  TForm1 = class(TForm)
    Numero: TEdit;
    Base: TEdit;
    Label1: TLabel;
    Convertir: TButton;
    Label2: TLabel;
    Mostrar: TMemo;
    procedure ConvertirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  num:numero;

implementation

{$R *.dfm}

procedure TForm1.ConvertirClick(Sender: TObject);
begin
  num.crear();
  num.ConvNumero(StrToInt(numero.text),StrToInt(base.text));
  mostrar.Clear();
  mostrar.lines.add(num.mostrar());
end;

end.
