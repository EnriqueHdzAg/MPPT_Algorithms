function D = IncrementalConductance(Vpv, Ipv)

Dmax=80;
Dmin=20;
Dinit=20;
DD=1e-3;

persistent Vold Iold Dold;

if isempty(Vold)
   Vold=0;
   Iold=0;
   Dold=Dinit;
end

dV=Vpv-Vold;
dI=Ipv-Iold;
G=Ipv/Vpv;
dG=dI/dV;

if dV==0 
    if dI==0 
       D=Dold;
    else
       if DI>0
          D=Dold + DD; 
       else
          D=Dold - DD; 
       end
    end
else 
    if dG==-G
          D=Dold;
    else
       if dG>-G
          D=Dold + DD; 
       else
          D=Dold - DD; 
       end
    end
end


if D>=Dmax || D<Dmin
   D=Dold; 
end

Dold=D;
Vold=Vpv;
Iold=Ipv;