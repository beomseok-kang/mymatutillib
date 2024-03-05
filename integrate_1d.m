% trapezoidal rule
function area = integrate_1d(y, x_step)
    len = length(y);
    area = 0.0;
    for i = 1:len-1
        area = area + 0.5*x_step*(y(i+1)+y(i));
    end
end