function D = HillClimbing(Vpv, Ipv)

Dmax=80;
Dmin=20;
Dinit=20;
DD=1e-3;

persistent Pold Dold;

if isempty(Pold)
   Pold=0;
   Dold=Dinit;
end

Ppv=Vpv*Ipv;
dP=Ppv-Pold;

if dP~=0 
    if dP<0
          D=Dold - DD; 
    else
          D=Dold + DD; 
    end
else 
     D=Dold;
end

if D>=Dmax || D<Dmin
   D=Dold; 
end

Dold=D;
Pold=Ppv;
