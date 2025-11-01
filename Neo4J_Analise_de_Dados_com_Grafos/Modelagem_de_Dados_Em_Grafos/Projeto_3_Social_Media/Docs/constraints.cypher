// CONSTRAINTS PARA GARANTIR A INTEGRUIDADE E UNICIDADE DOS DADOS FUNDAMENTAIS
// Garante que o user_id não possa ser repetido
CREATE CONSTRAINT user_id_unique IF NOT EXISTS
FOR (u:User)
REQUIRE u.user_id IS UNIQUE;

// Garante que o user_id não possa ser repetido
CREATE CONSTRAINT user_name_unique IF NOT EXISTS
FOR (u:User)
REQUIRE u.user_name IS UNIQUE;

CREATE CONSTRAINT post_id_unique IF NOT EXISTS
FOR (p:Post)
REQUIRE p.post_id IS UNIQUE;

// Garante unicidade para os ids dos comentários
CREATE CONSTRAINT comment_id_unique IF NOT EXISTS
FOR (c:Comment)
REQUIRE c.comment_id IS UNIQUE;

// Garante unicidade para os ids dos compartilhamentos
CREATE CONSTRAINT shared_id_unique IF NOT EXISTS
FOR (s:Shared)
REQUIRE s.shared_id IS UNIQUE;