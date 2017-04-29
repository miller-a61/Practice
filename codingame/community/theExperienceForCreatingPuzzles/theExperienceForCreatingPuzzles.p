program Answer;
{$H+}
uses sysutils, classes, math;

procedure ParseIn(Inputs: TStrings) ;
var Line : string;
begin
    readln(Line);
    Inputs.Clear;
    Inputs.Delimiter := ' ';
    Inputs.DelimitedText := Line;
end;

var
    lvl : Int32;
    needed : Int32;
    xp : Int32;
    Inputs: TStringList;
begin
    Inputs := TStringList.Create;
    ParseIn(Inputs);
    lvl := StrToInt(Inputs[0]);
    ParseIn(Inputs);
    needed := StrToInt(Inputs[0]);
    ParseIn(Inputs);
    xp := StrToInt(Inputs[0]);

    xp := xp * 300;

    while (xp >= needed) do
    begin
        lvl := lvl + 1;
        xp := xp - needed;
        needed := floor(lvl * 10 * sqrt(lvl));
    end;
    
    writeln(lvl);
    writeln(needed - xp);
    flush(StdErr); flush(output); // DO NOT REMOVE
end.