function point = solvepoint(p1,p2)
%该函数用于计算两条多项式曲线的交点
%p1：多项式的系数向量，按高阶系数向低阶系数排列
%output:X 交点的横坐标向量  Y交点的纵坐标向量
n_p1 = length(p1);
n_p2 = length(p2);
m = max(n_p1,n_p2);
if n_p1 ~= m
    p1 = [zeros(1,m-n_p1) p1];
else
    p2 = [zeros(1,m-n_p2) p2];
end
p = p1-p2;
point(:,1)= roots(p);
point(:,2)= polyval(p1,point(:,1));
r = [];
for k = 1:m-1
    r(k)=isreal(point(k,1));
end
d = find(r == 0);
point(d,:) = [];


    

