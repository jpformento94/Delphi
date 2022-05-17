unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uColas;

type
  TForm1 = class(TForm)
    mPila: TMemo;
    mLista: TMemo;
    mCola: TMemo;
    bPila: TButton;
    bLista: TButton;
    bCola: TButton;
    procedure bPilaClick(Sender: TObject);
    procedure bColaClick(Sender: TObject);
    procedure bListaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  c: framework_colas;

implementation

{$R *.dfm}

procedure TForm1.bColaClick(Sender: TObject);
begin
  mCola.Clear;
  c.crearColaRandom;
  mCola.Lines.Add(c.cString);
end;

procedure TForm1.bListaClick(Sender: TObject);
begin
  mLista.Clear;
  mLista.Lines.Add(c.elementosComunes.RetornarClaves);
end;

procedure TForm1.bPilaClick(Sender: TObject);
begin
  mPila.Clear;
  c.crearPilaRandom;
  mPila.Lines.Add(c.pString);
end;

end.
