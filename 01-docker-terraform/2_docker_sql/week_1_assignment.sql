-- Question 3. Count records
SELECT count(*)
	FROM public.green_taxi_trips
where date(lpep_pickup_datetime) = '2019-09-18';

-- Question 4. Longest trip for each day
select date(lpep_pickup_datetime), sum(trip_distance) as total_distance
from green_taxi_trips
group by 1
order by 2 desc
limit 1;

-- Question 5. Three biggest pick up Boroughs
SELECT "Borough", sum(total_amount) as total_amount
	FROM public.green_taxi_trips gt
	join zones on gt."PULocationID" = "LocationID"
where date(lpep_pickup_datetime) = '2019-09-18'
group by 1
having sum(total_amount) > 50000
order by 2 desc;

-- Question 6. Largest tip
select z2."Zone", gt.tip_amount
from green_taxi_trips gt
left join zones z1 on gt."PULocationID" = z1."LocationID"
left join zones z2 on gt."DOLocationID" = z2."LocationID"
where to_char(lpep_pickup_datetime, 'YYYY-MM') = '2019-09'
and z1."Zone" = 'Astoria'
order by tip_amount desc
limit 1




