function [R]=resid_four_bar_statics(t1,param)
%   Inputs:
%
%   x = variable to solve for
%   param = vector of all parameters
%
%   Outputs:
%
%   R = residual

COM_on_bar = param(end);

if (COM_on_bar)
    a1=param(1);
    a2=param(2);
    a3=param(3);
    a4=param(4);
    m1=param(5);
    m2=param(6);
    m3=param(7);
    g=param(8);
    k2=param(9);
    k3=param(10);
    t02=param(11);
    t03=param(12);
    F = param(13);
    force_to_right = param(14);
    gravity = param(15);
    
    if (gravity == true) && (force_to_right == true)
        R = (((a1*a4*sin(t1))/(a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2))/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)))/(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2) + ((a4*cos(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2) + (a1*a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2))/(1 - (a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2))*(g*(a2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) + (a3*cos(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2) - F*(a2*sin(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) - (a3*sin(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2) + (a2*g*m2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2) - g*(a2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) - a1*cos(t1) + (a3*cos(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2) + F*(a2*sin(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) + a1*sin(t1) - (a3*sin(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2) - g*m2*((a2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2 - a1*cos(t1)) + k2*(((a1*a4*sin(t1))/(a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2))/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)))/(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2) + ((a4*cos(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2) + (a1*a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2))/(1 - (a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2))*(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t02 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) + (a1*g*m1*cos(t1))/2 - (a1*a4*sin(t1)*((F*a3*sin(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2 + (a3*g*cos(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2))/(a2*a3*(1 - (a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(4*a2^2*a3^2))^(1/2)) + (a1*a4*k3*sin(t1)*(t03 - pi + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3))))/(a2*a3*(1 - (a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(4*a2^2*a3^2))^(1/2));
    elseif (gravity == true) && (force_to_right == false)
        R = (g*m3*(a2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) + (a3*cos(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2) + (a2*g*m2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2)*(((a1*a4*sin(t1))/(a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2))/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)))/(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2) + ((a4*cos(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2) + (a1*a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2))/(1 - (a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2)) - g*m2*((a2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2 - a1*cos(t1)) + k2*(((a1*a4*sin(t1))/(a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2))/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)))/(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2) + ((a4*cos(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2) + (a1*a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2))/(1 - (a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2))*(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t02 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) - g*m3*(a2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) - a1*cos(t1) + (a3*cos(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2) + (a1*g*m1*cos(t1))/2 - (a1*a4*g*m3*cos(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))))*sin(t1))/(2*a2*(1 - (a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(4*a2^2*a3^2))^(1/2)) + (a1*a4*k3*sin(t1)*(t03 - pi + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3))))/(a2*a3*(1 - (a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(4*a2^2*a3^2))^(1/2));
    elseif (gravity == false) && (force_to_right == true)
        R = F*(a2*sin(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) + a1*sin(t1) - (a3*sin(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2) + k2*(((a1*a4*sin(t1))/(a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2))/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)))/(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2) + ((a4*cos(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2) + (a1*a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2))/(1 - (a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2))*(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t02 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) - F*(a2*sin(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) - (a3*sin(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2)*(((a1*a4*sin(t1))/(a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2))/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)))/(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2) + ((a4*cos(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2) + (a1*a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2))/(1 - (a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2)) - (F*a1*a4*sin(t1 - asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3)) - acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))))*sin(t1))/(2*a2*(1 - (a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(4*a2^2*a3^2))^(1/2)) + (a1*a4*k3*sin(t1)*(t03 - pi + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3))))/(a2*a3*(1 - (a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(4*a2^2*a3^2))^(1/2));    
    else % gravity == false and force_to_right == false)
        R = k2*(((a1*a4*sin(t1))/(a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2))/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)))/(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2) + ((a4*cos(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2) + (a1*a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2))/(1 - (a4^2*sin(t1)^2)/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2))*(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t02 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) + (a1*a4*k3*sin(t1)*(t03 - pi + acos((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)/(2*a2*a3))))/(a2*a3*(1 - (a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(4*a2^2*a3^2))^(1/2));
    end
else
    %create variables for each of the parameters
    L1=param(1);
    L2=param(2);
    L3=param(3);
    a4=param(4);
    kappa1 = param(5);
    kappa2 = param(6);
    kappa3 = param(7);
    m1=param(8);
    m2=param(9);
    m3=param(10);
    g=param(11);
    K2=param(12);
    K3=param(13);
    t02=param(14);
    t03=param(15);
    
    %caluclate residual
    R = g*m1*(sin(t1)*(cos((1/2)*L1*kappa1)/kappa1-2*sin((1/2)*L1*kappa1)/(L1*kappa1^2))+sin((1/2)*L1*kappa1)*cos(t1)/kappa1)-g*m2*(sin((1/2)*L2*kappa2)*cos(-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))+t1-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))))/kappa2-2*sin((1/2)*L1*kappa1)*cos(t1)/kappa1-sin(-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))+t1-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))))*(2*sin((1/2)*L2*kappa2)-L2*kappa2*cos((1/2)*L2*kappa2))/(L2*kappa2^2))-(a4*(4*cos(t1)-4*cos((1/2)*L1*kappa1)^2*cos(t1)+2*a4*kappa1*sin((1/2)*L1*kappa1)+a4^2*kappa1^2*cos(t1)+2*a4*kappa1*sin((1/2)*L1*kappa1)*cos(t1)^2)/(kappa1^2*sqrt(1-a4^2*kappa1^2*sin(t1)^2/(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2))*((a4^2*kappa1^2-4*cos((1/2)*L1*kappa1)^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4)/kappa1^2)^(3/2))+a4*sin((1/2)*L1*kappa1)*sin(t1)*(4*kappa1^2*kappa2^2-4*kappa1^2*kappa3^2+4*kappa2^2*kappa3^2-4*kappa2^2*kappa3^2*cos((1/2)*L1*kappa1)^2+4*kappa1^2*kappa3^2*cos((1/2)*L2*kappa2)^2-4*kappa1^2*kappa2^2*cos((1/2)*L3*kappa3)^2+a4^2*kappa1^2*kappa2^2*kappa3^2+4*a4*kappa1*kappa2^2*kappa3^2*sin((1/2)*L1*kappa1)*cos(t1))/(2*kappa1^3*kappa2*kappa3^2*sin((1/2)*L2*kappa2)*((a4^2*kappa1^2-4*cos((1/2)*L1*kappa1)^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4)/kappa1^2)^(3/2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))))*(g*m2*(-sin(-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))+t1-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))))*(cos((1/2)*L2*kappa2)/kappa2-2*sin((1/2)*L2*kappa2)/(L2*kappa2^2))-sin((1/2)*L2*kappa2)*cos(-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))+t1-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))))/kappa2)-g*m3*(kappa2*cos(asin(kappa3*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))/(2*sin((1/2)*L3*kappa3)))-t1+asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))+acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)))+(1/2)*L3*kappa3)-kappa2*cos(-asin(kappa3*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))/(2*sin((1/2)*L3*kappa3)))+t1-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)))+(1/2)*L3*kappa3)+L3*kappa3^2*sin(asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))-t1+acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)))+(1/2)*L2*kappa2)+L3*kappa3^2*sin(t1-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)))+(1/2)*L2*kappa2)-L3*kappa2*kappa3*sin(-asin(kappa3*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))/(2*sin((1/2)*L3*kappa3)))+t1-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)))+(1/2)*L3*kappa3))/(L3*kappa2*kappa3^2))-g*m3*(cos(-asin(kappa3*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))/(2*sin((1/2)*L3*kappa3)))+t1-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))))*sin((1/2)*L3*kappa3)/kappa3-2*sin((1/2)*L1*kappa1)*cos(t1)/kappa1-sin(-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))+t1-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))))*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))+sin(-asin(kappa3*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))/(2*sin((1/2)*L3*kappa3)))+t1-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))))*(2*sin((1/2)*L3*kappa3)-L3*kappa3*cos((1/2)*L3*kappa3))/(L3*kappa3^2)+2*cos(asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))+acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))))*sin((1/2)*L2*kappa2)*cos(t1)/kappa2+2*sin(asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))+acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))))*sin((1/2)*L2*kappa2)*sin(t1)/kappa2-2*sin((1/2)*L3*kappa3)*cos(-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))+t1-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))))*sqrt(kappa3^2*(kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2))-1)*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/(4*kappa1^2*sin((1/2)*L3*kappa3)^2)+1)/kappa3)+a4*g*m3*sin((1/2)*L1*kappa1)*sin(t1)*(cos(asin(kappa3*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))/(2*sin((1/2)*L3*kappa3)))-t1+asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))+acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)))+(1/2)*L3*kappa3)-cos(-asin(kappa3*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))/(2*sin((1/2)*L3*kappa3)))+t1-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)))+(1/2)*L3*kappa3)-L3*kappa3*sin(-asin(kappa3*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))/(2*sin((1/2)*L3*kappa3)))+t1-asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))-acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)))+(1/2)*L3*kappa3))*(a4^2*kappa1^2*kappa2^2*kappa3^2+4*a4*kappa1*kappa2^2*kappa3^2*sin((1/2)*L1*kappa1)*cos(t1)-4*kappa1^2*kappa2^2*sin((1/2)*L3*kappa3)^2-4*kappa1^2*kappa3^2*sin((1/2)*L2*kappa2)^2+4*kappa2^2*kappa3^2*sin((1/2)*L1*kappa1)^2)/(L3*kappa1^3*kappa3^3*sin((1/2)*L2*kappa2)^2*sin((1/2)*L3*kappa3)*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))*sqrt((a4^2*kappa1^2*kappa2^2*kappa3^2+4*a4*kappa1*kappa2^2*kappa3^2*sin((1/2)*L1*kappa1)*cos(t1)-4*kappa1^2*kappa2^2*sin((1/2)*L3*kappa3)^2-4*kappa1^2*kappa3^2*sin((1/2)*L2*kappa2)^2+4*kappa2^2*kappa3^2*sin((1/2)*L1*kappa1)^2)^2/(kappa1^4*kappa2^2*kappa3^2*sin((1/2)*L2*kappa2)^2*sin((1/2)*L3*kappa3)^2)))-K3*a4*sin((1/2)*L1*kappa1)*sin(t1)*(t03-asin(kappa3*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))/(2*sin((1/2)*L3*kappa3))))*(a4^2*kappa1^2*kappa2^2*kappa3^2+4*a4*kappa1*kappa2^2*kappa3^2*sin((1/2)*L1*kappa1)*cos(t1)-4*kappa1^2*kappa2^2*sin((1/2)*L3*kappa3)^2-4*kappa1^2*kappa3^2*sin((1/2)*L2*kappa2)^2+4*kappa2^2*kappa3^2*sin((1/2)*L1*kappa1)^2)/(kappa1^3*kappa3*sin((1/2)*L2*kappa2)^2*sin((1/2)*L3*kappa3)*sqrt((a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)/kappa1^2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))*sqrt((a4^2*kappa1^2*kappa2^2*kappa3^2+4*a4*kappa1*kappa2^2*kappa3^2*sin((1/2)*L1*kappa1)*cos(t1)-4*kappa1^2*kappa2^2*sin((1/2)*L3*kappa3)^2-4*kappa1^2*kappa3^2*sin((1/2)*L2*kappa2)^2+4*kappa2^2*kappa3^2*sin((1/2)*L1*kappa1)^2)^2/(kappa1^4*kappa2^2*kappa3^2*sin((1/2)*L2*kappa2)^2*sin((1/2)*L3*kappa3)^2)))+K2*(a4*(4*cos(t1)-4*cos((1/2)*L1*kappa1)^2*cos(t1)+2*a4*kappa1*sin((1/2)*L1*kappa1)+a4^2*kappa1^2*cos(t1)+2*a4*kappa1*sin((1/2)*L1*kappa1)*cos(t1)^2)/(kappa1^2*sqrt(1-a4^2*kappa1^2*sin(t1)^2/(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2))*((a4^2*kappa1^2-4*cos((1/2)*L1*kappa1)^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4)/kappa1^2)^(3/2))+a4*sin((1/2)*L1*kappa1)*sin(t1)*(4*kappa1^2*kappa2^2-4*kappa1^2*kappa3^2+4*kappa2^2*kappa3^2-4*kappa2^2*kappa3^2*cos((1/2)*L1*kappa1)^2+4*kappa1^2*kappa3^2*cos((1/2)*L2*kappa2)^2-4*kappa1^2*kappa2^2*cos((1/2)*L3*kappa3)^2+a4^2*kappa1^2*kappa2^2*kappa3^2+4*a4*kappa1*kappa2^2*kappa3^2*sin((1/2)*L1*kappa1)*cos(t1))/(2*kappa1^3*kappa2*kappa3^2*sin((1/2)*L2*kappa2)*((a4^2*kappa1^2-4*cos((1/2)*L1*kappa1)^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4)/kappa1^2)^(3/2)*sqrt(1-kappa1^2*kappa2^2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)^2/(16*sin((1/2)*L2*kappa2)^2*(a4^2*kappa1^2+4*cos(t1)*a4*kappa1*sin((1/2)*L1*kappa1)+4*sin((1/2)*L1*kappa1)^2)))))*(asin(a4*sin(t1)/sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))-t02+acos(kappa2*(4*sin((1/2)*L1*kappa1)^2/kappa1^2+4*sin((1/2)*L2*kappa2)^2/kappa2^2-4*sin((1/2)*L3*kappa3)^2/kappa3^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1)/(4*sin((1/2)*L2*kappa2)*sqrt(4*sin((1/2)*L1*kappa1)^2/kappa1^2+a4^2+4*a4*sin((1/2)*L1*kappa1)*cos(t1)/kappa1))));
