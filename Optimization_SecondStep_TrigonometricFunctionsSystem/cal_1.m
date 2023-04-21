function [gamma1,beta1]=cal_1(m)
%m为第二步计算出的坐标组，顺序为x1,x2,x3,y1,y2,y3
d07=m(1);
d04=m(2);
d47=sqrt(m(1)^2+m(2)^2-2*m(1)*m(2)*cosd(m(4)-m(5)));
d57=sqrt(m(1)^2+m(3)^2-2*m(1)*m(3)*cosd(m(4)-m(6)));
d45=sqrt(m(2)^2+m(3)^2-2*m(2)*m(3)*cosd(m(5)-m(6)));
gamma1=acosd((d47^2+d57^2-d45^2)/(2*d47*d57));
beta1=acosd((d07^2+d47^2-d04^2)/(2*d07*d47));
end