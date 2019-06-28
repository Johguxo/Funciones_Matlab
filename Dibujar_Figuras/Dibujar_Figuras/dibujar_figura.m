function dibujar_figura(v_angle,x,y,z,n,L)
%close all,clear all, clc
xa = x;
ya = y;
za = z;
figure,axis([0 200 0 200])
for j = 1:length(v_angle)
    x0 = x;
    y0 = y;
    angle = v_angle(j);
    xx = L*cos(angle)/n;
    for i = 1:n
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