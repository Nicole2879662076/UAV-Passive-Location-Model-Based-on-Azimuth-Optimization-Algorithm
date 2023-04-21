X=13.87; r=0.02; sigma=0.0295788; mu = r - 0.5*sigma^2; T = 0.5; nPath =100; nStep = 1000;runs=1000;
h = T/nStep;
W = randn(nStep,nPath);
for i =1:nStep-1
    for j =1:nPath
S(1,j)=13.87;
S(i+1,j) = S(i,j)*exp(mu*h+sigma*sqrt(h)*W(i,j));
    end
end
for j = 1:nPath
    SS(j)=S(nStep,j);
    C(j)=max(SS(j)-X,0);
end
figure(1)
subplot(3,1,1)
plot(S)
subplot(3,1,2)
histogram(S,100)
subplot(3,1,3)
scatter(SS,C)