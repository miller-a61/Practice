program Answer;
{$H+}
uses sysutils, classes, math, StrUtils;
procedure ParseIn(Inputs: TStrings) ;
var Line : string;
begin
    readln(Line);
    Inputs.Clear;
    Inputs.Delimiter := ' ';
    Inputs.DelimitedText := Line;
end;

var
    rnds : Int32;
    cash : Int32;
    play : TStringList;
    i : Int32;
    Inputs: TStringList;
    bet  : Int32;
    ball : Int32;
    call : String;
    target : Int32;
begin
    Inputs := TStringList.Create;
    ParseIn(Inputs);
    rnds := StrToInt(Inputs[0]);
    ParseIn(Inputs);
    cash := StrToInt(Inputs[0]);
    play := TStringList.Create;
    for i := 0 to rnds -1 do
    begin
        ParseIn(play);
        bet := ceil(cash/4);
        cash := cash - bet;
        ball := StrToInt(play[0]);
        call := play[1];
        //writeln(cash);
        if (call = 'PLAIN') then
            target:= StrToInt(play[2]);
      
        if  (call = 'EVEN') then //and (ball > 0) and (ball % 2 = 0) ) then
            if (ball > 0) then
                if (ball mod 2 = 0) then
                    cash := cash + (bet * 2);
        //writeln(cash);            
        if (call = 'ODD') then
            if (ball mod 2 = 1) then
                cash := cash + (bet * 2);
        //writeln(cash);
        if (call = 'PLAIN') then
            if (ball = target) then
                cash := cash + (bet * 36);
        //writeln('-----------');
    end;

    writeln(cash);
    flush(StdErr); flush(output); // DO NOT REMOVE
end.