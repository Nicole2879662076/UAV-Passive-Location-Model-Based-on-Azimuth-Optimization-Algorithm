function f=fun3(x)
global gamma1 beta1 FY41 FY42 FY51 FY52
d04=FY41;
d07=x(1);
d47=sqrt(x(1)^2+FY41^2-2*x(1)*FY41*cosd(x(2)-FY42));
d45=sqrt(FY51^2+FY41^2-2*FY51*FY41*cosd(FY52-FY42));
d57=sqrt(x(1)^2+FY51^2-2*x(1)*FY51*cosd(x(2)-FY52));
db=acosd((d07^2+d47^2-d04^2)/(2*d07*d47))-beta1;
dg=acosd((d47^2+d57^2-d45^2)/(2*d47*d57))-gamma1;
f=db^2+dg^2;
end




%%fun3是第三步移动的目标函数
%%第三步移动需要输入两个目标角，以及04，05的真实位置
%%第三步的决策变量为FY07最终位置的坐标