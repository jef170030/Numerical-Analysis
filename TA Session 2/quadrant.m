function t = quadrant(x,y)
% Tells which quadrant the xy pair is in

if x == 0 || y == 0
    t = 'Axis';
    
elseif x > 0 && y > 0
    t = 'Quadrant One';
    
elseif x > 0 && y < 0
    t = 'Quadrant Four';
    
elseif x < 0 && y > 0
    t = 'Quadrant Two';
    
else
    t = 'Quadrant Three';
end
end

