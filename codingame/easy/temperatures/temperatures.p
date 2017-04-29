
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
    n : Int32; // the number of temperatures to analyse
    temps : TStringList; // the n temperatures expressed as integers ranging from -273 to 5526
    Inputs: TStringList;
    closest : Int32;
    i : Int32;
    tst : Int32;
begin
    Inputs := TStringList.Create;
    ParseIn(Inputs);
    n := StrToInt(Inputs[0]);
    temps := TStringList.Create;
    ParseIn(temps);
    closest := 5527;
    
    if n = 0 then
        writeln(0);
    if n = 0 then
        exit;

    for i := 0 to n - 1  do
        begin
            tst := StrToInt(temps[i]);
            if abs(closest) = abs(tst) then
                if closest < 0 then
                    closest := tst;
            if abs(closest) > abs(tst) then
                closest := tst;
        end;
        
    writeln(closest);
    flush(StdErr); flush(output); // DO NOT REMOVE
end.