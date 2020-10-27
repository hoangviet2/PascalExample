program INCSEG;
uses crt;
type mang=array[1..100] of longint;
var m,n :integer;
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
  for i:=1 to n do
  read(f,a[i]);
  close(f);
end;
procedure progress;
var i,j,tong,max:integer;
begin
  tong:=1;
  max:=0;
  assign(f,fo);
  rewrite(f);
  for i:=1 to n do
  while (a[i]<=a[i+1]) and (i<=n) do
  begin
  tong:=tong+1;
  if tong>max then max:=tong;
  end;
  write(f,max);
  close(f);
end;
begin
    getdata;
    progress;
end.

