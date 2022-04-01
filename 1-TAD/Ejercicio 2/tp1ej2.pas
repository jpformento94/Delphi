unit tp1ej2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uVector;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Memo1: TMemo;
    desde: TEdit;
    hasta: TEdit;
    repe: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    separador: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    cant: TEdit;
    Label6: TLabel;
    escalar: TEdit;
    Suma: TButton;
    Promedio: TButton;
    Mayor: TButton;
    Menor: TButton;
    Mescalar: TButton;
    sumarvec: TButton;
    procedure Button1Click(Sender: TObject);
    procedure SumaClick(Sender: TObject);
    procedure PromedioClick(Sender: TObject);
    procedure MayorClick(Sender: TObject);
    procedure MenorClick(Sender: TObject);
    procedure MescalarClick(Sender: TObject);
    procedure sumarvecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure validartext(texto:string);
begin
  if not((texto='no') or (texto='NO') or (texto='si') or (texto='SI'))then
    ShowMessage('"Permite repeticiones" no tiene una opcion valida(recuerde, las opciones son si y no)');
end;
function validarrango(desde,hasta,total:integer):boolean;
begin
   validarrango:=((hasta)-(desde)<(total));
end;
procedure validardesde(verifico:integer);
begin
  if (verifico<0) then
    ShowMessage('El "Rango desde" debe ser un numero natural')
end;

procedure TForm1.SumaClick(Sender: TObject);
var V: Vector;
begin
  validartext(repe.text);
  validardesde(strtoint(desde.text));
  if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) and ((repe.text='no') or (repe.text='NO')) then
    begin
      ShowMessage('La cantidad de elementos del rango es insuficiente para la cantidad indicada');
    end
    else
      if  validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) then
      begin
        ShowMessage('El "Rango desde" debe ser menor al "Rango hasta"');
      end
      else
        begin
          V.CargarAleatorio(strtoint(desde.text),strtoint(hasta.text),(repe.text),strtoint(cant.text));
          Memo1.Lines.Clear;
          memo1.Lines.Add(V.RtnAsString(separador.text,strtoint(cant.text)));
          memo1.Lines.Add('Sumatoria de los elementos:' + inttostr(V.Sumatoria(strtoint(cant.text))));
        end;
end;

procedure TForm1.PromedioClick(Sender: TObject);
Var V: Vector;
begin
    validartext(repe.text);
  validardesde(strtoint(desde.text));
  if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) and ((repe.text='no') or (repe.text='NO')) then
    begin
      ShowMessage('La cantidad de elementos del rango es insuficiente para la cantidad indicada');
    end
  else if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) then
    begin
      ShowMessage('El "Rango desde" debe ser menor al "Rango hasta"');
    end
  else
    begin
      V.CargarAleatorio(strtoint(desde.text),strtoint(hasta.text),(repe.text),strtoint(cant.text));
      Memo1.Lines.Clear;
      memo1.Lines.Add(V.RtnAsString(separador.text,strtoint(cant.text)));
      memo1.Lines.Add('Promedio del vector:' + floattostr(V.promedio(strtoint(cant.text))));
    end;
end;

procedure TForm1.MayorClick(Sender: TObject);
Var V: Vector;
  P: Integer;
begin
  P := 0;
    validartext(repe.text);
  validardesde(strtoint(desde.text));
  if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) and ((repe.text='no') or (repe.text='NO')) then
    begin
      ShowMessage('La cantidad de elementos del rango es insuficiente para la cantidad indicada');
    end
  else if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) then
    begin
      ShowMessage('El "Rango desde" debe ser menor al "Rango hasta"');
    end
  else
    begin
      V.CargarAleatorio(strtoint(desde.text),strtoint(hasta.text),(repe.text),strtoint(cant.text));
      Memo1.Lines.Clear;
      memo1.Lines.Add(V.RtnAsString(separador.text,strtoint(cant.text)));
      memo1.lines.add('Mayor:'+V.Mayor(P,strtoint(cant.text)).tostring + ' - Posicion: '+p.tostring );
    end;
end;

procedure TForm1.MenorClick(Sender: TObject);
Var V: Vector;
  P: Integer;
begin
  P := 0;
    validartext(repe.text);
  validardesde(strtoint(desde.text));
  if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) and ((repe.text='no') or (repe.text='NO')) then
    begin
      ShowMessage('La cantidad de elementos del rango es insuficiente para la cantidad indicada');
    end
  else if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) then
    begin
      ShowMessage('El "Rango desde" debe ser menor al "Rango hasta"');
    end
  else
    begin
      V.CargarAleatorio(strtoint(desde.text),strtoint(hasta.text),(repe.text),strtoint(cant.text));
      Memo1.Lines.Clear;
      memo1.Lines.Add(V.RtnAsString(separador.text,strtoint(cant.text)));
      memo1.lines.add('Menor:'+V.Menor(P,strtoint(cant.text)).tostring + ' - Posicion: '+p.tostring );
    end;
