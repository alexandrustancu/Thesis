font_size = 15;

nes_mesh_before = [3,4,5,6,7,8,9,10];
intfs_mesh_before = [18,36,60,90,126,168,216,270];
links_mesh_before = [3,6,10,15,21,28,36,45];
total_mesh_before = nes_mesh_before + intfs_mesh_before + links_mesh_before;

local_mesh_before = [15.422,30.42,41.478,58.127,80.03,105.585,134.441,165.106];
orbit_mesh_before = [11.551,19.128,30.419,41.67,56.885,74.59,96.019,117.415];
dt_mesh_before = [11.058,18.494,37.695,37.791,49.556,64.306,82.479,124.525];

figure(1);
subplot(2,3,1);

plot(total_mesh_before,local_mesh_before, '--dr', 'markersize', font_size, 
      total_mesh_before, orbit_mesh_before, '-+k', 'markersize', font_size, 
      total_mesh_before, dt_mesh_before, ':*b', 'markersize', font_size);
%scatter(total_mesh_before,local_mesh_before, '--dr')

xlabel('Numarul total de obiecte simulate', "fontsize", font_size);
grid on;
grid minor on;
ylabel('secunde', "fontsize", font_size);
[leg, obj] = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest');
legend boxoff;
title("Timpul de initializare inainte de optimizari in reteaua plasa", "fontsize", 15);
textobj = findobj(obj, 'type', 'text');
set(textobj, "fontsize", 15);
axis('tight');
set(gca, "fontsize", 15);

nes_ring_before = [10:10:200];
intfs_ring_before = [80:80:1600];
links_ring_before = [10:10:200];
total_ring_before = nes_ring_before + intfs_ring_before + links_ring_before;

local_ring_before = [56.25,102.23,153.413,213.614,271.05,331.639,412.765,460.104,508.518,631.887,710.737,790.183,899.761,NaN,NaN,NaN,NaN,NaN,NaN,NaN] ;
orbit_ring_before = [39.797,80.72,124.998,170.719,215.263,262.063,317.516,374.563,429.448,483.086,546.286,591.905,662.236,741.026,815.756,894.416,971.131,1032.467,1133.569,1194.712];
dt_ring_before = [31.372,70.615,116.777,137.978,179.405,218.274,262.221,299.545,373.295,400.415,448.59,489.629,586.146,659.61,671.627,797.732,844.124,886.756,964.754,1055.247];

subplot(2,3,2);
plot(total_ring_before,local_ring_before, '--dr', 'markersize', font_size, 
      total_ring_before, orbit_ring_before, '-+k', 'markersize', font_size, 
      total_ring_before, dt_ring_before, ':*b', 'markersize', font_size);

xlabel('Numarul total de obiecte simulate', "fontsize", font_size);
grid on;
grid minor on;
ylabel('secunde', "fontsize", font_size);
[leg, obj] = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest');
legend boxoff;
title("Timpul de initializare inainte de optimizari in reteaua inel", "fontsize", 15);
textobj = findobj(obj, 'type', 'text');
set(textobj, "fontsize", 15);
axis('tight');
set(gca, "fontsize", 15);

nes_tree_before = [7,15,31,63,127];
intfs_tree_before = [70,150,310,630,1270];
links_tree_before = [6,14,30,62,126];
total_tree_before = nes_tree_before + intfs_tree_before + links_tree_before;

local_tree_before = [44.75,102.055,217.154,534.013,NaN] ;
orbit_tree_before = [34.035,72.789,164.483,363.617,897.515];
dt_tree_before = [30.335,65.073,144.708,348.719,740.159];

subplot(2,3,3);
plot(total_tree_before,local_tree_before, '--dr', 'markersize', font_size, 
      total_tree_before, orbit_tree_before, '-+k', 'markersize', font_size, 
      total_tree_before, dt_tree_before, ':*b', 'markersize', font_size);

xlabel('Numarul total de obiecte simulate', "fontsize", font_size);
grid on;
grid minor on;
ylabel('secunde', "fontsize", font_size);
[leg, obj] = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest');
legend boxoff;
title("Timpul de initializare inainte de optimizari in reteaua arbore", "fontsize", 15);
textobj = findobj(obj, 'type', 'text');
set(textobj, "fontsize", 15);
axis('tight');
set(gca, "fontsize", 15);


local_mesh_after = [9.303,13.632,20.163,26.332,32.868,41.483,52.359,63.388];
orbit_mesh_after = [7.003,10.213,14.566,18.892,24.513,30.1,36.655,45.158];
dt_mesh_after = [6.898,11.042,14.612,17.597,23.757,28.963,34.135,42.812];

subplot(2,3,4);

plot(total_mesh_before,local_mesh_after, '--dr', 'markersize', font_size, 
      total_mesh_before, orbit_mesh_after, '-+k', 'markersize', font_size, 
      total_mesh_before, dt_mesh_after, ':*b', 'markersize', font_size);

xlabel('Numarul total de obiecte simulate', "fontsize", font_size);
grid on;
grid minor on;
ylabel('secunde', "fontsize", font_size);
[leg, obj] = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest');
legend boxoff;
title("Timpul de initializare dupa optimizari in reteaua plasa", "fontsize", 15);
textobj = findobj(obj, 'type', 'text');
set(textobj, "fontsize", 15);
axis('tight');
set(gca, "fontsize", 15);

local_ring_after = [28.305,57.966,97.032,131.423,169.976,206.786,245.143,324.406,370.006,414.522,489.31,653.368,680.992,NaN,NaN,NaN,NaN,NaN,NaN,NaN] ;
orbit_ring_after = [24.807,50.346,77.176,102.002,135.746,165.72,196.766,230.876,266.106,302.127,343.683,388.937,415.954,466.422,511.405,552.728,606.29,666.382,703.382,773.22];
dt_ring_after = [21.781,45.35,69.09,97.491,124.708,153.134,174.877,205.903,232.873,267.401,297.562,331.145,365.237,421.197,469.884,619.065,533.138,583.406,661.939,805.359];

subplot(2,3,5);
plot(total_ring_before,local_ring_after, '--dr', 'markersize', font_size, 
      total_ring_before, orbit_ring_after, '-+k', 'markersize', font_size, 
      total_ring_before, dt_ring_after, ':*b', 'markersize', font_size);

xlabel('Numarul total de obiecte simulate', "fontsize", font_size);
grid on;
grid minor on;
ylabel('secunde', "fontsize", font_size);
[leg, obj] = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest');
legend boxoff;
title("Timpul de initializare dupa optimizari in reteaua inel", "fontsize", 15);
textobj = findobj(obj, 'type', 'text');
set(textobj, "fontsize", 15);
axis('tight');
set(gca, "fontsize", 15);

local_tree_after = [21.952,51.625,111.869,273.2,NaN];
orbit_tree_after = [16.612,36.861,80.881,181.698,454.84];
dt_tree_after = [17.633,38.281,79.662,165.483,412.383];

subplot(2,3,6);
plot(total_tree_before,local_tree_after, '--dr', 'markersize', font_size, 
      total_tree_before, orbit_tree_after, '-+k', 'markersize', font_size, 
      total_tree_before, dt_tree_after, ':*b', 'markersize', font_size);

xlabel('Numarul total de obiecte simulate', "fontsize", font_size);
grid on;
grid minor on;
ylabel('secunde', "fontsize", font_size);
[leg, obj] = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest');
legend boxoff;
title("Timpul de initializare dupa optimizari in reteaua arbore", "fontsize", 15);
textobj = findobj(obj, 'type', 'text');
set(textobj, "fontsize", 15);
axis('tight');
set(gca, "fontsize", 15);