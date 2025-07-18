function D = PSO_PO(Vpv, Ipv)

Dmax=80;
Dmin=20;
Dinit=20;
DD=10;
DDmin=1e-4;

persistent Vold Pold Dold DBest;

if isempty(Vold)
   Vold=0;
   Pold=0;
   Dold=Dinit;
   DBest=0;
end

D=Dold;

for i=1:7
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
    dV=Vpv-Vold;

   if dP~=0 
       if dP<0
          if dV<0
            D=Dold - DDmin; 
          else
            D=Dold + DDmin; 
          end
       else
          if dV<0
             D=Dold + DDmin; 
          else
             D=Dold - DDmin; 
          end
       end
   else 
      D=Dold;
   end
   
   if D>=Dmax || D<Dmin
   D=Dold;  
   end
end