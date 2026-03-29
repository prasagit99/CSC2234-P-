function[root]=newtonM(x0,x1,step,epes)
n=1;
er=1;
xr=x0;
if f(x0)*f(x1)<0
    while (n<=step && er>epes)
        if df(xr)~=0
            xr_new =xr-(f(xr)/df(xr));
        end
        

        if xr_new~=0
            er = abs(xr_new -xr)/xr_new);
        end

      xr= xr_new;
        n=n+1;
        error(n)=er;
        stp(n)=n;
    end
    root=xr;
    plot(stp,error);
    xlabel('steps');
    ylabel('relative error');
end


 %newtonM(1,5,0.001)