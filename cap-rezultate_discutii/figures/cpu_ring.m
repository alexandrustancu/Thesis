nes = [10:10:200]
intfs = [80:80:1600]
links = [10:10:200]

local_percent = [0.0099,0.0435,0.0581,0.074,0.0973,0.1048,0.1302,0.1665,0.178,0.2415,0.2053,0.2974,0.4266,NaN,NaN,NaN,NaN,NaN,NaN,NaN]
orbit_percent = [0.0094,0.019,0.026,0.0496,0.0556,0.0543,0.1046,0.0921,0.1406,0.0973,0.1175,0.1605,0.1434,0.1504,0.1465,0.2167,0.1479,0.2182,0.1839,0.1749]
dt_percent = [0.0079,0.0126,0.0174,0.0234,0.0315,0.0386,0.0683,0.0593,0.0616,0.0658,0.0666,0.0756,0.0808,0.086,0.1049,0.1191,0.1101,0.1006,0.1424,0.1574]

local = local_percent * 100
orbit = orbit_percent * 100
dt = dt_percent * 100

figure(1)
plot(nes,local, '--dr', 'markersize', 15, nes, orbit, '-+k', 'markersize', 15, nes, dt, ':*b', 'markersize', 15)
set(gca, "fontsize", 12)

xlabel('Numarul de dispozitive simulate', "fontsize", 12)
grid on
grid minor on
ylabel('Puterea de procesare [%]', "fontsize", 12)
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
ylabel('Puterea de procesare [%]', "fontsize", 12)
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
ylabel('Puterea de procesare [%]', "fontsize", 12)
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
