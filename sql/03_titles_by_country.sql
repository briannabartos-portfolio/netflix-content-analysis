WITH cleaned_countries AS (
  SELECT
    title,
    type,
    TRIM(country_name) AS country
  FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`,
  UNNEST(SPLIT(country, ',')) AS country_name
  WHERE country IS NOT NULL
    AND TRIM(country_name) != ''
    AND type IN ('Movie', 'TV Show')
)

SELECT
  country,
  COUNT(*) AS title_count
FROM cleaned_countries
GROUP BY country
ORDER BY title_count DESC;
