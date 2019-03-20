tu = -6;
dt = 0.001;
awal = -20;
akhir = 20;
t = awal:dt:akhir;
u = zeros(1,length(t));

b = round((tu-awal)/dt);

for i=b:length(t)
   u(i) = 1; 
end

plot(t,u);
xlabel('t (sekon)');
ylabel('u(t)');