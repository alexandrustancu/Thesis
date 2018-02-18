nes = [3,4,5,6,7,8,9,10];
intfs = [18,36,60,90,126,168,216,270];
links = [3,6,10,15,21,28,36,45];

local_percent = [0.0139,0.0196,0.0295,0.0454,0.0602,0.0911,0.1179,0.1431];
orbit_percent = [0.0054,0.0104,0.0153,0.0234,0.0326,0.0433,0.0605,0.0788];
dt_percent = [0.0065,0.0109,0.0145,0.0258,0.034,0.0429,0.059,0.0766];

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
ylabel('RAM [%]', "fontsize", 18);

[leg, obj] = legend('Local',
                    'Orbit Cloud',
                    'DT Cloud',
                    "location", 'northwest');          
legend boxoff;
%textobj = findobj(obj, 'type', 'text');
%set(textobj, "fontsize", 18);
axis('tight');