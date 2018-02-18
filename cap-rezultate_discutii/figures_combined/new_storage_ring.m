nes = [10:10:200];
intfs = [80:80:1600];
links = [10:10:200];
total = nes + intfs;

local = [20.916,40.456,60.508,80.952,101.34,130.144,147.704,162.76,183.456,204.268,225.136,246.136,267.18,NaN,NaN,NaN,NaN,NaN,NaN,NaN];
orbit = [19.992,39.852,59.788,79.824,99.96,120.2,140.496,160.932,181.432,202.036,222.744,243.532,264.428,285.4,306.464,327.64,348.896,370.264,391.716,413.244];
dt = [19.848,39.476,59.084,78.7,98.3,117.928,137.548,157.164,176.78,196.412,216.04,235.684,255.332,274.968,301.188,314.268,346.084,360.996,373.26,392.964];

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
