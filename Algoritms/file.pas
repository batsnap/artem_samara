type matrix=array of array of integer;
var
i,j,n,m,k1,k2:integer;
matr:matrix;
procedure swapRow(matr:matrix;n:integer;m:integer;k1:integer;k2:integer);
var
    i,swap:integer;
begin
    if (k1<n) and (k2<n) then
        begin
            for i:=0 to m-1 do
                swap:=matr[k1,i];
                matr[k1,j]:=matr[k2,j];
                matr[k2,i]:=swap;
        end
    else
        begin
            writeln('nevozmojno')
        end;    
end;
begin
    randomize;
    read(n,m);
    read(k1,k2);
    setlength(matr,n);
    for i:=0 to n-1 do
        begin
            setlength(matr[i],m);
            for j:=0 to m-1 do 
                begin
                    matr[i,j]:=random(10);
                    write(matr[i,j],' ');
                end;
            writeln();
        end;
    swapRow(matr,n,m,k1,k2);
    writeln();
    for i:=0 to n-1 do
        begin
            for j:=0 to m-1 do 
                begin
                    write(matr[i,j],' ');
                end;
            writeln();
        end;

end.