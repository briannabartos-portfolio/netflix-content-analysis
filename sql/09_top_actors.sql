WITH cleaned_cast AS (
  SELECT
    TRIM(cast_name) AS actor
  FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`,
  UNNEST(SPLIT(`cast`, ',')) AS cast_name
  WHERE `cast` IS NOT NULL
    AND TRIM(cast_name) != ''
    AND type IN ('Movie', 'TV Show')
)

SELECT
  actor,
  COUNT(*) AS title_count
FROM cleaned_cast
GROUP BY actor
ORDER BY title_count DESC;
