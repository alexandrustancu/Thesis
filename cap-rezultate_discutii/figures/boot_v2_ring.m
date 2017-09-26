nes = [10:10:200]
intfs = [80:80:1600]
links = [10:10:200]

local = [28.305,57.966,97.032,131.423,169.976,206.786,245.143,324.406,370.006,414.522,489.31,653.368,680.992,NaN,NaN,NaN,NaN,NaN,NaN,NaN] 
orbit = [24.807,50.346,77.176,102.002,135.746,165.72,196.766,230.876,266.106,302.127,343.683,388.937,415.954,466.422,511.405,552.728,606.29,666.382,703.382,773.22]
dt = [21.781,45.35,69.09,97.491,124.708,153.134,174.877,205.903,232.873,267.401,297.562,331.145,365.237,421.197,469.884,619.065,533.138,583.406,661.939,805.359]

figure(1)
plot(nes,local, '--dr', 'markersize', 15, nes, orbit, '-+k', 'markersize', 15, nes, dt, ':*b', 'markersize', 15)
set(gca, "fontsize", 12)

xlabel('Numarul de dispozitive simulate', "fontsize", 12)
grid on
grid minor on
ylabel('secunde', "fontsize", 12)
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
ylabel('secunde', "fontsize", 12)
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
ylabel('secunde', "fontsize", 12)
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
