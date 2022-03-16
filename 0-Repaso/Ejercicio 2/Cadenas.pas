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
    function sinEspacios():string;
    function sinEspaciosInvertida():string;
    function cantidadDeCaracteres: string;
    function ocurrenciasDeConsonantes:string;
  end;

  vector= array[66..90] of integer;

implementation

  //Cargar texto a utilizar
  procedure cadenaTexto.cargarString();
  begin
    texto:= InputBox('Ingresar una cadena de texto', 'Cadena de texto', 'Texto de prueba Hola Mundo!');
    while ((Length(texto) > 40)) do
      begin
        ShowMessage('El texto no debe tener mas de 40 caracteres');
        texto:= InputBox('Ingresar un Caracter', 'Ingresar Datos', 'Texto de prueba Hola Mundo!');
      end;
    texto:= trim(texto);
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
  function cadenaTexto.sinEspacios: string;
  var
    i: integer;
  begin
    for i := 1 to Length(texto) do
      begin
        if (texto[i]<> ' ') Then
          Result := Result + texto[i];
      end;
  end;

  //Muestra el texto sin espacios e invertido
  function cadenaTexto.sinEspaciosInvertida: string;
   var
    i: integer;
    invertido: string;
  begin
    for i := Length(texto) downto 1 do
      begin
        if (texto[i]<> ' ') Then
          Result := Result + texto[i];
      end;
  end;

  //Muestra la cantidad de caracteres
  function cadenaTexto.cantidadDeCaracteres:string;
  begin
    result:= inttostr(Length(texto));
  end;

  //Muestras la cantidad de veces que aparece cada consonante
  function cadenaTexto.ocurrenciasDeConsonantes:string;
  var
    i, indiceChar: integer;
    s, cantidad: string;
    v: vector;
  begin
    cantidad:= '';
    s:= texto;
    //Inicializo el vector en 0 para que no sume basura
    for i := 66 to 90 do
      v[i]:= 0;
    //convierto el texto a mayusculas
    s:= UpperCase(s);
    //Recorro el texto
    for i := 1 to Length(s) do
      begin  //Comparo si no es una vocal
        if (s[i] <> 'A') and (s[i] <> 'E') and (s[i] <> 'I') and
            (s[i] <> 'O') and (s[i] <> 'U') then
        begin
          {Cada indice del vector corresponde al valor ASCII de la consonante
          entonces le sumo 1}
          indiceChar:=  Ord(s[i]);
          v[indiceChar] := (v[indiceChar] + 1);
        end;
      end;
    for indiceChar := 66 to 90 do
      begin
        if (v[indiceChar] <> 0) then
          cantidad:= cantidad + char(indiceChar) + '=' + inttostr(v[indiceChar]) + ' ';
      end;
    result:= cantidad;
  end;

end.
