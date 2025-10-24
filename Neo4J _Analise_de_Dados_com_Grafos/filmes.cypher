// Nós principais para User, Movie, Series, HAS_GENRE, Actor e Director
MERGE
  (rafael:User:Avaliador
    {
      name: 'Rafael',
      dob: date('1990-11-23'),
      city: 'São Paulo',
      client_since: '2020'
    });
MERGE
  (ozzy:Usuario:Avaliador
    {
      name: 'Ozzy',
      dob: date('1948-03-12'),
      city: 'Curitiba',
      client_since: '2021'
    });
MERGE
  (slash:Usuario
    {
      name: 'Slash',
      dob: date('1965-07-23'),
      city: 'São Paulo',
      client_since: '2024'
    });
MERGE
  (ronaldo:Usuario:Avaliador
    {
      name: 'Ronaldinho',
      dob: date('1980-03-21'),
      city: 'Porto Alegre',
      client_since: '2020'
    });
MERGE
  (michael:Usuario
    {
      name: 'Michael',
      dob: date('1963-02-17'),
      city: 'Rio de Janeiro',
      client_since: '2020'
    });

// Filmes/Séries
MERGE (philadelphia:Movie {tittle: "Philadelphia"});
MERGE (inception:Movie {tittle: "Inception"});
MERGE (daVinci:Movie {tittle: "The Da Vinci Code"});
MERGE (bTrain:Movie {tittle: "Bullet Train"});
MERGE (catchme:Movie {tittle: "Catch Me"});
MERGE (reven:Movie {tittle: "The Revenant"});
MERGE (madMax:Movie {tittle: "Mad Max: Fury Road"});
MERGE (seven:Movie {tittle: "Seven"});
MERGE (oppen:Movie {tittle: "Oppenheimer"});
MERGE (twoHalf:Series {tittle: "Two And a Half Man"});
MERGE (pBlinders:Series {tittle: "Peaky Blinders"});

// Atores dos filmes/series
MERGE (denzel:Actor {name: "Denzel Washington"});
MERGE (charlie:Actor {name: "Charlie Sheen"});
MERGE (hanks:Actor {name: "Tom Hanks"});
MERGE (freeman:Actor {name: "Morgan Freeman"});
MERGE (robert:Actor {name: "Robert Downey Jr."});
MERGE (brad:Actor {name: "Brad Pitt"});
MERGE (dicaprio:Actor {name: "Leonardo Di Caprio"});
MERGE (hardy:Actor {name: "Tom Hardy"});
MERGE (cilian:Actor {name: "Cilian Murphy"});
MERGE (theron:Actor {name: "Charlize Theron"});

// Diretores dos filmes/series
MERGE (nolan:Director {name: "Christopher Nolan"});
MERGE (howard:Director {name: "Ron Howard"});
MERGE (leitch:Director {name: "David Leitch"});
MERGE (steven:Director {name: "Steven Spielberg"});
MERGE (alej:Director {name: "Alejandro González Iñárritu"});
MERGE (george:Director {name: "George Miller"});
MERGE (fincher:Director {name: "David Fincher"});
MERGE (demme:Director {name: "Jonathan Demme"});
MERGE (lorry:Director {name: "Chuck Lorry"});
MERGE (otto:Director {name: "Otto Bathurst"});
MERGE (harper:Director {name: "Tom Harper"});
MERGE (colm:Director {name: "Colm McCarthy"});
MERGE (tim:Director {name: "Tim Mielants"});
MERGE (caffrey:Director {name: "David Caffrey"});
MERGE (byrne:Director {name: "Anthony Byrne"});

// Categorias dos filmes/séries
MERGE (drama:HAS_GENRE {name: "Drama"});
MERGE (comedy:HAS_GENRE {name: "Comedy"});
MERGE (scifi:HAS_GENRE {name: "Science-Fiction"});
MERGE (romace:HAS_GENRE {name: "Romance"});
MERGE (adven:HAS_GENRE {name: "Adventure"});
MERGE (action:HAS_GENRE {name: "Action"});
MERGE (mistery:HAS_GENRE {name: "Mistery"});
MERGE (horror:HAS_GENRE {name: "Horror"});
MERGE (thriller:HAS_GENRE {name: "Thriller "});
MERGE (pthriller:HAS_GENRE {name: "Psychological Thriller"});

