function[root]=bisection(x1,xu,step,epes)
n=1;
er=1;
xm=0;

if f(x1)*f(xu)<0
    while (n<=step && er>epes)
        xm_old=xm;
        xm(x1+xu)/2;

        if f((x1)*f(xm)<0
            xu=xm;
        else
            x1=xm;
        end
        er=abs((xm-xm_old)/xm);
        n=n+1;
    end
    root=xm;
else
    disp("There is no root in this Intervel");
end
end

