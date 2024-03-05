function dydx = firstderivative(x, y)
%% for uniform grid x, 2nd order accuracy
    n = length(y);
    x = x(:);
    dx = x(2) - x(1);
    y = y(:);
    dydx = (1/2*y(3:end)-1/2*y(1:end-2))./dx;
    a1 = (-3/2*y(1) + 2*y(2) - 1/2*y(3))./dx;
    a2 = (3/2*y(end) - 2*y(end-1) + 1/2*y(end-2))./dx;
    dydx = [a1;dydx(:);a2];
end