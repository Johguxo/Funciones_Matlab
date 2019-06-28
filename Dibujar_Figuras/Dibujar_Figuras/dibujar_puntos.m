function dibujar_una_figura(p,pres)
%close all,clear all, clc
xa = p(1,1);
ya = p(1,2);
za = 10;
p = [p ; p(1,:)];
v_angle = [];
L =[];
n = [];

for j = 1:length(p)-1
    v_angle(j) = atan2(p(j+1,2)-p(j,2),p(j+1,1)-p(j,1));
    L(j) = sqrt((p(j+1,2)-p(j,2))^2+(p(j+1,1)-p(j,1))^2);
    n(j) = round(L(j)*pres)+1;
end
for j = 1:length(v_angle)
    x0 = xa;
    y0 = ya;
    angle = v_angle(j);
    xx = L(j)*cos(angle)/n(j);
    for i = 1:n(j)
        x = xa + xx;
        y = ya + xx*tan(angle);
        z = za;
        X = [xa x];
        Y = [ya y];
        line(X,Y,'LineWidth',1),grid on,hold on   
        xa = x;
        ya = y;
        za = z;
        pause(0.1)%segundos
    end
end