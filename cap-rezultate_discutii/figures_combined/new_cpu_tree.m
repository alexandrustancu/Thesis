nes = [7,15,31,63,127];
intfs = [70,150,310,630,1270];
links = [6,14,30,62,126];

local_percent = [0.0117,0.0242,0.0669,0.2281,NaN];
orbit_percent = [0.0075,0.0155,0.0478,0.0708,0.1718];
dt_percent = [0.0071,0.0147,0.0283,0.0612,0.1473];

local = local_percent * 100;
orbit = orbit_percent * 100;
dt = dt_percent * 100;

figure(1);
plot(intfs,local, '-dr', 'markersize', font_size, 
      intfs, orbit, '-+k', 'markersize', font_size, 
      intfs, dt, '-*b', 'markersize', font_size);
set(gca, "fontsize", 18);
xlabel('Number of simulated interfaces', "fontsize", 18, "interpreter", "tex");
grid on;
grid minor on;
ylabel('CPU Usage [%]', "fontsize", 18);

[leg, obj] = legend('Local',
                    'Orbit Cloud',
                    'DT Cloud',
                    "location", 'northwest');          
legend boxoff;
%textobj = findobj(obj, 'type', 'text');
%set(textobj, "fontsize", 18);
axis('tight');