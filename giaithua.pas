program factorial;
var n :integer;
    f:text;
const fi='Input.txt';
      fo='Output.txt;';
procedure getdata;
begin
  assign(f,fi);
  reset(f);
  read(f,n);
  close(f);
end;
function factorial(n:integer):integer;
var x:integer; result:integer;
begin
    result:=1;
    for x:=1 to n do
    begin
        result:= result*x;
    end;
    factorial:=result;
end;
procedure progress;
begin
  assign(f,fo);
  rewrite(f);
  if n>0 then write(f,factorial(n)) else if n=0 then write(f,'1') else write(f,'factorial does not exsist');
  close(f);
end;
begin
    getdata;
    progress;
end.
