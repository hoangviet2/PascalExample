program hi;
uses crt;
var m,n,l1,l2,l3:integer;
    f:text;
    a:array[1..100] of integer;
    am:array[1..100] of integer;
    duong:array[1..100] of integer;
    ko:array[1..100] of integer;
    ghep:array[1..100] of integer;
const fi='input.txt';
      fo='output.txt';
procedure nhap;
var i:integer;
begin
        assign(f,fi);
        reset(f);
        read(f,n);
        for i:=1 to n do
        read(f,a[i]);
        close(f);
end;
procedure xuat;
var i:integer;
begin
        assign(f,fo);
        rewrite(f);
        for i:=1 to n do
        write(f,a[i]:3);
        close(f);
end;
procedure mangam;
var i:integer;
begin
        l1:=0;
        for i:=1 to n do
        if a[i]<0 then
        begin
                l1:=l1+1;
                am[l1]:=a[i];
        end;
end;
procedure mangduong;
var i:integer;
begin
        l2:=0;
        for i:=1 to n do
        if a[i]>0 then
        begin
                l2:=l2+1;
                duong[l2]:=a[i];
        end;
end;
procedure mangko;
var i:integer;
begin
        l3:=0;
        for i:=1 to n do
        if a[i]=0 then
        begin
                l3:=l3+1;
                ko[l3]:=a[i];
        end;
end;
procedure mangghep;
var i:integer;
begin
        for i:=1 to l1 do
        ghep[i]:=am[i];
        for i:=1 to l3 do
        ghep[l1+i]:=ko[i];
        for i:=1 to l2 do
        ghep[l1+l3+i]:=duong[i];
end;
procedure xuatghep;
var i:integer;
begin
        assign(f,fo);
        rewrite(f);
        for i:=1 to n do
        write(f,ghep[i]:3);
        close(f);
end;
begin
  nhap;
  xuat;
  mangam;
  mangduong;
  mangko;
  mangghep;
  xuatghep;
end.
