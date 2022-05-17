unit Disenopalindromo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,TADrecur_palindromo;

type
  TPrograma = class(TForm)
    chain_texto: TEdit;
    palindromo: TButton;
    procedure palindromoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Programa: TPrograma;

implementation

{$R *.dfm}

procedure TPrograma.palindromoClick(Sender: TObject);
var s:palindromo1;
begin
  if s.palindromo_recursivo(chain_texto.text)then
      chain_texto.Text:='"'+chain_texto.text+'"'+' es palindromo'
  else
      chain_texto.Text:='"'+chain_texto.text+'"'+' no es palindromo';
end;
end.
