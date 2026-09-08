WITH cleaned_dates AS (
  SELECT
    type,
    COALESCE(
      SAFE.PARSE_DATE('%e-%b-%y', date_added),
      SAFE.PARSE_DATE('%B %e, %Y', date_added)
    ) AS parsed_date
  FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`
)

SELECT
  EXTRACT(YEAR FROM parsed_date) AS year_added,
  COUNTIF(type = 'Movie') AS movies_added,
  COUNTIF(type = 'TV Show') AS tv_shows_added
FROM cleaned_dates
WHERE parsed_date IS NOT NULL
  AND type IN ('Movie', 'TV Show')
GROUP BY year_added
ORDER BY year_added DESC;
