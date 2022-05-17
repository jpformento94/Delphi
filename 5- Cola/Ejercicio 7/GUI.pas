unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Tipos, uColas;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    mCola1: TMemo;
    mCola2: TMemo;
    mCola3: TMemo;
    eTiempo: TEdit;
    Label4: TLabel;
    bAtender: TButton;
    mGUI: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure bAtenderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  c: colas_clientes;

implementation

{$R *.dfm}

procedure TForm1.bAtenderClick(Sender: TObject);
var
  q: integer;
begin
  mGUI.Clear;
  q:= StrToInt(eTiempo.Text);
  if (q>0) then
    mGUI.Lines.Add(c.atenderClientes(q).RetornarClaves)
  else
    ShowMessage('El tiempo debe ser mayor a 0');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  c.crearColas;
  mCola1.Lines.Add(c.c1String);
  mCola2.Lines.Add(c.c2String);
  mCola3.Lines.Add(c.c3String);
end;

end.
