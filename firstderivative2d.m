function dydx = firstderivative2d(x, y, ndim)
%% for uniform grid x, 2nd order accuracy
    dx = x(2) - x(1);
    if ndim==1
        dydx = (1/2*y(3:end,:)-1/2*y(1:end-2,:))./dx;
        a1 = (-3/2*y(1,:) + 2*y(2,:) - 1/2*y(3,:))./dx;
        a2 = (3/2*y(end,:) - 2*y(end-1,:) + 1/2*y(end-2,:))./dx;
        dydx = [a1;dydx;a2];
    elseif ndim==2
        dydx = (1/2*y(:,3:end)-1/2*y(:,1:end-2))./dx;
        a1 = (-3/2*y(:,1) + 2*y(:,2) - 1/2*y(:,3))./dx;
        a2 = (3/2*y(:,end) - 2*y(:,end-1) + 1/2*y(:,end-2))./dx;
        dydx = [a1,dydx,a2];
    else
        error('only can take derivative along 1 or 2 dim');
    end
end