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