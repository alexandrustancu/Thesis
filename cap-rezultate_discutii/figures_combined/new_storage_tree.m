nes = [7,15,31,63,127];
intfs = [70,150,310,630,1270];
links = [6,14,30,62,126];
total = nes + intfs;

local = [18.44,39.508,81.932,167.416,NaN];
orbit = [18.176,39.008,80.876,165.424,337.624];
dt = [18.068,38.736,80.056,162.72,328.18];

figure(1);
plot(intfs,local, '-dr', 'markersize', font_size, 
      intfs, orbit, '-+k', 'markersize', font_size, 
      intfs, dt, '-*b', 'markersize', font_size);
set(gca, "fontsize", 18);
xlabel('Numãrul de interfete simulate', "fontsize", 18, "interpreter", "tex");
grid on;
grid minor on;
ylabel('MB', "fontsize", 18);

[leg, obj] = legend('Local',
                    'Orbit Cloud',
                    'DT Cloud',
                    "location", 'northwest');          
legend boxoff;
%textobj = findobj(obj, 'type', 'text');
%set(textobj, "fontsize", 18);
axis('tight');