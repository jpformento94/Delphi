unit GUI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fLayout: TfLayout;
  T: TextFile;

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

procedure TfLayout.bClearMemoClick(Sender: TObject);
begin
  fLayout.mMemo1.Clear;
end;

end.
