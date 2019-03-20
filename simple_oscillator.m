tu = 6;
dt = 0.01;
awal = 0;
akhir = 20;
M = 5;
f = 2;
k = 20;

tplot = awal:dt:akhir;
u = zeros(1,length(tplot));

b = round((tu-awal)/dt) + 1;

for i=b:length(tplot)
   u(i) = 1; 
end
subplot(2,1,1);
plot(tplot,u);
xlabel('t (sekon)');
ylabel('u(t)');

syms s t;

G = M*s^2 + f*s + k;
G = 1/G;
%G = (3*s + 1)/(s*(s^3 + 7*s^2 + 5*s + 1));

U = 1/s;

X = U*G;
x = ilaplace(X);
x = subs(x,tplot);
xplot = zeros(1,length(t));

for i=b:length(tplot)
   xplot(i) = x(i-b+1); 
end

subplot(2,1,2);
plot(tplot,xplot);
xlabel('t (sekon)');
ylabel('x(t)');