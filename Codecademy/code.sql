SELECT *
  FROM survey
  LIMIT 10;

SELECT * FROM quiz LIMIT10;
SELECT * FROM user_id LIMIT 10;
SELECT question, COUNT(response)
  FROM survey
  GROUP BY question
  ORDER BY COUNT(response) DESC;


SELECT question, COUNT(DISTINCT user_id)
FROM survey
GROUP BY question
ORDER BY COUNT(DISTINCT user_id) DESC;

4. SELECT *
  FROM quiz
  LIMIT 5;

  SELECT *
  FROM home_try_on
  LIMIT 5;


SELECT *
  FROM purchase
  LIMIT 5;

5. SELECT DISTINCT q.user_id,
  CASE
  WHEN h.user_id IS NOT NULL then 'TRUE'
  ELSE 'FALSE'
  END AS 'is_home_try_on',
  h.number_of_pairs,
  CASE
  WHEN p.user_id IS NOT NULL then 'TRUE'
  ELSE 'FALSE'
  END AS 'is_purchase'
  FROM quiz q
  LEFT JOIN home_try_on h
  ON q.user_id = h.user_id
  LEFT JOIN purchase p
  ON p.user_id = q.user_id
  LIMIT 20;
SELECT style AS 'STYLE', count (user_id) AS 'COUNT'
from quiz
group by style
order by 2;