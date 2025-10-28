--311 Service Request table - Summer 2025
--Viewing Police Complaints (sorted by borough)
CREATE VIEW POLICE_BROOKLYN as
SELECT * 
FROM service_requests
WHERE agency = 'NYPD'
AND city = 'BROOKLYN'
ORDER BY complaint_type asc;

CREATE VIEW POLICE_BRONX as
SELECT *
FROM service_requests
WHERE agency = 'NYPD'
AND city = 'BRONX'
ORDER BY complaint_type asc;

CREATE VIEW POLICE_STATEN_ISLAND as
SELECT * 
FROM service_requests
WHERE agency = 'NYPD'
AND city = 'STATEN ISLAND'
ORDER BY complaint_type asc;

CREATE VIEW POLICE_MANHATTAN as
SELECT * 
FROM service_requests
WHERE agency = 'NYPD'
AND city = 'NEW YORK'
ORDER BY complaint_type asc;

--Viewing HPD Complaints (sorted by borough)
CREATE VIEW HOUSING as
SELECT *
FROM service_requests
WHERE agency = 'HPD'
AND city = 'BROOKLYN'
ORDER BY complaint_type asc;

CREATE VIEW HOUSING as
SELECT *
FROM service_requests
WHERE agency = 'HPD'
AND city = 'BRONX'
ORDER BY complaint_type asc;

CREATE VIEW HOUSING as
SELECT *
FROM service_requests
WHERE agency = 'HPD'
AND city = 'STATEN ISLAND'
ORDER BY complaint_type asc;

CREATE VIEW HOUSING as
SELECT *
FROM service_requests
WHERE agency = 'HPD'
AND city = 'NEW YORK'
ORDER BY complaint_type asc;

--Number Of Complaints in each category
select complaint_type, count(complaint_type) AS number_of_complaints from service_requests
where agency = 'NYPD' or not null
group by complaint_type 
order by number_of_complaints desc

--Number of Noise Complaints - NYPD
select complaint_type, count(complaint_type) AS number_of_complaints
from service_requests
where agency = 'NYPD'
AND complaint_type LIKE 'Noise%'
group by complaint_type 
order by number_of_complaints desc


--Convert all Queens neighborhood into the single value of QUEENS
ALTER TABLE 

UPDATE service_requests
where
--Breaking down descriptors
