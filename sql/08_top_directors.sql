WITH cleaned_directors AS (
  SELECT
    TRIM(director_name) AS director
  FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`,
  UNNEST(SPLIT(director, ',')) AS director_name
  WHERE director IS NOT NULL
    AND TRIM(director_name) != ''
    AND type IN ('Movie', 'TV Show')
)

SELECT
  director,
  COUNT(*) AS title_count
FROM cleaned_directors
GROUP BY director
ORDER BY title_count DESC;
