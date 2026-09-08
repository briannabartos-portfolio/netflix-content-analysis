SELECT
  AVG(SAFE_CAST(duration AS INT64)) AS Average_Duration,
  MIN(SAFE_CAST(duration AS INT64)) AS Shortest_Movie,
  MAX(SAFE_CAST(duration AS INT64)) AS Longest_Movie
FROM `project-551624e1-24b9-4590-97f.Netflix_Content.Netflix`
WHERE type = 'Movie';
