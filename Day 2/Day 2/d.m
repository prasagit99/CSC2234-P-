a=[1 2 3; 4 5 6];
b=[7 8 9; 10 11 12];

[m,n]=size(a);
[m1,n1]=size(b);

if m~=m1 || n~=n1
    error("diamention not match");
end
c=zeros(m,n);
%0 0 0
%0 0 0

for i=1:m %row loop 1:2 1st i=1
    for j=1:n %column Loop 1:3 1st j=1 j=2
        c(i,j)=a(i,j)+b(i,j); %(1,1)
                               %(1,2)
    end
end

disp("Addition of a and b");
disp(c)