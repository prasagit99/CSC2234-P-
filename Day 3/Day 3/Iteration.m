function root = Iteration(x0,step,epes)

xr=x0;
n=1;
er=1;


    while (n<=step && er>epes)
        xr_old=xr;
        xr=g(xr_old);

        if xr ~=0
            er=abs(xr-xr_old)/xr;
        end
         n=n+1;
         error(n)=er;
         stp(n)=n;
    end
   plot(stp,error);
   root=xr;
   xlabel('stp');
   ylabel('error');
   end
    