end



% R=((a3*g*m3*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))) + asin(((1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))/a3)))/2 + (a2*g*m2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2)*((a4*(a1^2*cos(t1) + a1*a4*cos(t1)^2 + a1*a4 + a4^2*cos(t1)))/(((a1 + a4*cos(t1))^2/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)) + (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 - a2^2 + a3^2 + a4^2))/(2*a2*(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2))) - g*m2*((a2*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))))/2 - a1*cos(t1)) + k2*((a4*(a1^2*cos(t1) + a1*a4*cos(t1)^2 + a1*a4 + a4^2*cos(t1)))/(((a1 + a4*cos(t1))^2/(a1^2 + 2*cos(t1)*a1*a4 + a4^2))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)) + (a1*a4*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 - a2^2 + a3^2 + a4^2))/(2*a2*(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(3/2)))*(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t0 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)))) + (a1*g*m1*cos(t1))/2 - (a3*g*m3*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))) + asin(((1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))/a3)))/2 + (a1*a4*g*m3*cos(asin((a4*sin(t1))/(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - t1 + acos((a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)/(2*a2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))) + asin(((1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))/a3))*sin(t1)*(a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2))/(2*a2^2*(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(a2^2*a3^2))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2)) - (a1*a4*k3*sin(t1)*(t0 - asin(((1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2))/a3))*(a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2))/(a2^2*a3*(1 - (a1^2 + 2*cos(t1)*a1*a4 + a2^2 - a3^2 + a4^2)^2/(4*a2^2*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)))^(1/2)*((a1^2 + 2*cos(t1)*a1*a4 - a2^2 - a3^2 + a4^2)^2/(a2^2*a3^2))^(1/2)*(a1^2 + 2*cos(t1)*a1*a4 + a4^2)^(1/2));
end