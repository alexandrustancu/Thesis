nes = [10:10:200]
intfs = [80:80:1600]
links = [10:10:200]

local_percent = [0.0391,0.0784,0.1172,0.1562,0.2008,0.234,0.2638,0.3139,0.3306,0.368,0.3631,0.3667,0.3778,NaN,NaN,NaN,NaN,NaN,NaN,NaN]
orbit_percent = [0.0196,0.0387,0.0583,0.076,0.093,0.1144,0.133,0.1472,0.1699,0.2571,0.2075,0.2238,0.2483,0.2658,0.2825,0.3013,0.3307,0.3438,0.3636,0.3796]
dt_percent = [0.019,0.038,0.0592,0.0797,0.098,0.1161,0.1391,0.16,0.1783,0.2006,0.213,0.2377,0.2529,0.2767,0.2921,0.3154,0.3336,0.3317,0.3515,0.3347]

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
