// INDEXES PARA QUE AS QUERIES SEJAM MAIS PERFORMATICAS
// Index de usuários com label "Artist" por pais
CREATE INDEX artist_country_index IF NOT EXISTS
FOR (a:Artist)
ON (a.country);

// Index para usuários com label "Athlete" por país
CREATE INDEX athlete_country_index IF NOT EXISTS
FOR (a:Athlete)
ON (a.country);

// Index para usuários com label "Musician" por país
CREATE INDEX athlete_country_index IF NOT EXISTS
FOR (a:Musician)
ON (a.country);

// Index para usuários verificados
CREATE INDEX user_verified_index IF NOT EXISTS
FOR (u:User)
ON (u.is_verified)