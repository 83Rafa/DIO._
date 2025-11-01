// Para listar os usuários inativos (considerando 30 dias de inatividade)
MATCH (u:User)
WHERE date(u.last_active) < date() - duration({days: 30})
RETURN u.user_name, u.last_active;

// Usuários ativos nos últimos 30 dias
MATCH (u:User)
WHERE date(u.last_active) >= date() - duration({days: 30})
RETURN u.user_name, u.last_active;

// Likes em um post
MATCH (:User)-[:LIKED]->(p:Post {post_id: "P#K1!A01"})
RETURN count(*) AS like_count;

//Número de comentários num post
MATCH (c:Comment)-[:ON]->(p:Post {post_id: "P#K1!A01"})
RETURN count(c) AS comment_count;

// Quantas vezes o post foi compartilhado
MATCH (:User)-[:SHARED]->(s:Shared)-[:OF]->(p:Post {post_id: "P#K1!A01"})
RETURN count(s) AS share_count;

// Conta quem o usuário segue
MATCH (u:User {user_id: "#00001"})-[:FOLLOWS]->(:User)
RETURN count(*) AS following_count;

// COnta seguidores
MATCH (:User)-[:FOLLOWS]->(u:User {user_id: "#00001"})
RETURN count(*) AS follower_count;

// Atualizar última atidvidade do usuário
MATCH (u:User)
WITH u, date(u.last_active) AS ultima
RETURN
  u.name,
  u.country,
  CASE
    WHEN ultima >= date() - duration({days: 45}) THEN "ativo"
    ELSE "inativo"
  END AS status
ORDER BY u.country, u.name;

//Top 10 Usuarios mais seguidos
MATCH (follower:User)-[:FOLLOWS]->(u:User)
WITH u, count(follower) AS follower_count
RETURN
  u.name AS nome,
  u.user_name AS username,
  u.country AS país,
  follower_count
ORDER BY follower_count DESC
LIMIT 10