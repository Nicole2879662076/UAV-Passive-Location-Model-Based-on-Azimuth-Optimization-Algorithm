function f=fun1(x)
a=sqrt(x(1)^2+100^2-2*x(1)*100*cosd(x(4)));
f=acosd((a^2+x(1)^2-100^2)/(2*a*x(1)))-30;
end
%%fun1是第二步定位算法中的目标函数，第二步算法有六个决策变量
%%[x1,x2,x3,y1,y2,y3]封装于x向量内，对应FY07，FY04，FY05