// Relacionamentos de gênero para os filmes
CREATE (philadelphia)-[:HAS_GENRE]->(drama);
CREATE (philadelphia)-[:HAS_GENRE]->(romance);
CREATE (inception)-[:HAS_GENRE]->(scifi);
CREATE (inception)-[:HAS_GENRE]->(thriller);
CREATE (inception)-[:HAS_GENRE]->(horror);
CREATE (daVinci)-[:HAS_GENRE]->(horror);
CREATE (daVinci)-[:HAS_GENRE]->(thriller);
CREATE (daVinci)-[:HAS_GENRE]->(mistery);
CREATE (btrain)-[:HAS_GENRE]->(action);
CREATE (bBrain)-[:HAS_GENRE]->(comedy);
CREATE (bBrain)-[:HAS_GENRE]->(thriller);
CREATE (catchme)-[:HAS_GENRE]->(action);
CREATE (catchme)-[:HAS_GENRE]->(comedy);
CREATE (catchme)-[:HAS_GENRE]->(crime);
CREATE (reven)-[:HAS_GENRE]->(thriller);
CREATE (madMax)-[:HAS_GENRE]->(action);
CREATE (madMax)-[:HAS_GENRE]->(thriller);
CREATE (seven)-[:HAS_GENRE]->(horror);
CREATE (seven)-[:HAS_GENRE]->(crime);
CREATE (seven)-[:HAS_GENRE]->(pthriller);
CREATE (seven)-[:HAS_GENRE]->(mistery);
CREATE (oppen)-[:HAS_GENRE]->(thriller);
CREATE (twoHalf)-[:HAS_GENRE]->(comedy);
CREATE (pBlinders)-[:HAS_GENRE]->(crime);
CREATE (pBlinders)-[:HAS_GENRE]->(drama);

// Relacionamentos de atuação
CREATE (denzel)-[:ACTED_IN]->(philadelphia);
CREATE (hanks)-[:ACTED_IN]->(philadelphia);
CREATE (hanks)-[:ACTED_IN]->(daVinci);
CREATE (hanks)-[:ACTED_IN]->(catchme);
CREATE (dicaprio)-[:ACTED_IN]->(catchme);
CREATE (dicaprio)-[:ACTED_IN]->(inception);
CREATE (hardy)-[:ACTED_IN]->(inception);
CREATE (hardy)-[:ACTED_IN]->(madMax);
CREATE (teron)-[:ACTED_IN]->(madMax);
CREATE (hardy)-[:ACTED_IN]->(pBlinders);
CREATE (cilian)-[:ACTED_IN]->(pBlinders);
CREATE (cilian)-[:ACTED_IN]->(oppen);
CREATE (robert)-[:ACTED_IN]->(oppen);
CREATE (brad)-[:ACTED_IN]->(bTrain);
CREATE (brad)-[:ACTED_IN]->(seven);
CREATE (freeman)-[:ACTED_IN]->(seven);
CREATE (charlie)-[:ACTED_IN]->(twoHalf);

// Relacionamentos de direção
CREATE (demme)-[:DIRECTED]->(philadelphia);
CREATE (nolan)-[:DIRECTED]->(inception);
CREATE (howard)-[:DIRECTED]->(daVinci);
CREATE (leitch)-[:DIRECTED]->(bTrain);
CREATE (steven)-[:DIRECTED]->(catche);
CREATE (alej)-[:DIRECTED]->(reven);
CREATE (george)-[:DIRECTED]->(madMax);
CREATE (fincher)-[:DIRECTED]->(seven);
CREATE (nolan)-[:DIRECTED]->(oppen);
CREATE (lorry)-[:DIRECTED]->(twoHalf);
CREATE (otto)-[:DIRECTED]->(pBlinders);
CREATE (harper)-[:DIRECTED]->(pBlinders);
CREATE (colm)-[:DIRECTED]->(pBlinders);
CREATE (tim)-[:DIRECTED]->(pBlinders);
CREATE (caffrey)-[:DIRECTED]->(pBlinders);
CREATE (byrne)-[:DIRECTED]->(pBlinders);