end;

procedure TForm1.MescalarClick(Sender: TObject);
Var V: Vector;
begin
  validartext(repe.text);
  validardesde(strtoint(desde.text));
  if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) and ((repe.text='no') or (repe.text='NO')) then
    begin
      ShowMessage('La cantidad de elementos del rango es insuficiente para la cantidad indicada');
    end
  else if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) then
    begin
      ShowMessage('El "Rango desde" debe ser menor al "Rango hasta"');
    end
  else
    begin
      V.CargarAleatorio(strtoint(desde.text),strtoint(hasta.text),(repe.text),strtoint(cant.text));
      Memo1.Lines.Clear;
      memo1.Lines.Add(V.RtnAsString(separador.text,strtoint(cant.text)));
      memo1.lines.add('* Escalar : ' + V.MultiEscalar(strtoint(escalar.text),strtoint(cant.text)).RtnAsString(' | ',strtoint(cant.text)));

    end;
end;



procedure TForm1.sumarvecClick(Sender: TObject);
var V: Vector;
vmulti:vector;
begin
  validartext(repe.text);
  validardesde(strtoint(desde.text));
  if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) and ((repe.text='no') or (repe.text='NO')) then
    begin
      ShowMessage('La cantidad de elementos del rango es insuficiente para la cantidad indicada');
    end
  else if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) then
    begin
      ShowMessage('El "Rango desde" debe ser menor al "Rango hasta"');
    end
  else
    begin
      V.CargarAleatorio(strtoint(desde.text),strtoint(hasta.text),(repe.text),strtoint(cant.text));
      vmulti.CargarAleatorio(strtoint(desde.text),strtoint(hasta.text),(repe.text),strtoint(cant.text));
      Memo1.Lines.Clear;
      memo1.Lines.Add(V.RtnAsString(separador.text,strtoint(cant.text)));
      v.sumarvector(vmulti,strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text));
      memo1.Lines.Add('Vector generado aleatorio: '+Vmulti.RtnAsString(separador.text,strtoint(cant.text)));
      memo1.Lines.Add('Sumatoria posición a posición: '+V.RtnAsString(separador.text,strtoint(cant.text)));
    end;
end;

procedure TForm1.Button1Click(Sender: TObject);
Var vmulti,V: Vector;
  P: Integer;
begin
  P := 0;
    validartext(repe.text);
  validardesde(strtoint(desde.text));
  if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) and ((repe.text='no') or (repe.text='NO')) then
    begin
      ShowMessage('La cantidad de elementos del rango es insuficiente para la cantidad indicada');
    end
  else if validarrango(strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text)) then
    begin
      ShowMessage('El "Rango desde" debe ser menor al "Rango hasta"');
    end
  else
    begin
      Memo1.Lines.Clear;
      V.CargarAleatorio(strtoint(desde.text),strtoint(hasta.text),(repe.text),strtoint(cant.text));
      memo1.Lines.Add(V.RtnAsString(separador.text,strtoint(cant.text)));
      memo1.lines.add('Menor:'+V.Menor(P,strtoint(cant.text)).tostring + ' - Posicion: '+p.tostring );
      memo1.lines.add('Mayor:'+V.Mayor(P,strtoint(cant.text)).tostring + ' - Posicion: '+p.tostring );
      memo1.lines.add('* Escalar : ' + V.MultiEscalar(strtoint(escalar.text),strtoint(cant.text)).RtnAsString(' | ',strtoint(cant.text)));
      memo1.Lines.Add('Promedio del vector:' + floattostr(V.promedio(strtoint(cant.text))));
      memo1.Lines.Add('Sumatoria de los elementos:' + inttostr(V.Sumatoria(strtoint(cant.text))));
      vmulti.CargarAleatorio(strtoint(desde.text),strtoint(hasta.text),(repe.text),strtoint(cant.text));
      v.sumarvector(vmulti,strtoint(desde.text),strtoint(hasta.text),strtoint(cant.text));
      memo1.Lines.Add('Vector generado aleatorio: '+Vmulti.RtnAsString(separador.text,strtoint(cant.text)));
      memo1.Lines.Add('Sumatoria posición a posición: '+V.RtnAsString(separador.text,strtoint(cant.text)));
    end;
end;

end.
