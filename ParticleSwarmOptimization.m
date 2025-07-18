function D = ParticleSwarmOptimization(Vpv, Ipv)

Dinit=20;
DD=5;

persistent Pold Dold DBest;

if isempty(Pold)
   Pold=0;
   Dold=Dinit;
   DBest=0;
end

D=Dold;

for i=1:13
    Ppv=Vpv*Ipv;
    dP=Ppv-Pold;
    if dP>0
        DBest=Dold;
    else
        D=Dold+DD;
        Dold=D;
    end
end

while dP<10
    Pold=Ppv;
    D=DBest;
    Ppv=Vpv*Ipv;
    dP=Ppv-Pold;
end