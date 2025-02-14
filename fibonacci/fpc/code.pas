program FibonacciPascal;

uses
  SysUtils;

function Fibonacci(n: Int32): Int32;
begin
  if n = 0 then
    Fibonacci := 0
  else if n = 1 then
    Fibonacci := 1
  else
    Fibonacci := Fibonacci(n - 1) + Fibonacci(n - 2);
end;

var
  u, r, i: Int32;

begin
  if ParamCount < 1 then
  begin
    WriteLn('Usage: ', ParamStr(0), ' <number>');
    Exit;
  end;

  u := StrToInt(ParamStr(1));
  r := 0;
  for i := 1 to u - 1 do
  begin
    r := r + Fibonacci(i);
  end;
  WriteLn(r);
end.