// Filme que o usuário WATCHED e REVIEWED
MERGE
  (rafael)-[:WATCHED {data: date("2020-08-02"), avaliacao: 5.0}]->
  (philadelphia);
MERGE (rafael)-[:WATCHED {data: date("2020-10-23"), avaliacao: 4.5}]->(twoHalf);
MERGE
  (rafael)-[:WATCHED {data: date("2022-01-10"), avaliacao: 5.0}]->
  (pBlinders);
MERGE (rafael)-[:WATCHED {data: date("2022-07-21"), avaliacao: 4.0}]->(oppen);
MERGE
  (rafael)-[:WATCHED {data: date("2023-11-01"), avaliacao: 5.0}]->
  (inception);
MERGE (rafael)-[:WATCHED {data: date("2025-10-23"), avaliacao: 4.0}]->(bTrain);

MERGE (ozzy)-[:WATCHED {data: date("2021-02-21"), avaliacao: 5.0}]->(seven);
MERGE (ozzy)-[:WATCHED {data: date("2021-04-13"), avaliacao: 5.0}]->(pBlinders);
MERGE (ozzy)-[:WATCHED {data: date("2021-09-20"), avaliacao: 4.5}]->(daVinci);
MERGE (ozzy)-[:WATCHED {data: date("2024-10-23"), avaliacao: 4.0}]->(oppen);
MERGE (ozzy)-[:WATCHED {data: date("2024-11-03")}]->(inception);
MERGE (ozzy)-[:WATCHED {data: date("2025-10-11")}]->(bTrain);

MERGE (ronaldo)-[:WATCHED {data: date("2025-10-23"), avaliacao: 4.0}]->(bTrain);
MERGE (ronaldo)-[:WATCHED {data: date("2024-11-22"), avaliacao: 4.5}]->(madMax);
MERGE
  (ronaldo)-[:WATCHED {data: date("2022-10-17"), avaliacao: 5.0}]->
  (twoHalf);
MERGE
  (ronaldo)-[:WATCHED {data: date("2040-05-20"), avaliacao: 4.0}]->
  (catchme);

MERGE (slash)-[:WATCHED {data: date("2024-03-24")}]->(seven);
MERGE (slash)-[:WATCHED {data: date("2024-06-08")}]->(reven);
MERGE (slash)-[:WATCHED {data: date("2025-09-25")}]->(oppen);

MERGE (michael)-[:WATCHED {data: date("2020-08-21")}]->(twoHalf);
MERGE (michael)-[:WATCHED {data: date("2021-01-16")}]->(pBlinders);
MERGE (michael)-[:WATCHED {data: date("2022-05-10")}]->(madMax);
MERGE (michael)-[:WATCHED {data: date("2025-11-12")}]->(bTrain);
MERGE (michael)-[:WATCHED {data: date("2024-10-20")}]->(reven);

// Avaliações de Rafael (rafael001)
MERGE
  (review_rafael001_philadelphia:Review
    {
      rating: 5.0,
      recommend: true,
      comment: "Filme emocionante e bem dirigido",
      date: date("2020-08-02")
    });
MERGE (rafael)-[:REVIEWED]->(review_rafael001_philadelphia);
MERGE (review_rafael001_philadelphia)-[:ABOUT]->(philadelphia);

MERGE
  (review_rafael001_twoHalf:Review
    {
      rating: 4.5,
      recommend: true,
      comment: "Sitcom engraçada e inteligente",
      date: date("2020-10-23")
    });
MERGE (rafael)-[:REVIEWED]->(review_rafael001_twoHalf);
MERGE (review_rafael001_twoHalf)-[:ABOUT]->(twoHalf);

MERGE
  (review_rafael001_pBlinders:Review
    {
      rating: 5.0,
      recommend: true,
      comment: "Viciante",
      date: date("2022-01-10")
    });
MERGE (rafael)-[:REVIEWED]->(review_rafael001_pBlinders);
MERGE (review_rafael001_pBlinders)-[:ABOUT]->(pBlinders);

