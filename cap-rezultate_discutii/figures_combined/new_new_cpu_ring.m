nes = [10:10:200];
intfs = [80:80:1600];
links = [10:10:200];

local_percent = [0.0099,0.0435,0.0581,0.074,0.0973,0.1048,0.1302,0.1665,0.178,0.2415,0.2053,0.2974,0.4266,NaN,NaN,NaN,NaN,NaN,NaN,NaN];
orbit_percent = [0.0094,0.019,0.026,0.0496,0.0556,0.0543,0.1046,0.0921,0.1406,0.0973,0.1175,0.1605,0.1434,0.1504,0.1465,0.2167,0.1479,0.2182,0.1839,0.1749];
dt_percent = [0.0079,0.0126,0.0174,0.0234,0.0315,0.0386,0.0683,0.0593,0.0616,0.0658,0.0666,0.0756,0.0808,0.086,0.1049,0.1191,0.1101,0.1006,0.1424,0.1574];

local = local_percent * 100;
orbit = orbit_percent * 100;
dt = dt_percent * 100;

font_size = 15

figure(1);
hold on;
bar(intfs, local, 0.7, "stacked", "facecolor", "r");
bar(intfs, orbit, 0.7, "stacked", "facecolor", "g");
bar(intfs, dt, 0.7, "stacked", "facecolor", "b");
#plot(intfs,local, '-dr', 'markersize', font_size, 
#      intfs, orbit, '-+k', 'markersize', font_size, 
#      intfs, dt, '-*b', 'markersize', font_size);
set(gca, "fontsize", 18);
xlabel('Numãrul de interfete simulate', "fontsize", 18, "interpreter", "tex");
grid on;
grid minor on;
ylabel('Utilizare procesor [%]', "fontsize", 18);

[leg, obj] = legend('Local',
                    'Orbit Cloud',
                    'DT Cloud',
                    "location", 'northwest');          
legend boxoff;
%textobj = findobj(obj, 'type', 'text');
%set(textobj, "fontsize", 18);
axis('tight');
hold off;
