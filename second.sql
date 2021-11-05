SELECT CONCAT(home_team,"-",away_team) AS A, COUNT(*)
FROM event_entity GROUP BY A ORDER BY COUNT(*)