MERGE
  (review_rafael001_oppen:Review
    {
      rating: 4.0,
      recommend: true,
      comment: "Intenso e provocativo",
      date: date("2022-07-21")
    });
MERGE (rafael)-[:REVIEWED]->(review_rafael001_oppen);
MERGE (review_rafael001_oppen)-[:ABOUT]->(oppen);

MERGE
  (review_rafael001_inception:Review
    {
      rating: 5.0,
      recommend: true,
      comment: "Conceito incrível e visual impactante",
      date: date("2023-11-01")
    });
MERGE (rafael)-[:REVIEWED]->(review_rafael001_inception);
MERGE (review_rafael001_inception)-[:ABOUT]->(inception);

MERGE
  (review_rafael001_bTrain:Review
    {
      rating: 4.0,
      recommend: true,
      comment: "Divertido e cheio de ação",
      date: date("2025-10-23")
    });
MERGE (rafael)-[:REVIEWED]->(review_rafael001_bTrain);
MERGE (review_rafael001_bTrain)-[:ABOUT]->(bTrain);

// Avaliações de Ozzy (ozzy001)
MERGE
  (review_ozzy001_seven:Review
    {
      rating: 5.0,
      recommend: true,
      comment: "Sombrio e brilhante",
      date: date("2021-02-21")
    });
MERGE (ozzy)-[:REVIEWED]->(review_ozzy001_seven);
MERGE (review_ozzy001_seven)-[:ABOUT]->(seven);

MERGE
  (review_ozzy001_pBlinders:Review
    {
      rating: 5.0,
      recommend: true,
      comment: "Drama de época excelente",
      date: date("2021-04-13")
    });
MERGE (ozzy)-[:REVIEWED]->(review_ozzy001_pBlinders);
MERGE (review_ozzy001_pBlinders)-[:ABOUT]->(pBlinders);

MERGE
  (review_ozzy001_daVinci:Review
    {
      rating: 4.5,
      recommend: true,
      comment: "Intrigante e misterioso",
      date: date("2021-09-20")
    });
MERGE (ozzy)-[:REVIEWED]->(review_ozzy001_daVinci);
MERGE (review_ozzy001_daVinci)-[:ABOUT]->(daVinci);

MERGE
  (review_ozzy001_oppen:Review
    {
      rating: 4.0,
      recommend: false,
      comment: "Muito longo, mas interessante",
      date: date("2024-10-23")
    });
MERGE (ozzy)-[:REVIEWED]->(review_ozzy001_oppen);
MERGE (review_ozzy001_oppen)-[:ABOUT]->(oppen);

// Avaliações de Ronaldinho (ronaldo001)
MERGE
  (review_ronaldo001_bTrain:Review
    {
      rating: 4.0,
      recommend: true,
      comment: "Rápido e divertido",
      date: date("2025-10-23")
    });
MERGE (ronaldo)-[:REVIEWED]->(review_ronaldo001_bTrain);
MERGE (review_ronaldo001_bTrain)-[:ABOUT]->(bTrain);

MERGE
  (review_ronaldo001_madMax:Review
    {
      rating: 4.5,
      recommend: true,
      comment: "Visualmente impressionante",
      date: date("2024-11-22")
    });
MERGE (ronaldo)-[:REVIEWED]->(review_ronaldo001_madMax);
MERGE (review_ronaldo001_madMax)-[:ABOUT]->(madMax);

MERGE
  (review_ronaldo001_twoHalf:Review
    {
      rating: 5.0,
      recommend: true,
      comment: "Comédia clássica",
      date: date("2022-10-17")
    });
MERGE (ronaldo)-[:REVIEWED]->(review_ronaldo001_twoHalf);
MERGE (review_ronaldo001_twoHalf)-[:ABOUT]->(twoHalf);

MERGE
  (review_ronaldo001_catchme:Review
    {
      rating: 4.0,
      recommend: false,
      comment: "Bom, mas não memorável",
      date: date("2040-05-20")
    });
MERGE (ronaldo)-[:REVIEWED]->(review_ronaldo001_catchme);
MERGE (review_ronaldo001_catchme)-[:ABOUT]->(catchme);