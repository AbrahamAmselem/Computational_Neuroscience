%Problem set 5 
%Ring Network
%Step 1

%theta0 is bar orientation
%h_input  thalamic inputs
%theta preferred orientation

theta=linspace(-pi/2,pi/2,50);

out_3=h_input(0,theta,3,0.1)

out_8=h_input(0,theta,3,0.6)


figure;
 plot(theta,out_3)
figure;
 plot(theta,out_8)
%legend('c=3','c=8')

% 
function out=h_input(theta0,theta,c,epsilon)

out=c*((1-epsilon)+epsilon*cos(2*(theta-theta0)));

end
