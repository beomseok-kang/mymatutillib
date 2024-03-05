function d2ydx2 = secondderivative2d(x,y,ndim)
%% for uniform grid x, 2nd order accuracy
    dx = x(2) - x(1);
    if ndim==1
        d2ydx2 = (-2*y(2:end-1,:) + y(1:end-2,:) + y(3:end,:)) ./dx;
        a1 = (2*y(1,:) - 5*y(2,:) + 4*y(3,:) - 1*y(4,:))./dx;
        a2 = (2*y(end,:) - 5*y(end-1,:) + 4*y(end-2,:) - 1*y(end-3,:))./dx;
        d2ydx2 = [a1;d2ydx2;a2];
    elseif ndim==2
        d2ydx2 = (-2*y(:,2:end-1) + y(:,1:end-2) + y(:,3:end)) ./dx;
        a1 = (2*y(:,1) - 5*y(:,2) + 4*y(:,3) - 1*y(:,4))./dx;
        a2 = (2*y(:,end) - 5*y(:,end-1) + 4*y(:,end-2) - 1*y(:,end-3))./dx;
        d2ydx2 = [a1,d2ydx2,a2];
    else
        error('only can take derivative along 1 or 2 dim');
    end
end