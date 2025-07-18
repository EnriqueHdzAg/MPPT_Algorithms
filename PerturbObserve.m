function D = PerturbObserve(Vpv, Ipv)

Dmax=80;
Dmin=20;
Dinit=20;
DD=1e-3;

persistent Vold Pold Dold;

if isempty(Vold)
   Vold=0;
   Pold=0;
   Dold=Dinit;
end

Ppv=Vpv*Ipv;
dV=Vpv-Vold;
dP=Ppv-Pold;

if dP~=0 
    if dP<0
       if dV<0
          D=Dold - DD; 
       else
          D=Dold + DD; 
       end
    else
       if dV<0
          D=Dold + DD; 
       else
          D=Dold - DD; 
       end
    end
else 
     D=Dold;
end

if D>=Dmax || D<Dmin
   D=Dold; 
end

Dold=D;
Vold=Vpv;
Pold=Ppv;