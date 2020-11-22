program DPAIRS;
uses crt;

type mang=array[1..100] of longint;
var m,n :longint;
    f:text;
    a:array[1..100] of longint;
const fi='Input.txt';
      fo='Output.txt;';
procedure getdata;
var i:integer;

begin
  assign(f,fi);
  reset(f);
  read(f,n);
  read(f,m);
  for i:=1 to n do
  read(f,a[i]);
  close(f);
end;

function khoangcach(var a,b:longint):longint;
var distance:longint;
begin
    if a>=b then distance:=a-b
    else if a<b then distance:=b-a;
    khoangcach:=distance;
end;

procedure progress;
var i,j,tong:integer;

begin
  assign(f,fo);
  rewrite(f);
  for j:=1 to n-1 do
  for i:=j+1 to n do
  if khoangcach(a[i],a[j])=m then tong:=tong+1;
  write(f,tong);
  close(f);
end;

//main process
begin
    getdata;
    progress;
end.
