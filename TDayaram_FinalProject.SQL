--final project questions
--question 3b.1
select * from service_requests where agency = 'NYPD'
limit 10

--question 3b.2
select distinct complaint_type from service_requests where agency = 'NYPD'

--question 3b.3
select complaint_type, count(complaint_type) AS number_of_complaints from service_requests
where agency = 'NYPD' or not null
group by complaint_type; 

--question 3b.4
select complaint_type, count(complaint_type) AS number_of_complaints from service_requests
where agency = 'NYPD' or not null
group by complaint_type 
order by number_of_complaints desc
limit 5;

--question 3b.5
select complaint_type, count(complaint_type) AS number_of_complaints
from service_requests
where complaint_type LIKE 'Noise%'
group by complaint_type 
order by number_of_complaints desc
