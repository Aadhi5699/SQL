with calculated_weight as (
    select person_name,turn,
     SUM(weight) Over (order by turn) as total_weight
    from queue
)

select person_name from calculated_weight
where total_weight <=1000
order by total_weight desc
limit 1;
