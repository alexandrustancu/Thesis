nes_ring = [10:10:200];
intfs_ring = [80:80:1600];
links_ring = [10:10:200];

local_ring = [20.916,40.456,60.508,80.952,101.34,130.144,147.704,162.76,183.456,204.268,225.136,246.136,267.18,NaN,NaN,NaN,NaN,NaN,NaN,NaN];
orbit_ring = [19.992,39.852,59.788,79.824,99.96,120.2,140.496,160.932,181.432,202.036,222.744,243.532,264.428,285.4,306.464,327.64,348.896,370.264,391.716,413.244];
dt_ring = [19.848,39.476,59.084,78.7,98.3,117.928,137.548,157.164,176.78,196.412,216.04,235.684,255.332,274.968,319.188,314.268,346.084,380.996,373.26,392.964];

figure(1);
subplot(3,1,1);
plot(intfs_ring,local_ring, '--dr', 'markersize', 15, intfs_ring, orbit_ring, '-+k', 'markersize', 15, intfs_ring, dt_ring, ':*b', 'markersize', 15);

xlabel('Numarul de interfete simulate', "fontsize", 15);
grid on;
grid minor on;
ylabel('MB', "fontsize", 15);
[leg, obj] = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest');
legend boxoff;
title({'a)', 'Spatiul de stocare in reteaua \bf{\it{inel}}'}, "fontsize", 15, "interpreter", "tex");
textobj = findobj(obj, 'type', 'text');
set(textobj, "fontsize", 15);
axis('tight');
set(gca, "fontsize", 15);

nes_tree = [7,15,31,63,127];
intfs_tree = [70,150,310,630,1270];
links_tree = [6,14,30,62,126];

local_tree = [18.44,39.508,81.932,167.416,NaN] ;
orbit_tree = [18.176,39.008,80.876,165.424,337.624];
dt_tree = [18.068,38.736,80.056,162.72,328.18];

subplot(3,1,2);
plot(intfs_tree,local_tree, '--dr', 'markersize', 15, intfs_tree, orbit_tree, '-+k', 'markersize', 15, intfs_tree, dt_tree, ':*b', 'markersize', 15);

xlabel('Numarul de interfete simulate', "fontsize", 15);
grid on;
grid minor on;
ylabel('MB', "fontsize", 15);
[leg, obj] = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest');
legend boxoff;
title({'b)', 'Spatiul de stocare in reteaua \bf{\it{arbore}}'}, "fontsize", 15, "interpreter", "tex");
textobj = findobj(obj, 'type', 'text');
set(textobj, "fontsize", 15);
axis('tight');
set(gca, "fontsize", 15);

nes_mesh = [3,4,5,6,7,8,9,10];
intfs_mesh = [18,36,60,90,126,168,216,270];
links_mesh = [3,6,10,15,21,28,36,45];

local_mesh = [5.868,10.536,16.568,23.972,32.736,42.86,54.384,67.332];
orbit_mesh = [5.804,10.388,16.324,23.616,32.196,42.196,53.504,66.24];
dt_mesh = [5.776,10.336,16.232,23.444,31.936,41.792,52.952,65.448];

subplot(3,1,3);
plot(intfs_mesh,local_mesh, '--dr', 'markersize', 15, intfs_mesh, orbit_mesh, '-+k', 'markersize', 15, intfs_mesh, dt_mesh, ':*b', 'markersize', 15);

xlabel('Numarul de interfete simulate', "fontsize", 15);
grid on;
grid minor on;
ylabel('MB', "fontsize", 15);
[leg, obj] = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest');
legend boxoff;
title({'c)', 'Spatiul de stocare in reteaua \bf{\it{plasa}}'}, "fontsize", 15, "interpreter", "tex");
textobj = findobj(obj, 'type', 'text');
set(textobj, "fontsize", 15);
axis('tight');
set(gca, "fontsize", 15);