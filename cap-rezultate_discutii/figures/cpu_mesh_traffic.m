nes = [1,2,3,4,5]

local_percent = [0.0045,0.0065,0.0122,0.0192,0.0316]

local = local_percent * 100

figure(1)
plot(nes,local, '--dr', 'markersize', 15)
set(gca, "fontsize", 12)

xlabel('Numarul de fluxuri de trafic injectate', "fontsize", 12)
grid on
grid minor on
ylabel('Diferenta de putere de procesare [%]', "fontsize", 12)
leg = legend('Local', "location", 'northwest')
set(leg, "fontsize", 12)
axis('tight')
