nes = [10:10:200]
intfs = [80:80:1600]
links = [10:10:200]

local = [31.372,70.615,116.777,137.978,179.405,218.274,262.221,299.545,373.295,400.415,448.59,489.629,586.146,659.61,671.627,797.732,844.124,886.756,964.754,1055.247] 
orbit = [39.797,80.72,124.998,170.719,215.263,262.063,317.516,374.563,429.448,483.086,546.286,591.905,662.236,741.026,815.756,894.416,971.131,1032.467,1133.569,1194.712]
dt = [31.372,70.615,116.777,137.978,179.405,218.274,262.221,299.545,373.295,400.415,448.59,489.629,586.146,659.61,671.627,797.732,844.124,886.756,964.754,1055.247]

figure(1)
plot(nes,local, '--+r', nes, orbit, '-dk', nes, dt, ':*g')

xlabel('Numarul de dispozitive simulate')
grid on
grid minor on
ylabel('secunde')
title('Timpul de initializare a simulatorului')
legend('Local','Orbit','DT', "location", 'northwest')
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
plot(intfs,local, '--+r', intfs, orbit, '-dk', intfs, dt, ':*g')

xlabel('Numarul de interfete simulate')
grid on
grid minor on
ylabel('secunde')
title('Timpul de initializare a simulatorului')
legend('Local','Orbit','DT', "location", 'northwest')
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
plot(links,local, '--+r', links, orbit, '-dk', links, dt, ':*g')

xlabel('Numarul de legaturi de date simulate')
grid on
grid minor on
ylabel('secunde')
title('Timpul de initializare a simulatorului')
legend('Local','Orbit','DT', "location", 'northwest')
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
