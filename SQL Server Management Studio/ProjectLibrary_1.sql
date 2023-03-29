CREATE PROCEDURE MostReadBook
AS
BEGIN
SELECT 
DISTINCT  
TOP 
	1 ConbookId,
	COUNT(ConIssueId) AS MostOrdercount
FROM 
	connectioBookIssues 
GROUP BY
	ConbookId
ORDER BY
	COUNT(ConIssueId)
DESC
END

EXEC MostReadBook





