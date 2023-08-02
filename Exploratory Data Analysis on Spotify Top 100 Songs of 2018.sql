--Number of Appearances per Artists on the chart
  SELECT  
  artists,
  COUNT(artists) NumberOfAppearance
FROM 
`dataverse-393221.spotify_top_100_2018.top_2018` 
GROUP BY
  1
ORDER BY 
  2 DESC


--Are there more artists in the Top 100 with 'Lil' in their name, or with 'DJ' in their name?
SELECT
  'Lil' AS type,
  COUNT(DISTINCT artists) AS numberOfArtist
FROM
  `spotify_top_100_2018.top_2018`
WHERE
  UPPER(artists) LIKE '%LIL%'
GROUP BY
  1

UNION ALL

SELECT
  'Dj' AS type,
  COUNT(DISTINCT artists) AS numberOfArtist
FROM
  `spotify_top_100_2018.top_2018`
WHERE
  UPPER(artists) LIKE '%LIL%'
GROUP BY
  1
