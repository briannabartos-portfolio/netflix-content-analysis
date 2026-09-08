SELECT
  CASE
    WHEN release_year >= 2010 THEN '2010s'
    WHEN release_year >= 2000 THEN '2000s'
    WHEN release_year >= 1990 THEN '1990s'
    WHEN release_year >= 1980 THEN '1980s'
    WHEN release_year >= 1970 THEN '1970s'
    WHEN release_year >= 1960 THEN '1960s'
    WHEN release_year >= 1950 THEN '1950s'
    WHEN release_year >= 1940 THEN '1940s'
    WHEN release_year >= 1930 THEN '1930s'
    ELSE '1920s'
  END AS decade,
  COUNT(*) AS title_count
FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`
WHERE type IN ('Movie', 'TV Show')
GROUP BY decade
ORDER BY title_count DESC;
