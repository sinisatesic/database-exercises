USE codeup_test_db;
# In select_exercises.sql write queries to find the following information. Before each item, output a caption explaining the results:
#
# The name of all albums by Pink Floyd.
# The year Sgt. Pepper's Lonely Hearts Club Band was released
# The genre for Nevermind
# Which albums were released in the 1990s
# Which albums had less than 20 million certified sales
# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
# As always, commit your changes after each step and push them out to GitHub
#
# The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = 'Pink Floyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

# The genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';

# Which albums were released in the 1990s
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;

# Which albums had less than 20 million certified sales
SELECT name FROM albums WHERE sales < 20;

# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name FROM albums WHERE genre = 'Rock';