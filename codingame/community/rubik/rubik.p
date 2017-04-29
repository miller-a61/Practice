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
    N : Int32;
    Inputs: TStringList;
begin
    Inputs := TStringList.Create;
    ParseIn(Inputs);
    N := StrToInt(Inputs[0]);

    if (N > 1) then
        N := N * 6 * (N - 2) + 8;

    writeln(N);
    flush(StdErr); flush(output); // DO NOT REMOVE
end.