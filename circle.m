function circle(x,y,r)

th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
zunit_length = length(yunit);
zunit = NaN(zunit_length);
plot3(xunit, yunit, zunit);
end 