pembilang = 2;
penyebut = poly([-1 -2 -2]);

syms s t;
[K,p,k] = residue(pembilang,penyebut);

display(K);
display(p);
display(k);

pow = 0;
before = 0;
for i=1:length(K)
    if (p(i) == before) 
        pow=pow+1;
    else
        pow=1;
    end
    Fr(i) = K(i)/((s-p(i))^pow);
    before = p(i);
end

display(Fr);

fr = ilaplace(Fr);

display(fr);

f = 0;
for i=1:length(K)
   f = f + fr(i); 
end

display(f);