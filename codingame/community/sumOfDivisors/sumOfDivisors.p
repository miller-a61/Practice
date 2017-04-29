// Auto-generated code below aims at helping you parse
// the standard input according to the problem statement.
program Answer;
{$H+}
uses sysutils, classes, math;

// Helper to read a line and split tokens
procedure ParseIn(Inputs: TStrings) ;
var Line : string;
begin
    readln(Line);
    Inputs.Clear;
    Inputs.Delimiter := ' ';
    Inputs.DelimitedText := Line;
end;

var
    x : Int64;
    y : Int64;
    sum : Int64;
    i : Int64;
    a : Int64;
    
    Inputs: TStringList;
begin
    Inputs := TStringList.Create;
    ParseIn(Inputs);
    x := StrToInt(Inputs[0]);

    y := x div 2;
    sum := y;
    a := 1;
    
    for i := 1 to y do
    begin
        sum := sum + y div i*(1+x div i);
        if (x div i mod 2 = a ) then
            sum := sum + 1+y div i;
       // i := i + 1;
    end;

    writeln(sum);
    flush(StdErr); flush(output); // DO NOT REMOVE
end.