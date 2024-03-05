function d2lny_dx2 = get_d2lny_dx2(x, y, x_step)
    N = length(y);
    [x_dom_dydx, dydx] = differentiate_1d(x,y,x_step);
    [~,d2ydx2] = differentiate_1d(x_dom_dydx,dydx,x_step);
    dydx_itp = interpolate_midpoint(dydx);
    d2lny_dx2 = (d2ydx2 ./ y(2:N-1)) - (dydx_itp ./ y(2:N-1)).^2;
end