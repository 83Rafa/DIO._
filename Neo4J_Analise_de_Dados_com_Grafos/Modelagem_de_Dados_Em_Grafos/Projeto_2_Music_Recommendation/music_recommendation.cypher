// Para carregar a base de dados e atribuir os nós
LOAD CSV WITH HEADERS FROM "https://raw.githubusercontent.com/83Rafa/DIO._/refs/heads/main/Neo4J_Analise_de_Dados_com_Grafos/Modelagem_de_Dados_Em_Grafos/Projeto_2_Music_Recommendation/Docs/user_listened_data.csv" AS row
WITH row
MERGE (u:User {id: row.user_id})
MERGE (s:Song {track_id: row.track_id})
SET s.song_name = row.song_name, s.year = toInteger(row.year)

MERGE (a:Artist {artist_name: row.artist})
MERGE (s)-[:PERFORMED_BY]->(a)

WITH row, u, s, a
UNWIND split(row.genre, "|") AS genre_name
MERGE (g:Genre {name: trim(genre_name)})
MERGE (s)-[:HAS_GENRE]->(g)
MERGE (a)-[:ASSOCIATED_WITH]->(g)

WITH row, u, s
MERGE
  (u)-
    [:LISTENED_TO {
        timestamp: date(row.timestamp),
        times_played: toInteger(row.times_played)
      }]->
  (s)

// Teste da base
MATCH (u:User)-[r:LISTENED_TO]->(s:Song)
RETURN u.id, s.song_name, r.times_played, r.timestamp
LIMIT 10

// Para criar playlists semanais criadas à partir dos últimos 7 dias
MATCH (u:User)-[r:LISTENED_TO]->(s:Song)
WHERE r.timestamp >= date("2025-10-22")
RETURN u.id AS usuario, s.song_name AS musica, r.times_played AS vezes
ORDER BY r.times_played DESC

// Para criar recomendações por gênero nusical
MATCH (u:User)-[:LISTENED_TO]->(s:Song)-[:HAS_GENRE]->(g:Genre)
WITH u, collect(DISTINCT g.name) AS generos_ouvidos
MATCH (s2:Song)-[:HAS_GENRE]->(g2:Genre)
WHERE
  g2.name IN generos_ouvidos AND
  NOT EXISTS {
    MATCH (u)-[:LISTENED_TO]->(s2)
  }
RETURN DISTINCT s2.song_name AS recomendacao, g2.name AS genero
LIMIT 10

//Recomenda músicas que o usuário ainda não ouviu, mas que pertencem aos gêneros que ele já curte
MATCH (u:User {id: "U0001"})-[:LISTENED_TO]->(:Song)-[:HAS_GENRE]->(g:Genre)
WITH u, collect(DISTINCT g.name) AS generos_favoritos

MATCH (s:Song)-[:HAS_GENRE]->(g2:Genre)
WHERE
  g2.name IN generos_favoritos AND
  NOT EXISTS {
    MATCH (u)-[:LISTENED_TO]->(s)
  }
RETURN DISTINCT s.song_name AS recomendacao, g2.name AS genero
LIMIT 10