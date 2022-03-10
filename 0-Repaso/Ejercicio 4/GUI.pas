unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfLayout = class(TForm)
    bCargar: TButton;
    procedure bCargarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLayout: TfLayout;
  n: integer;

implementation

{$R *.dfm}

procedure TfLayout.bCargarClick(Sender: TObject);
var
  s: string;
begin
  s:= InputBox('Ingresar tamaño de la matriz', 'Ingresar N: ','4');
end;

end.
