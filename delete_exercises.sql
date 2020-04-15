# Open up albums_seeder.sql, after your USE statement, add a TRUNCATE query to delete all records from the table before inserting.
# Test your change and make sure you no longer get any duplicate records when running albums_seeder.sql.
# Create a file called delete_exercises.sql.
# Write SELECT statements for:
# Albums released after 1991
# Albums with the genre 'disco'
#     Albums by 'Whitney Houston' (...or maybe an artist of your choice)
#     Make sure to put appropriate captions before each SELECT.
#                                                           Convert the SELECT statements to DELETE.
#     Use the MySQL command line client to make sure your records really were removed.

USE codeup_test_db;

SELECT 'Albums released after 1991' AS 'Delete 4.a';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with genre "disco"' AS 'Delete 4.b';
DELETE FROM albums WHERE genre = 'disco';

SELECT 'Albums by Whitney Houston' AS 'Delete 4.c';
DELETE FROM albums WHERE artist = 'Whitney Houston';

