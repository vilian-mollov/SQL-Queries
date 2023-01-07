SET SESSION sql_mode = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- ONLY_FULL_GROUP_BY Throws error if we try to select column that is not agregated or is not in the GROUP BY
-- Should throw an error
SELECT title, rating FROM series
JOIN reviews ON reviews.series_id = series.id
GROUP BY title;

-- but if we disable ONLY_FULL_GROUP_BY mode we will get first result 
SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- here no errors and we get the first result 
SELECT title, rating FROM series
JOIN reviews ON reviews.series_id = series.id
GROUP BY title;


-- NO_ZERO_IN_DATE will throw warning: Incorrect datetime value: '2023-01-00'
-- and return null 
SELECT DATE('2023-01-00');
