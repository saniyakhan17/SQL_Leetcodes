 -- 602. Friend Requests II: Who Has the Most Friends


SELECT id ,  COUNT(id) num FROM 
(SELECT requester_id  AS id
from
RequestAccepted 
UNION ALL 
SELECT accepter_id AS id
FROM  RequestAccepted ) t
GROUP BY id
ORDER BY COUNT(id)  DESC 
LIMIT 1

;
