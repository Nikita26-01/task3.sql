-- 1. SELECT * – Retrieve all data from Members
SELECT * FROM Members;

-- 2. SELECT specific columns – Retrieve book title and published year
SELECT Title, PublishedYear FROM Books;

-- 3. WHERE clause – Members who joined in 2024
SELECT * FROM Members
WHERE JoinDate LIKE '2024%';

-- 4. WHERE with AND – Books published after 2005 and with genre 'Mythology'
SELECT * FROM Books
WHERE PublishedYear > 2005 AND Genre = 'Mythology';

-- 5. WHERE with OR – Members with Gmail OR NULL email
SELECT * FROM Members
WHERE Email LIKE '%@gmail.com' OR Email IS NULL;

-- 6. LIKE – Books whose title contains the word 'The'
SELECT * FROM Books
WHERE Title LIKE '%The%';

-- 7. BETWEEN – Books published between 2000 and 2010
SELECT * FROM Books
WHERE PublishedYear BETWEEN 2000 AND 2010;

-- 8. ORDER BY – Sort books by PublishedYear ascending
SELECT * FROM Books
ORDER BY PublishedYear ASC;

-- 9. LIMIT – Show only the first 2 members
SELECT * FROM Members
LIMIT 2;