function [yint2]=newtonInt(x,y,xi)
%=[1 2 3]
%=[2 3 10]
%xi=3
n=length(x); %n=3
fdd=zeros(n);
yint=zeros(n);
yint=zeros(n,1);
Ea=zeros(n,-1,1);
fdd(:,1)=y(:);

%FDD table
for j=2:n
    for i=1:n+1-j
        fdd(i,j)=(fdd(i+1,j-1)-fdd(i,j-1))/(x(i+j-1)-x(i))
    end
end
xtrem=1;
yint(1)=fdd(1,1);
for order=2:n
    xtrem=xtrem*(xi-x(order-1));
    yint2=yint(order-1)+fdd(1,order)*xtrem;
    Ea(order)=yint2-yint(order-1)
    yint(order)=yint2;
end
%newtonInt([1 2 4],[2 3 10],3)
