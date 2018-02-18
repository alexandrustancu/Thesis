nes = [3,4,5,6,7,8,9,10];
intfs = [18,36,60,90,126,168,216,270];
links = [3,6,10,15,21,28,36,45];

local_percent = [0.0022,0.0053,0.0103,0.0173,0.0189,0.0375,0.0529,0.0425];
orbit_percent = [0.0028,0.006,0.0074,0.011,0.0186,0.0243,0.0304,0.0341];
dt_percent = [0.0024,0.0051,0.007,0.0105,0.0138,0.0183,0.0266,0.0324];

local = local_percent * 100;
orbit = orbit_percent * 100;
dt = dt_percent * 100;

figure(1);
plot(intfs,local, '-dr', 'markersize', font_size, 
      intfs, orbit, '-+k', 'markersize', font_size, 
      intfs, dt, '-*b', 'markersize', font_size);
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