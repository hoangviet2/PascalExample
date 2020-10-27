program MAXNUM;
uses crt;
var n:integer;
    a:array[1..100] of string;

procedure nhap;
var i:integer;
begin   
        write('Nhap n: ');readln(n);
        for i:=1 to n do
                readln(a[i]);
end;

procedure xuat;
var i:integer;
begin
        for i:=1 to n do
                write(a[i]);
end;

procedure hoanvi(var x,y: string);
var t: string;
begin
        t:=x ;
        x:=y;
        y:=t;
end;
procedure maxnum;
var i,j:integer;
begin
      for i:=1 to n-1 do
        for j:=i+1 to n do
        if (a[i]+a[j] < a[j]+a[i]) then
                hoanvi(a[i],a[j]);

end;

begin
	clrscr;
        nhap;
        maxnum;
        xuat;
        readln;
end.