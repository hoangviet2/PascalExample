Program fibonancci;
uses crt;
var i,n,f1,f2,f3:longint;
procedure fibo(var k:longint);
begin
 f1:=1;
 f2:=1;
 for i:=1 to k do
 begin
  f3:=f1+f2;
  write(f1:3,' ');
  f1:=f2;
  f2:=f3;
 end;
end;
begin
 write('Nhap n: ');readln(n);
 fibo(n);

end.