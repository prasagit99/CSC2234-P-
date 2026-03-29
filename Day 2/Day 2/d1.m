%function c=Mult(a,b) 
a=[1 2 3; 4 5 6];
b=[7 8; 9 10; 11 12];

[m,n]=size(a);
[m1,n1]=size(b);

if n~=m1
    error("diamention not match");
end
c=zeros(m,n1);
%0 0 0
%0 0 0
for i=1:m % 1:2 1st i=1
    for j=1:n1 % 1:2  j=1 j=2
        for k=1:n %1 3 k=1 k=2 k=3
        c(i,j)=c(i,j)+a(i,k)*b(k,j); 
        %c(1,2)=0+a(1,1)*b(1,2)
        %c(1,2)=7+a(1,2)*b(2,2)
        %c(1,2)=25+a(1,3)*b(3,2)=58
                              
        end
    end
end

disp("Multiplication of a and b");
disp(c)