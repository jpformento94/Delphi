unit Code;

interface

  uses
    System.SysUtils, System.Variants, System.Classes;

  const
    MIN = 1;
    MAX = 10;

  type
    //Vector objeto
    vector = object
      private
        elementos : array[MIN..MAX] of integer;
      public
        procedure cargarRandom();
        function devolverString():string;
        function media():real;
        function mediana():integer;
        function moda():integer;
        function valorMin():integer;
        function valorMax():integer;
    end;

implementation

  //Cargar el vector al azar
  procedure vector.cargarRandom();
  var
    i:integer;
  begin
    randomize();
    for i := MIN to MAX do
      elementos[i]:= random(10);
  end;

  //Devuelve el vector como un string
  function vector.devolverString: string;
  var
    i: integer;
    s: string;
  begin
    s:='';
    for i := MIN to MAX do
      s:= s + inttostr(elementos[i]) + ' ';
    result := s;
  end;

  //Calcula la media del vector
  function vector.media: Real;
  var
    i, suma: integer;
  begin
    suma:= 0;
    for i := MIN to MAX do
      suma:= suma + elementos[i];
    result:= suma / MAX;
  end;

  //Devuelve el elemento de la mitad
  function vector.mediana: Integer;
  begin
    if (MAX mod 2 = 0) then
      result:= elementos[MAX div 2]
    else
        result:= elementos[(MAX+1) div 2];
  end;

  //Devuelve el o los elementos que mas se repiten
  function vector.moda: integer;
  var
    i, j, aux1, aux2, repemayor, repenueva: integer;
  begin
    aux1:= 0;
    aux2:= 0;
    repemayor:= 0;
    repenueva:= 0;
    for i := MIN to MAX do
      begin
        for j := (i + 1) to MAX do
          begin
            if (elementos[i] = elementos[j]) then
              begin
                inc(repenueva);
                aux1:= elementos[i];
              end;
          end;
        if (repemayor <= repenueva) and (repenueva <> 0) then
          begin
            repemayor:= repenueva;
            aux2:= aux1;
          end;
        repenueva:= 0;
      end;
    result:= aux2;
  end;

  //Devuelve el valor mas chico de los elementos del vector
  function vector.valorMin: Integer;
  var
    i, menor: integer;
  begin
    menor:= elementos[MIN];
    for i := (MIN+1) to MAX do
      begin
        if (elementos[i] < menor) then
          menor:= elementos[i];
      end;
    result:= menor;
  end;

  //Devuelve el valor mas grande de los elementos del vector
  function vector.valorMax: Integer;
  var
    i, mayor: integer;
  begin
    mayor:= elementos[MIN];
    for i := (MIN+1) to MAX do
      begin
        if (elementos[i] > mayor) then
          mayor:= elementos[i];
      end;
    result:= mayor;
  end;
end.
