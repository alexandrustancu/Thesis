nes = [3,4,5,6,7,8,9,10]
intfs = [18,36,60,90,126,168,216,270]
links = [3,6,10,15,21,28,36,45]

local_percent = [0.0022,0.0053,0.0103,0.0173,0.0189,0.0375,0.0529,0.0425]
orbit_percent = [0.0028,0.006,0.0074,0.011,0.0186,0.0243,0.0304,0.0341]
dt_percent = [0.0024,0.0051,0.007,0.0105,0.0138,0.0183,0.0266,0.0324]

local = local_percent * 100
orbit = orbit_percent * 100
dt = dt_percent * 100
figure(1)
plot(nes,local, '--dr', 'markersize', 15, nes, orbit, '-+k', 'markersize', 15, nes, dt, ':*b', 'markersize', 15)
set(gca, "fontsize", 12)

xlabel('Numarul de dispozitive simulate', "fontsize", 12)
grid on
grid minor on
ylabel('CPU usage [%]', "fontsize", 12)
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
ylabel('CPU usage [%]', "fontsize", 12)
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
ylabel('CPU usage [%]', "fontsize", 12)
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
