%  this will crate the target matrics

y = zeros(850,34);
j = 1;

for i = 1 : 850
    y(i , j ) = 1;
    if ~(mod(i, 25) > 0)
        j = j + 1;
    end;    
end