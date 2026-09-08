SELECT
  rating,
  COUNT(*) AS total_ratings
FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`
WHERE rating IS NOT NULL
  AND type IN ('Movie', 'TV Show')
GROUP BY rating
ORDER BY total_ratings DESC;
