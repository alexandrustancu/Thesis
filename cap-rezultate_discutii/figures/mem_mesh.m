nes = [3,4,5,6,7,8,9,10]
intfs = [18,36,60,90,126,168,216,270]
links = [3,6,10,15,21,28,36,45]

local_percent = [0.0139,0.0196,0.0295,0.0454,0.0602,0.0911,0.1179,0.1431]
orbit_percent = [0.0054,0.0104,0.0153,0.0234,0.0326,0.0433,0.0605,0.0788]
dt_percent = [0.0065,0.0109,0.0145,0.0258,0.034,0.0429,0.059,0.0766]

local = local_percent * 100
orbit = orbit_percent * 100
dt = dt_percent * 100
figure(1)
plot(nes,local, '--dr', 'markersize', 15, nes, orbit, '-+k', 'markersize', 15, nes, dt, ':*b', 'markersize', 15)
set(gca, "fontsize", 12)

xlabel('Numarul de dispozitive simulate', "fontsize", 12)
grid on
grid minor on
ylabel('Memoria cu acces aleator [%]', "fontsize", 12)
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

xlabel('Numarul de interfete simulate', "fontsize", 12)
grid on
grid minor on
ylabel('Memoria cu acces aleator [%]', "fontsize", 12)
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
ylabel('Memoria cu acces aleator [%]', "fontsize", 12)
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
