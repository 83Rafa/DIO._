// Queries para testar a performance do banco de dados
// Utilizando o Explain para examinar usuários com label "Musician" do Reino Unido
EXPLAIN
MATCH (a:Musician)
WHERE a.country = "United Kingdom"
RETURN a.name, a.user_name;

// Utilizando o Profile para examinar a performance de usuários verificados
PROFILE
MATCH (u:User)
WHERE u.is_verified = true
RETURN u.name AS nome, u.privacy_level AS privacidade