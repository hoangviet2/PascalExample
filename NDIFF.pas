program NDIFF;
uses crt;
type mang=array[1..100] of integer;
var m,n :integer;
    f:text;
    a:array[1..100] of integer;
const   fi='Input.txt';
        fo='Output.txt';
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
function timtanxuat(var a:mang; x:integer):integer;
var i,tong:integer;
begin
    tong:=0;
    for i:=1 to n do
    if a[i]=x then tong:=tong+1;
    timtanxuat:=tong;
end;
procedure progress;
var i,z,tong:integer;
begin
  tong:=0;
  z:=0;
  assign(f,fo);
  rewrite(f);
  for i:=1 to n do
  if a[i]<>z then
  if timtanxuat(a,a[i])=1 then tong:=tong+1
  else if timtanxuat(a,a[i])>1 then
  begin
  z:=a[i];
  tong:=tong+1;
  end;
  write(f,tong);
  close(f);
end;
begin
    getdata;
    progress;
end.

