function plotCircle3D(center,normal,radius)
% center is an array [x,y,z]
% normal is an array [nx,ny,nz]
% radius is a value

theta=0:0.01:2*pi;
v=null(normal);
points=repmat(center',1,size(theta,2))+radius*(v(:,1)*cos(theta)+v(:,2)*sin(theta));
plot3(points(1,:),points(2,:),points(3,:),'r-', 'linewidth',4);
end

