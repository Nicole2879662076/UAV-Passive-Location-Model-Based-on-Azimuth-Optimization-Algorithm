function [g,h]=fun4(x)
d07=x(1);
d17=sqrt(x(1)^2+100^2-2*x(1)*100*cosd(x(2)));
d01=100;
g=[];
h=[acosd((d07^2+d17^2-d01^2)/(2*d07*d17))-30];
end
