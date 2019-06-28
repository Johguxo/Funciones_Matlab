function dibujar_muchas_figuras(m,n)
figure,axis([0 200 0 200]), grid on,hold on
for i = 1:m
    p = [];
    p = input('Tu vector prr >:v :');
    dibujar_puntos(p,n)
end