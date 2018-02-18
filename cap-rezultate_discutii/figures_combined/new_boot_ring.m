font_size = 15;

nes_ring_before = [10:10:200];
intfs_ring_before = [80:80:1600];
links_ring_before = [10:10:200];
total_ring_before = nes_ring_before + intfs_ring_before + links_ring_before;

local_ring_before = [56.25,102.23,153.413,213.614,271.05,331.639,412.765,460.104,508.518,631.887,710.737,790.183,899.761,NaN,NaN,NaN,NaN,NaN,NaN,NaN] ;
orbit_ring_before = [39.797,80.72,124.998,170.719,215.263,262.063,317.516,374.563,429.448,483.086,546.286,591.905,662.236,741.026,815.756,894.416,971.131,1032.467,1133.569,1194.712];
dt_ring_before = [31.372,70.615,116.777,137.978,179.405,218.274,262.221,299.545,373.295,400.415,448.59,489.629,586.146,659.61,671.627,797.732,844.124,886.756,964.754,1055.247];


local_ring_after = [28.305,57.966,97.032,131.423,169.976,206.786,245.143,324.406,370.006,414.522,489.31,653.368,680.992,NaN,NaN,NaN,NaN,NaN,NaN,NaN] ;
orbit_ring_after = [24.807,50.346,77.176,102.002,135.746,165.72,196.766,230.876,266.106,302.127,343.683,388.937,415.954,466.422,511.405,552.728,606.29,666.382,703.382,773.22];
dt_ring_after = [21.781,45.35,69.09,97.491,124.708,153.134,174.877,205.903,232.873,267.401,297.562,331.145,365.237,421.197,469.884,501.065,533.138,583.406,661.939,755.359];

figure(1);

plot(total_ring_before,local_ring_before, '-dr', 'markersize', font_size, 
      total_ring_before, orbit_ring_before, '-+k', 'markersize', font_size, 
      total_ring_before, dt_ring_before, '-*b', 'markersize', font_size,
      total_ring_before,local_ring_after, '--vr', 'markersize', font_size, 
      total_ring_before, orbit_ring_after, '--pk', 'markersize', font_size, 
      total_ring_before, dt_ring_after, '--hb', 'markersize', font_size);
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