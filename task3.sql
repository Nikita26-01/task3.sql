-- 1. Select all members
SELECT * FROM Members;

-- 2. Select specific columns: book titles and their genres
SELECT Title, Genre FROM Books;

-- 3. Filter: Show members who have an email
SELECT FullName, Email FROM Members
WHERE Email IS NOT NULL;

-- 4. Filter: Show members with NULL phone numbers
SELECT FullName FROM Members
WHERE Phone IS NULL;

-- 5. Filter: Books published between 2000 and 2010
SELECT Title, PublishedYear FROM Books
WHERE PublishedYear BETWEEN 2000 AND 2010;

-- 6. Pattern matching: Members whose name contains 'Patil'
SELECT * FROM Members
WHERE FullName LIKE '%Patil%';

-- 7. Pattern matching: Books with titles starting with 'The'
SELECT Title FROM Books
WHERE Title LIKE 'The%';

-- 8. Use AND / OR: Members who joined in 2024 and have a phone number
SELECT * FROM Members
WHERE JoinDate LIKE '2024%' AND Phone IS NOT NULL;

-- 9. IN clause: Books that belong to specific genres
SELECT * FROM Books
WHERE Genre IN ('Mythology', 'Fiction');

-- 10. Sort books by published year (descending)
SELECT * FROM Books
ORDER BY PublishedYear DESC;

-- 11. Sort members alphabetically
SELECT * FROM Members
ORDER BY FullName ASC;

-- 12. Limit: Show top 2 most recently published books
SELECT * FROM Books
ORDER BY PublishedYear DESC
LIMIT 2;

-- 13. Use DISTINCT: List of unique genres
SELECT DISTINCT Genre FROM Books;

-- 14. Use aliasing for better readability
SELECT Title AS BookTitle, PublishedYear AS Year FROM Books;

-- 15. Combine filters: Books by AuthorID 1 or 3, published after 2005
SELECT Title FROM Books
WHERE AuthorID IN (1, 3) AND PublishedYear > 2005;
