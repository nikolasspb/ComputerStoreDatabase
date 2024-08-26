with lowest_models as (select model, speed, price from Laptop 
    where speed = (select min(speed) from Laptop)
    union
select model, speed, price from PC 
    where speed = (select min(speed) from PC))
    select p.maker, p.model, lm.speed, lm.price
from lowest_models as lm 
    left join Product as p on
    lm.model = p.model;
