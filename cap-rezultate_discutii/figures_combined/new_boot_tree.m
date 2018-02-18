font_size = 15;

nes_tree_before = [7,15,31,63,127];
intfs_tree_before = [70,150,310,630,1270];
links_tree_before = [6,14,30,62,126];
total_tree_before = nes_tree_before + intfs_tree_before + links_tree_before;

local_tree_before = [44.75,102.055,217.154,534.013,NaN] ;
orbit_tree_before = [34.035,72.789,164.483,363.617,897.515];
dt_tree_before = [30.335,65.073,144.708,348.719,740.159];

local_tree_after = [21.952,51.625,111.869,273.2,NaN];
orbit_tree_after = [16.612,36.861,80.881,181.698,454.84];
dt_tree_after = [17.633,38.281,79.662,165.483,412.383];

figure(1);

plot(total_tree_before,local_tree_before, '-dr', 'markersize', font_size, 
      total_tree_before, orbit_tree_before, '-+k', 'markersize', font_size, 
      total_tree_before, dt_tree_before, '-*b', 'markersize', font_size,
      total_tree_before,local_tree_after, '--vr', 'markersize', font_size, 
      total_tree_before, orbit_tree_after, '--pk', 'markersize', font_size, 
      total_tree_before, dt_tree_after, '--hb', 'markersize', font_size);
set(gca, "fontsize", 18);
xlabel('Numãrul total de obiecte simulate', "fontsize", 18, "interpreter", "tex");
grid on;
grid minor on;
ylabel('secunde', "fontsize", 18);

[leg, obj] = legend('Local - fãrã optimizare',
                    'Orbit Cloud - fãrã optimizare',
                    'DT Cloud - fãrã optimizare', 
                    'Local - cu optimizare',
                    'Orbit Cloud - cu optimizare',
                    'DT Cloud - cu optimizare',
                    "location", 'northwest');          
legend boxoff;
%textobj = findobj(obj, 'type', 'text');
%set(textobj, "fontsize", 18);
axis('tight');