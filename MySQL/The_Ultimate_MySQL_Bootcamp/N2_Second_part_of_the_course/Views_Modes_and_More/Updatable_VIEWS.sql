USE `many_to_many_exercise`;

-- this is updatable VIEW because it doesent break the rules from MySQL documentation 
CREATE VIEW updatable_ordered_view AS 
SELECT * FROM series ORDER BY title;

-- ok to insert
INSERT INTO updatable_ordered_view (title, released_year, genre) VALUES ('Game of Thrones', 2008, 'Fantasy');

-- it has the series
SELECT * FROM updatable_ordered_view WHERE title = 'Game of Thrones';

-- also it has the series
SELECT * FROM series WHERE title = 'Game of Thrones';

-- ok to delete
DELETE FROM updatable_ordered_view WHERE title = 'Game of Thrones';

-- empty
SELECT * FROM updatable_ordered_view WHERE title = 'Game of Thrones';