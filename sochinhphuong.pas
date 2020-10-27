program squarenumber;
Uses crt;
var x,n :integer;
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
function squarenumber(n:integer):boolean;
var x:integer; result:boolean;
begin
    result:=false;
    x:=0;
    while x*x <= n do
    begin
        if x*x = n then result:= true;
        x:= x+1;
    end;
    squarenumber:= result;
end;
procedure progress;
begin
  assign(f,fo);
  rewrite(f);
  for x:= 1 to n do
  if squarenumber(x) then write(f,x:3);
  close(f);
end;
begin
    getdata;
    progress;
end.

