SELECT *
FROM people
ORDER BY birthyear ASC NULLS LAST, birthcountry ASC NULLS LAST;

SELECT *
FROM people
WHERE throws = 'R'
ORDER BY height DESC NULLS LAST
LIMIT 10;