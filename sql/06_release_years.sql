SELECT
  release_year,
  COUNT(*) AS Release_Year_Totals
FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`
WHERE type IN ('Movie', 'TV Show')
GROUP BY release_year
ORDER BY Release_Year_Totals DESC;
