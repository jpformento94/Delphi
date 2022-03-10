unit Cadenas;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Dialogs, character;

type
  cadenaTexto = object
    texto: string;
    procedure cargarString();
    function soloMayusculas():string;
    function soloMinusculas():string;
  end;

implementation

  //Cargar texto a utilizar
  procedure cadenaTexto.cargarString();
  begin
    texto:= InputBox('Ingresar un Caracter', 'Ingresar Datos', 'Texto de prueba Hola Mundo!');
  end;

  //Muestras las mayusculas del texto
  function cadenaTexto.soloMayusculas(): string;
  var
    i: Integer;
  begin
    for i := 1 to Length(texto) do
      begin
        if Character.TCharacter.IsSeparator(texto[i]) Or Character.TCharacter.IsUpper (texto[i]) Then
          Result := Result + texto[i];
      end;
  end;

  //Muestra las minusculas del texto
  function cadenaTexto.soloMinusculas: string;
  var
    i: integer;
  begin
    for i := 1 to Length(texto) do
      begin
        if Character.TCharacter.IsSeparator(texto[i]) Or Character.TCharacter.IsLower (texto[i]) Then
          Result := Result + texto[i];
      end;
  end;

  //Muestra el texto sin espacios
  function sinEspacios(s: string): string;
  begin
  end;

  //Muestra el texto sin espacios e invertido
  function sinEspaciosInvertida(s: string): string;
  begin
  end;

  //Muestra la cantidad de caracteres
  function cantidadDeCaracteres(s: string): string;
  begin
  end;

  //Muestras la cantidad de veces que aparece cada consonante
  function ocurrenciasDeConsonantes(s: string): string;
  begin
  end;

end.
