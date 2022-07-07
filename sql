use madhu

select * from Districtwise$ ;

-- jammu & kashmir total population according to data
select sum(totpopulat) as total_population
from Districtwise$
where statname = 'JAMMU & KASHMIR' ;

-- most populated district in jammu & kashmir

select distcd , distname ,TOTPOPULAT from districtwise$ where
totpopulat= (select max(totpopulat) as total_population 
from Districtwise$ 
where STATNAME = 'JAMMU & KASHMIR');

-- total no. of village and distric in j&k

select sum(villages)as total_villages , sum(districts )as total_districts
from Districtwise$
where STATNAME = 'JAMMU & KASHMIR' ;

-- which district has more no of village

select distname, VILLAGES from districtwise$ where 
villages=(select  max(villages) from Districtwise$
where STATNAME ='JAMMU & KASHMIR');



--lowest populated district in j&k
select distcd , distname ,TOTPOPULAT from districtwise$ where
totpopulat= (select min(totpopulat) as total_population 
from Districtwise$ 
where STATNAME = 'JAMMU & KASHMIR');

--state jammu&kashmir population percentage 

--select statname, sum(case when statname ='JAMMU & KASHMIR' then totpopulat end)*100/sum(totpopulat) as total_percentage
--from Districtwise$
--group by STATNAME ;


select sum(totpopulat)*100/(select sum(totpopulat) from Districtwise$ ) as jandk_percentage
from Districtwise$
where STATNAME = 'JAMMU & KASHMIR'

select sum(totpopulat) from Districtwise$;

select sum(totpopulat) from Districtwise$
where STATNAME = 'JAMMU & KASHMIR' ;


-- village percentage in j&k

select sum(VILLAGES)as india_village from Districtwise$;

select sum(VILLAGES)as jk_village from Districtwise$
where STATNAME = 'JAMMU & KASHMIR';

select sum(VILLAGES)*100/ (select sum(VILLAGES) from Districtwise$) as percentage_of_village
from Districtwise$
where STATNAME = 'JAMMU & KASHMIR';

-- every state  growthrate in india'
select * from Districtwise$;

select statname, avg( growthrate)as avg_growth_rate from Districtwise$
group by STATNAME ;


-- most populated urban district 

select DISTNAME, P_URB_POP from districtwise$ where p_urb_pop =(select  max(P_URB_POP) from Districtwise$
where STATNAME ='JAMMU & KASHMIR') ;

--top 5 most populated 


