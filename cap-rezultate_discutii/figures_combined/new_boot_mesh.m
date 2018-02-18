font_size = 15;

nes_mesh_before = [3,4,5,6,7,8,9,10];
intfs_mesh_before = [18,36,60,90,126,168,216,270];
links_mesh_before = [3,6,10,15,21,28,36,45];
total_mesh_before = nes_mesh_before + intfs_mesh_before + links_mesh_before;

local_mesh_before = [15.422,30.42,41.478,58.127,80.03,105.585,134.441,165.106];
orbit_mesh_before = [11.551,19.128,30.419,41.67,56.885,74.59,96.019,117.415];
dt_mesh_before = [11.058,18.494,37.695,37.791,49.556,64.306,82.479,124.525];

local_mesh_after = [9.303,13.632,20.163,26.332,32.868,41.483,52.359,63.388];
orbit_mesh_after = [7.003,10.213,14.566,18.892,24.513,30.1,36.655,45.158];
dt_mesh_after = [6.898,11.042,14.612,17.597,23.757,28.963,34.135,42.812];

figure(1);

plot(total_mesh_before,local_mesh_before, '-dr', 'markersize', font_size, 
      total_mesh_before, orbit_mesh_before, '-+k', 'markersize', font_size, 
      total_mesh_before, dt_mesh_before, '-*b', 'markersize', font_size,
      total_mesh_before,local_mesh_after, '--vr', 'markersize', font_size, 
      total_mesh_before, orbit_mesh_after, '--pk', 'markersize', font_size, 
      total_mesh_before, dt_mesh_after, '--hb', 'markersize', font_size);
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