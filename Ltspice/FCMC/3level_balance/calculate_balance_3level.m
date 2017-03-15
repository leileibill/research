n = length(y);
v_low = [];
v_high = [];
v_diff = [];
for index = 1:n
    v_low(end+1) = interp1(y(index).time,y(index).value,3e-6)
    v_high(end+1) = interp1(y(index).time,y(index).value,3e-6 + 1/2/fsw)

    v_diff(end+1) = v_high(end) - v_low(end);
end
