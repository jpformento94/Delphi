unit tp1ej1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,NúmeroRacional;

type
  TForm1 = class(TForm)
    restar: TButton;
    comparar: TButton;
    potencia: TButton;
    dividir: TButton;
    multiplicar: TButton;
    sumar: TButton;
    Numero1: TEdit;
    Numero2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Mostrar: TMemo;
    procedure sumarClick(Sender: TObject);
    procedure restarClick(Sender: TObject);
    procedure multiplicarClick(Sender: TObject);
    procedure dividirClick(Sender: TObject);
    procedure potenciaClick(Sender: TObject);
    procedure compararClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.sumarClick(Sender: TObject);
var n:Nracional;
begin
  if (numero1.Text<>'') and (numero2.Text<>'') then
    begin
      Mostrar.lines.add(numero1.text+'+'+numero2.text+'= '+(N.sumar(StrtoFloat(numero1.text),StrtoFloat(numero2.text))).tostring);
    end
  else
    ShowMessage('No deje datos en blanco');
end;

procedure TForm1.restarClick(Sender: TObject);
var n:Nracional;
begin
  if (numero1.Text<>'') and (numero2.Text<>'') then
    begin
      Mostrar.lines.add(numero1.text+'-'+numero2.text+'= '+(N.restar(StrtoFloat(numero1.text),StrtoFloat(numero2.text))).tostring);
    end
  else
    ShowMessage('No deje datos en blanco');
end;

procedure TForm1.multiplicarClick(Sender: TObject);
var n:Nracional;
begin
  if (numero1.Text<>'') and (numero2.Text<>'') then
    begin
      Mostrar.lines.add(numero1.text+'*'+numero2.text+'= '+(N.multiplicar(StrtoFloat(numero1.text),StrtoFloat(numero2.text))).tostring);
    end
  else
    ShowMessage('No deje datos en blanco');
end;

procedure TForm1.dividirClick(Sender: TObject);
var n:Nracional;
begin
  if (numero1.Text<>'') and (numero2.Text<>'') then
    begin
      Mostrar.lines.add(numero1.text+'/'+numero2.text+'= '+(N.dividir(StrtoFloat(numero1.text),StrtoFloat(numero2.text))).tostring);
    end
  else
    ShowMessage('No deje datos en blanco');
end;

procedure TForm1.potenciaClick(Sender: TObject);
var n:Nracional;
begin
  if (numero1.Text<>'') and (numero2.Text<>'') then
    begin
      Mostrar.lines.add(numero1.text+'^'+numero2.text+'= '+(N.poten(StrtoFloat(numero1.text),StrtoFloat(numero2.text))));
    end
  else
    ShowMessage('No deje datos en blanco');
end;

procedure TForm1.compararClick(Sender: TObject);
var n:Nracional;
begin
  if (numero1.Text<>'') and (numero2.Text<>'') then
    begin
      Mostrar.lines.add(numero1.text+' es '+n.compara(StrtoFloat(numero1.text),StrtoFloat(numero2.text))+' que '+numero2.text);
    end
  else
    ShowMessage('No deje datos en blanco');
end;

end.
