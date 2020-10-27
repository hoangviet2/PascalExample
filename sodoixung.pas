program symmetricalnumbers;
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
function reverse (n:integer):integer;
var x:integer; result:integer;
begin
    x:= 0;
    result:=0;
    while n>0 do
    begin
        x:= n mod 10;
        result:= result*10+x;
        n:= n div 10;
    end;
    reverse:= result;
end;
function symmetricalnumbers (n,x:integer):boolean;
result:boolean;
begin
    result:=false;
    if x=n then result:= true;
    symmetricalnumbers:=result;
end;
procedure progress;
begin
  assign(f,fo);
  rewrite(f);
  if symmetricalnumbers(n,reverse(n)) then write(f,n);
  close(f);
end;
begin
    getdata;
    progress;
end.
