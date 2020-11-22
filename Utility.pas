// determind Prime
// Input: n:integer(so nao cũng được)
// Output: result:boolean(bool) => trả về kết quả rằng đó là số nguyên tố (true) và ngược lại (false)
function prime (n:integer):boolean;
var x:integer; result:boolean;
begin
    result:=true;
    for x:= 2 to n-1 do
    if n mod x=0 then result:= false; //chia cho các số từ 2 đến n-1
    prime:= result;
end;

// determined Reverse
// Input: n:integer(so nao cũng được)
// Output: result:integer(so nghịch đảo của số nào cũng được)
function reverse (n:integer):integer;
var x:integer; result:integer;
begin
    x:= 0;
    result:=0;
    while n>0 do
    begin
        x:= n mod 10; // tách số cuối
        result:= result*10+x;// đưa số cuối lên đầu
        n:= n div 10; // lấy số đầu
    end;
    reverse:= result;
end;

// perfect numbers(function to check)
// Input: number needs to check
// Output: result value (true/false) determind that is n an perfect number (số hoàn hảo)
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

// with 3 arrays and l1 l2 and l3 numbers of elements in each arrays 
// give it into 1 array
// Input: a,b,c:array[numbers of elements] of (type of data) and a,b,c numbers of elements in each array
// Output: compound array(ghep) contist of a(am),b(ko),c(duong)
procedure compoundArray;
var l1,l2,l3:integer // must have it before !!!
begin
    for i:=1 to l1 do
        ghep[i]:=am[i];
        for i:=1 to l3 do
        ghep[l1+i]:=ko[i];
        for i:=1 to l2 do
        ghep[l1+l3+i]:=duong[i];
end;

// change the position of 2 elements of an array
// Input: x,y(2 numbers or elements need to change)
// Output: x(y),y(x) are numbers or element after switch
procedure change(var x,y: string);//string are integer up to you!
var t: string;// t is temporary value; x,y are values need to switch.
begin
        t:=x ;
        x:=y;
        y:=t;
end;

// sort to the biggest to the smallest (also use for sort an array)
procedure sort;
var i,j:integer;// position of array1 and array2
begin
      for i:=1 to n-1 do
        for j:=i+1 to n do
        if (a[i]+a[j] < a[j]+a[i]) then //also uses for compound string 
                change(a[i],a[j]);

end;

// determind the number which is the number call Số chính phương
// input: n:integer (number need to determind)
// Output: is it a số chính phương (true/false)
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

//fibonancci numbers
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

//send back the factorial of an arrange
// Input: n:integer (arrange)
// Output: the numbers after we factorial its(result:inter)
function factorial(n:integer):integer;
var x:integer; result:integer;
begin
    result:=1;
    for x:=1 to n do
    begin
        result:= result*x;
    end;
    factorial:=result;
end;

//search how many time is an element repeat in an array
// input: a:array (of element), x:integer (the head number)
// output: how many times it repeated (x)
function timtanxuat(a:mang; x:integer):integer;
var i,tong:integer;
begin
    tong:=0;
    for i:=1 to n do
    if a[i]=x then tong:=tong+1;
    timtanxuat:=tong;
end;

//find the distance between a and b
// Input: number a,b :longint (number need to caculate)
// Output: distance:longint (distance between 2 object (a,b))
function khoangcach(a,b:longint):longint;
var distance:longint;
begin
    if a>=b then distance:=a-b
    else if a<b then distance:=b-a;
    khoangcach:=distance;
end;

//function find how many numbers arrange increasingly
function increaselength(n:integer):integer;
var i,j,tong,max:integer;
begin
  tong:=1;
  max:=0;
  for i:=1 to n-1 do
    if (a[i]<=a[i+1]) then
      begin
      tong:=tong+1;
      if tong>max then max:=tong;
      end;
    increaselength:=max;
end;