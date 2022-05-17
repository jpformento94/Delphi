unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ValEdit, Vcl.Grids, Vcl.StdCtrls, uSSD;

type
  TForm1 = class(TForm)
    ssd: TValueListEditor;
    bIngresarNumero: TButton;
    mGUI: TMemo;
    bClearMemo: TButton;
    bSumar: TButton;
    bRestar: TButton;
    bMultiplicar: TButton;
    bDividir: TButton;
    Label1: TLabel;
    Label2: TLabel;
    eN1: TEdit;
    eN2: TEdit;
    procedure bIngresarNumeroClick(Sender: TObject);
    procedure bClearMemoClick(Sender: TObject);
    procedure bSumarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bRestarClick(Sender: TObject);
    procedure bMultiplicarClick(Sender: TObject);
    procedure bDividirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  s: ssd;
  x, y: string;

implementation

{$R *.dfm}

procedure TForm1.bDividirClick(Sender: TObject);
begin
  if (y='0') then
    ShowMessage('No se puede dividir por cero')
  else begin
    mGUI.Lines.Add('La division es');
    mGUI.Lines.Add(s.dividir(x,y));
  end;
end;

procedure TForm1.bIngresarNumeroClick(Sender: TObject);
begin
  if (eN1.Text='') or (eN2.Text='') then
    ShowMessage('Error, cargue los numeros primero')
  else  begin
    x:= eN1.Text;
    y:= eN2.Text;
    s.cargarNumero(x,y);
    mGUI.Lines.Add('Numero ' + x);
    mGUI.Lines.Add(s.retornarNumero1);
    mGUI.Lines.Add('Numero ' + y);
    mGUI.Lines.Add(s.retornarNumero2);
    bSumar.Enabled:= true;
    bRestar.Enabled:= true;
    bMultiplicar.Enabled:= true;
    bDividir.Enabled:= true;
  end;
end;

procedure TForm1.bMultiplicarClick(Sender: TObject);
begin
  mGUI.Lines.Add('La multiplicacion es');
  mGUI.Lines.Add(s.multiplicar(x,y));
end;

procedure TForm1.bRestarClick(Sender: TObject);
begin
  mGUI.Lines.Add('La resta es');
  mGUI.Lines.Add(s.restar(x,y));
end;

procedure TForm1.bSumarClick(Sender: TObject);
begin
  mGUI.Lines.Add('La suma es');
  mGUI.Lines.Add(s.sumar(x,y));
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  bSumar.Enabled:= false;
  bRestar.Enabled:= false;
  bMultiplicar.Enabled:= false;
  bDividir.Enabled:= false;
end;

procedure TForm1.bClearMemoClick(Sender: TObject);
begin
  mGUI.Clear;
end;

end.
