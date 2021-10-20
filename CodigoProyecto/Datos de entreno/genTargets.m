clear all
clc
filename = 'datostarget.xlsx';
A = xlsread(filename);
c = zeros(448);
c1 = c;
c2 = c1;
c3 = c1;
uno1 = ones(A(1,7)+1,A(1,8)+1);
uno2 = ones(A(2,7)+1,A(2,8)+1);
uno3 = ones(A(3,7)+1,A(3,8)+1);
c1(A(1,1):A(1,2),A(1,3):A(1,4)) = uno1;
c2(A(2,1):A(2,2),A(2,3):A(2,4)) = uno2;
c3(A(3,1):A(3,2),A(3,3):A(3,4)) = uno3;
c = reshape(c,[],1);
c1 = reshape(c1,[],1);
c2 = reshape(c2,[],1);
c3 = reshape(c3,[],1);
T = [];
p1 = [];
for i=1:160
    if (i >= A(1,5)) && (i<=A(1,6))
        T=[T,c1];
        p1 = [p1,1];
    else 
        T=[T,c];
        p1 = [p1,0];
    end
end
p2 = [];
for i=1:142
    if (i >= A(2,5)) && (i<=A(2,6))
        T=[T,c2];
        p2 = [p2,1];
    else 
        T=[T,c];
        p2 = [p2,0];
    end
end
p3 = [];
for i=1:156
    if (i >= A(3,5)) && (i<=A(3,6))
        T=[T,c3];
        p3 = [p3,1];
    else 
        T=[T,c];
        p3 = [p3,0];
    end
end
Tbin = [p1,p2,p3];