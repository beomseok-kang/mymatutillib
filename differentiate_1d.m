% returns dydx and x coordinates for the dydx.
% simply calculates the gradient.
% length reduced from N to N-1.
function [x_dom, dydx] = differentiate_1d(x, y, x_step)
    len_x = length(x);
    if len_x ~= length(y)
        error("x and y does not have the same length");
    end
    dydx = zeros(len_x-1, 1);
    for i = 1:len_x-1
        dydx(i) = (y(i+1)-y(i))/x_step;
    end
    x_dom = zeros(len_x-1, 1);
    x_dom(1) = x(1) + x_step/2;
    for i = 1:len_x-2
        x_dom(i+1) = x_dom(i) + x_step;
    end
end