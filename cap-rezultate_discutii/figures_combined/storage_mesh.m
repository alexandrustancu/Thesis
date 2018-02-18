nes = [3,4,5,6,7,8,9,10];
intfs = [18,36,60,90,126,168,216,270];
links = [3,6,10,15,21,28,36,45];
total = nes + intfs;

local = [5.868,10.536,16.568,23.972,32.736,42.86,54.384,67.332];
orbit = [5.804,10.388,16.324,23.616,32.196,42.196,53.504,66.24];
dt = [5.776,10.336,16.232,23.444,31.936,41.792,52.952,65.448];

figure(1);
plot(total,local, '-dr', 'markersize', font_size, 
      total, orbit, '-+k', 'markersize', font_size, 
      total, dt, '-*b', 'markersize', font_size);
set(gca, "fontsize", 18);
xlabel('Numarul total de dispozitive si interfete simulate', "fontsize", 18);
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