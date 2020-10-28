// determind Prime
function prime (n:integer):boolean;
var x:integer; result:boolean;
begin
    result:=true;
    for x:= 2 to n-1 do
    if n mod x=0 then result:= false; //chia cho các số từ 2 đến n-1
    prime:= result;
end;

// determined Reverse
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
        if (a[i]+a[j] < a[j]+a[i]) then
                hoanvi(a[i],a[j]);

end;