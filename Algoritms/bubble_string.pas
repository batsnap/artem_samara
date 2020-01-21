type arr=array of string;
var ar:arr;
    i,n:integer;
procedure bubble_sort(s:arr;n:integer);
var
    i,j:integer;
    swap:string;
    begin
        for i:=0 to n-1 do
            for j:=0 to n-i-1 do
                if s[j]>s[j+1] then
                    begin
                        swap:=s[j];
                        s[j]:=s[j+1];
                        s[j+1]:=swap;
                    end;
    end;
begin
    readln(n);
    setlength(ar,n);
    for i:=0 to n-1 do
        readln(ar[i]);
    bubble_sort(ar,n);

    for i:=0 to n-1 do
        writeln(ar[i]);
end.