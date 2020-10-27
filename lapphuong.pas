program cube;
uses crt;
var i,j,k :integer;
    f:text;
const fo='Output.txt;';
procedure progress;
begin
  assign(f,fo);
  rewrite(f);
  for i:=1 to 9 do
  for j:=0 to 9 do
  for k:=0 to 9 do
  if (100*i+10*j+k)=(i*i*i + j*j*j + k*k*k) then
  writeln(f,i,j,k);
  close(f);
end;
begin
    progress;
end.
