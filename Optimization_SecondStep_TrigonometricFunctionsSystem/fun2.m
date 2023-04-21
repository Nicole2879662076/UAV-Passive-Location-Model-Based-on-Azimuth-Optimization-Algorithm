
function [g,h]=fun2(x)
global beta gamma alpha
a=sqrt(x(1)^2+100^2-2*x(1)*100*cosd(x(4)));%0107
b=x(1);%0007
c=sqrt(x(1)^2+x(2)^2-2*x(1)*x(2)*cosd(x(4)-x(5)));%0407
d=sqrt(x(1)^2+x(3)^2-2*x(1)*x(3)*cosd(x(4)-x(6)));%0705
m=sqrt(x(2)^2+x(3)^2-2*x(2)*x(3)*cosd(x(5)-x(6)));%0405
e=sqrt(x(2)^2+100^2-2*x(2)*100*cosd(x(5)));%0401
f=x(2);%0004
k=sqrt(x(3)^2+100^2-2*x(3)*100*cosd(x(6)));%0501
j=x(3);
g=[];
h=[ acosd((a^2+x(1)^2-100^2)/(2*a*x(1)))-alpha
    acosd((b^2+c^2-f^2)/(2*b*c))-beta
    acosd((c^2+d^2-m^2)/(2*c*d))-gamma
    acosd((e^2+f^2-100^2)/(2*e*f))-30
    acosd((j^2+k^2-100^2)/(2*j*k))-10
    ];
end
