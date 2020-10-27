program sohoanhao;
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
function prefectnum (n:integer):boolean;
var sum,x:integer; result:boolean;
begin
    sum:=0;
    result:=false;
    for x:= 1 to n-1 do
    if n mod x=0 then sum:= sum + x;
    if sum = n then result:= true;
    prefectnum:= result;
end;
procedure progress;
begin
  assign(f,fo);
  rewrite(f);
  for x:= 1 to n-1 do
  if prefectnum(x) then write(f,x:3);
  close(f);
end;
begin
    getdata;
    progress;
end.


