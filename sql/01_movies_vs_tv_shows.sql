SELECT
  type,
  COUNT(*) AS Total_Content
FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`
WHERE type IN ('Movie', 'TV Show')
GROUP BY type

UNION ALL

SELECT
  'Total' AS type,
  COUNT(*) AS Total_Content
FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`
WHERE type IN ('Movie', 'TV Show');
