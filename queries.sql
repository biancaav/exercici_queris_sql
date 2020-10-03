-- CONSULTA 1:
SELECT COUNT(*)  as total
	FROM USAirlineFlights2.flights;

-- CONSULTA 2:
SELECT Origin, AVG(ArrDelay) as prom_arribades, AVG(DepDelay) as prom_sortides 
	FROM USAirlineFlights2.flights
	GROUP BY Origin
    ORDER BY Origin;

-- CONSULTA 3:
SELECT Origin, colYear, colMonth, AVG(DepDelay) as prom_arribades
	FROM USAirlineFlights2.flights
	GROUP BY Origin, colYear, colMonth
    ORDER BY Origin;

-- CONSULTA 4: no l'he pogut resoldre...

-- CONSULTA 5:
SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) as total_cancelacions
	FROM USAirlineFlights2.flights 
    GROUP BY UniqueCarrier, colYear, colMonth
    ORDER BY SUM(cancelled) DESC;
    
-- CONSULTA 6:
SELECT TailNum, SUM(Distance) as totalDistance FROM USAirlineFlights2.flights
	GROUP BY TailNum
    ORDER BY SUM(Distance) DESC LIMIT 1,10;
    
-- CONSULTA 7:
SELECT UniqueCarrier, AVG(ArrDelay) as avgDelay FROM USAirlineFlights2.flights
	GROUP BY UniqueCarrier
	HAVING AVG(ArrDelay) >=10.000
    ORDER BY AVG(ArrDelay) DESC;


    
    