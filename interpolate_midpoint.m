% simply calculates the average of the two points
function y_itp = interpolate_midpoint(y)
    len = length(y);
    y_itp = zeros(len-1, 1);
    for i = 1:len-1
        y_itp(i) = 0.5*(y(i+1)+y(i));
    end
end