unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

const
  MIN = 1;
  MAX = 100;

type
  TfLayout = class(TForm)
    bMostarArchivo: TButton;
    mMemo1: TMemo;
    bMinuscula: TButton;
    bSplit: TButton;
    bClearMemo: TButton;
    procedure bMostarArchivoClick(Sender: TObject);
    procedure bMinusculaClick(Sender: TObject);
    procedure bClearMemoClick(Sender: TObject);
    procedure bSplitClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  vectorString= array[MIN..MAX] of string;

var
  fLayout: TfLayout;
  T: TextFile;
  vS: vectorString;
  s: string;

implementation

{$R *.dfm}

  //Muestra el contenido del archivo
  procedure mostrarArchivo();
  var
    S:string;
  begin
    AssignFile(T, '.\texto.txt');
    Reset(T);
    While Not Eof(T) Do begin
      readln(T, S);
      fLayout.mMemo1.Lines.Add(s);
    End;
    CloseFile(T);
  end;

  //Muetras el archivo en minuscula
  Procedure ImprimeMinusculaTXT();
  Var
  S: string;
  Begin
    AssignFile(T, '.\texto.txt');
    Reset(T);
    While Not Eof(T) Do begin
      readln(T, S);
      fLayout.mMemo1.Lines.Add(LowerCase(s));
    End;
    CloseFile(T);
  End;

  //Split
  Function Split(S:String; Sep:String; Var vS: vectorString): Integer;
  Var
    I: Integer;
    P: Integer;
  Begin
    Split := -1;
    // Valida que el ultimo caracterer tenga el separador
    If Copy(S, Length(S)-1,1) <> Sep Then
      S:= S + Sep;
    I := 0;
    P := Pos(Sep,S);
    While P > 0 Do
      Begin
        Inc(I);
        vS[I] := Copy(S,1,P-1); // Copio hasta el patron (sep) no incluido
        S := Copy(S,P+1,Length(S));
        P := Pos(Sep,S);
      End;
    // retornar la cantidad de datos que separo
    Split := I;
  End;

procedure TfLayout.bMinusculaClick(Sender: TObject);
begin
  fLayout.mMemo1.Lines.Add('Texto en minuscula');
  ImprimeMinusculaTXT();
  fLayout.mMemo1.Lines.Add(char(13));
end;

procedure TfLayout.bMostarArchivoClick(Sender: TObject);
begin
  fLayout.mMemo1.Lines.Add('Texto original');
  mostrarArchivo();
  fLayout.mMemo1.Lines.Add(char(13));

end;

procedure TfLayout.bSplitClick(Sender: TObject);
var
  i, Q: integer;
begin
  Q:= 0;
  //Inicializo el vector string vacio
  for i := MIN to MAX do
    vS[i]:= '';
  AssignFile(T, '.\texto.txt');
  Reset(T);
  While Not Eof(T) Do begin
    readln(T, S);
    Q:= Split(S,' ',vS);
  End;
  CloseFile(T);
  for i := MIN to Q do
    mMemo1.Lines.Add('V[' + inttostr(i) + '] = ' + vS[i]);
end;

procedure TfLayout.bClearMemoClick(Sender: TObject);
begin
  fLayout.mMemo1.Clear;
end;

end.
