nes = [7,15,31,63,127];
intfs = [70,150,310,630,1270];
links = [6,14,30,62,126];

local_percent = [0.0388,0.0762,0.158,0.2641,NaN];
orbit_percent = [0.0161,0.0355,0.0735,0.1494,0.2996];
dt_percent = [0.0179,0.0375,0.076,0.1583,0.3219];

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