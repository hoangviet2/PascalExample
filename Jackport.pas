var a:array[1..2009] of boolean;
  i,j,n,dem,L,b:integer;
  begin
       Write('L=');readln(L);
       for i:=1 to 2009 do a[i]:=true;
       n:=2009; j:=1;
       while n>1 do
        begin
            dem:=0;
            while dem < 612 do
              begin
                  if a[j] then dem:=dem+1; if dem = 612 then a[j]:=false;
                  if j=2009 then j:=1 else j:=j+1;
              end;
            n:=n-1;
        end;
       for i:= 1 to 2009 do if a[i] then j:=i;
       writeln('so doc dac:',j);

       b:=1+L-j;
       if b>2009 then b:=b-2009;while b<1 do b:=b+2009;
       write('muon so con lai la ',L,' thi xuat phat tu so: ',b);
readln;
end.