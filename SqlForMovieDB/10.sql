-- Question 10 xiangtia
SELECT (SELECT CAST(COUNT (DISTINCT M.Director) AS REAL) FROM MovieData M WHERE Rating > 8.0 AND M.Director NOT in (SELECT M.Director FROM MovieData M WHERE Rating < 8.0))/(SELECT CAST(COUNT(DISTINCT M.Director) AS REAL) FROM MovieData M) *100 'Percent %'