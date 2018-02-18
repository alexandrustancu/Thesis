nes = [3,4,5,6,7,8,9,10]
intfs = [18,36,60,90,126,168,216,270]
links = [3,6,10,15,21,28,36,45]

local = [5.868,10.536,16.568,23.972,32.736,42.86,54.384,67.332] 
orbit = [5.804,10.388,16.324,23.616,32.196,42.196,53.504,66.24]
dt = [5.776,10.336,16.232,23.444,31.936,41.792,52.952,65.448]

figure(1)
plot(nes,local, '--dr', 'markersize', 15, nes, orbit, '-+k', 'markersize', 15, nes, dt, ':*b', 'markersize', 15)
set(gca, "fontsize", 12)

xlabel('Numarul de dispozitive simulate', "fontsize", 12)
grid on
grid minor on
ylabel('MB', "fontsize", 12)
leg = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest')
set(leg, "fontsize", 12)
axis('tight')

#la = num2str(local(:));
#lb = cellstr(la);
#lc = strtrim(lb);

#oa = num2str(orbit(:));
#ob = cellstr(oa);
#oc = strtrim(ob);

#da = num2str(dt(:));
#db = cellstr(da);
#dc = strtrim(db);

#text(nes, local, lc)
#text(nes, orbit, oc)
#text(nes, dt, dc)

figure(2)
plot(intfs,local, '--dr', 'markersize', 15, intfs, orbit, '-+k', 'markersize', 15, intfs, dt, ':*b', 'markersize', 15)
set(gca, "fontsize", 12)

xlabel('Number of simulated interfaces', "fontsize", 12)
grid on
grid minor on
ylabel('MB', "fontsize", 12)
leg = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest')
set(leg, "fontsize", 12)
axis('tight')

#la = num2str(local(:));
#lb = cellstr(la);
#lc = strtrim(lb);

#oa = num2str(orbit(:));
#ob = cellstr(oa);
#oc = strtrim(ob);

#da = num2str(dt(:));
#db = cellstr(da);
#dc = strtrim(db);

#text(intfs, local, lc)
#text(intfs, orbit, oc)
#text(intfs, dt, dc)

figure(3)
plot(links,local, '--dr', 'markersize', 15, links, orbit, '-+k', 'markersize', 15, links, dt, ':*b', 'markersize', 15)
set(gca, "fontsize", 12)

xlabel('Numarul de legaturi de date simulate', "fontsize", 12)
grid on
grid minor on
ylabel('MB', "fontsize", 12)
leg = legend('Local','Orbit Cloud','DT Cloud', "location", 'northwest')
set(leg, "fontsize", 12)
axis('tight')

#la = num2str(local(:));
#lb = cellstr(la);
#lc = strtrim(lb);

#oa = num2str(orbit(:));
#ob = cellstr(oa);
#oc = strtrim(ob);

#da = num2str(dt(:));
#db = cellstr(da);
#dc = strtrim(db);

#text(links, local, lc)
#text(links, orbit, oc)
#text(links, dt, dc)
