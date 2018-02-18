nes = [1,2,3,4,5];

local_percent = [0.0045,0.0065,0.0122,0.0192,0.0316];

local = local_percent * 100;

figure(1);
plot(nes,local, '-dr', 'markersize', 15);
set(gca, "fontsize", 18);
xlabel('Numãrul de fluxuri de trafic injectate', "fontsize", 18, "interpreter", "tex");
grid on;
grid minor on;
ylabel('Diferenta de putere de procesare [%]', "fontsize", 18);

[leg, obj] = legend('Local',                    
                    "location", 'northwest');          
legend boxoff;
%textobj = findobj(obj, 'type', 'text');
%set(textobj, "fontsize", 18);
axis('tight');
