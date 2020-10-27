program snt;
uses crt;
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
function snt (n:integer):boolean;
var x:integer; result:boolean;
begin
    result:=true;
    for x:= 2 to n-1 do
    if n mod x=0 then result:= false;
    snt:= result;
end;
procedure progress;
begin
  assign(f,fo);
  rewrite(f);
  for x:= 2 to n do
  if snt(x) then write(f,x:3);
  close(f);
end;
begin
    getdata;
    progress;
end.
