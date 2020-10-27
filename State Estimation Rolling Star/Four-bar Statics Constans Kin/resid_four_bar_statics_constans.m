function [R]=resid_four_bar_statics_constans(t2,param)
%   Inputs:
%
%   x = variable to solve for
%   param = vector of all parameters
% 
%   Outputs:
%
%   R = residual

%create variables for each of the parameters
a1=param(1);
L2=param(2);
L3=param(3);
L4=param(4);
kappa2 = param(5);
kappa3 = param(6);
kappa4 = param(7);
m2=param(8);
m3=param(9);
m4=param(10);
g=param(11);
K3=param(12);
Kdel=param(13);
t03=param(14);
t0del=param(15);


%caluclate residual
R = - Kdel*(t0del - acos((kappa3*kappa4*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(8*sin((L3*kappa3)/2)*sin((L4*kappa4)/2))))*((((2*sin((L2*kappa2)/2)*cos(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 + (2*a1*kappa3*sin((L2*kappa2)/2)^2*sin(t2)^2)/(kappa2^2*sin((L3*kappa3)/2)) - (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4) - (a1*kappa3^2*kappa4*sin((L2*kappa2)/2)*sin(t2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(8*kappa2*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)))/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4)) - (((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)*((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*cos(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4) + (a1*kappa3*sin((L2*kappa2)/2)*sin(t2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(kappa2*sin((L3*kappa3)/2)) + (a1*kappa3^2*kappa4*sin((L2*kappa2)/2)^2*sin(t2)^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*kappa2^2*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))))/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))^2)/(((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)^2/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))^2 + 1) - (a1*kappa3*kappa4*sin((L2*kappa2)/2)*sin(t2))/(2*kappa2*sin((L3*kappa3)/2)*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))) - g*m2*(sin(t2)*(cos((L2*kappa2)/2)/kappa2 - (2*sin((L2*kappa2)/2))/(L2*kappa2^2)) - (sin((L2*kappa2)/2)*cos(t2))/kappa2) - g*m4*(sin(acos((kappa3*kappa4*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(8*sin((L3*kappa3)/2)*sin((L4*kappa4)/2))) - atan(((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))))*(cos((L4*kappa4)/2)/kappa4 - (2*sin((L4*kappa4)/2))/(L4*kappa4^2)) + (cos(acos((kappa3*kappa4*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(8*sin((L3*kappa3)/2)*sin((L4*kappa4)/2))) - atan(((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))))*sin((L4*kappa4)/2))/kappa4)*((((2*sin((L2*kappa2)/2)*cos(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 + (2*a1*kappa3*sin((L2*kappa2)/2)^2*sin(t2)^2)/(kappa2^2*sin((L3*kappa3)/2)) - (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4) - (a1*kappa3^2*kappa4*sin((L2*kappa2)/2)*sin(t2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(8*kappa2*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)))/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4)) - (((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)*((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*cos(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4) + (a1*kappa3*sin((L2*kappa2)/2)*sin(t2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(kappa2*sin((L3*kappa3)/2)) + (a1*kappa3^2*kappa4*sin((L2*kappa2)/2)^2*sin(t2)^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*kappa2^2*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))))/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))^2)/(((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)^2/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))^2 + 1) - (a1*kappa3*kappa4*sin((L2*kappa2)/2)*sin(t2))/(2*kappa2*sin((L3*kappa3)/2)*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))) - (K3*(((2*sin((L2*kappa2)/2)*cos(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 + (2*a1*kappa3*sin((L2*kappa2)/2)^2*sin(t2)^2)/(kappa2^2*sin((L3*kappa3)/2)) - (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4) - (a1*kappa3^2*kappa4*sin((L2*kappa2)/2)*sin(t2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(8*kappa2*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)))/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4)) - (((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)*((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*cos(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4) + (a1*kappa3*sin((L2*kappa2)/2)*sin(t2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(kappa2*sin((L3*kappa3)/2)) + (a1*kappa3^2*kappa4*sin((L2*kappa2)/2)^2*sin(t2)^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*kappa2^2*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))))/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))^2)*(t2 + t03 - pi + atan(((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4)))))/(((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)^2/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))^2 + 1) - (g*m3*(((2*sin((L2*kappa2)/2)*cos(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 + (2*a1*kappa3*sin((L2*kappa2)/2)^2*sin(t2)^2)/(kappa2^2*sin((L3*kappa3)/2)) - (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4) - (a1*kappa3^2*kappa4*sin((L2*kappa2)/2)*sin(t2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(8*kappa2*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)))/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4)) - (((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)*((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*cos(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4) + (a1*kappa3*sin((L2*kappa2)/2)*sin(t2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(kappa2*sin((L3*kappa3)/2)) + (a1*kappa3^2*kappa4*sin((L2*kappa2)/2)^2*sin(t2)^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*kappa2^2*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))))/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))^2)*(sin((L3*kappa3)/2)/(kappa3*(((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)^2/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))^2 + 1)^(1/2)) + ((cos((L3*kappa3)/2)/kappa3 - (2*sin((L3*kappa3)/2))/(L3*kappa3^2))*((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4))/((((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)^2/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))^2 + 1)^(1/2)*((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4)))))/(((2*sin((L2*kappa2)/2)*sin(t2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))))/kappa2 - (2*sin((L4*kappa4)/2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2)*(a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2))/kappa4)^2/((a1 - (2*sin((L2*kappa2)/2)*cos(t2))/kappa2)*((2*sin((L3*kappa3)/2))/kappa3 - (kappa3*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2))/(4*sin((L3*kappa3)/2))) + (4*sin((L2*kappa2)/2)*sin((L4*kappa4)/2)*sin(t2)*(1 - (kappa3^2*kappa4^2*((4*sin((L3*kappa3)/2)^2)/kappa3^2 - (4*sin((L2*kappa2)/2)^2)/kappa2^2 + (4*sin((L4*kappa4)/2)^2)/kappa4^2 - a1^2 + (4*a1*sin((L2*kappa2)/2)*cos(t2))/kappa2)^2)/(64*sin((L3*kappa3)/2)^2*sin((L4*kappa4)/2)^2))^(1/2))/(kappa2*kappa4))^2 + 1);
 

% R=((a3*g*m3*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))) + asin(((1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))/a3)))/2 + (a2*g*m2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2)*((a4*(a1^2*cos(t1) + a1*a4*cos(t1)^2 + a1*a4 + a4^2*cos(t1)))/(((a1 + a4*cos(t1))^2/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)) + (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 - a2^2 + a3^2 + a4^2))/(2*a2*(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2))) - g*m2*((a2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2 - a1*cos(t1)) + k2*((a4*(a1^2*cos(t1) + a1*a4*cos(t1)^2 + a1*a4 + a4^2*cos(t1)))/(((a1 + a4*cos(t1))^2/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)) + (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 - a2^2 + a3^2 + a4^2))/(2*a2*(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)))*(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t0 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) + (a1*g*m1*cos(t1))/2 - (a3*g*m3*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))) + asin(((1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))/a3)))/2 + (a1*a4*g*m3*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))) + asin(((1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))/a3))*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2))/(2*a2^2*(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(a2^2*a3^2))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - (a1*a4*k3*sin(t1)*(t0 - asin(((1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))/a3))*(a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2))/(a2^2*a3*(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(a2^2*a3^2))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2));
end