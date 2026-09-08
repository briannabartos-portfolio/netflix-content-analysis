WITH cleaned_genres AS (
  SELECT
    TRIM(genre_name) AS genre
  FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`,
  UNNEST(SPLIT(genres, ',')) AS genre_name
  WHERE genres IS NOT NULL
    AND TRIM(genre_name) != ''
    AND type IN ('Movie', 'TV Show')
)

SELECT
  genre,
  COUNT(*) AS title_count
FROM cleaned_genres
GROUP BY genre
ORDER BY title_count DESC;
