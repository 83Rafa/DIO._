MERGE
  (Rafael:User
    {
      user_id: "#00001",
      user_name: "rafa_ss",
      name: "Rafael S Silva",
      email: "rafael@mail.com",
      dob: "1990-03-15",
      joined: "2020-01-25",
      last_active: "2025-10-30",
      gender: "male",
      country: "Brazil",
      is_verified: false,
      privacy_level: "private"
    })

MERGE
  (Slash:User:Musician
    {
      user_id: "#00002",
      user_name: "gnr_slash",
      name: "Saul 'Slash' Hudson",
      email: "slash@mail.com",
      dob: "1965-07-23",
      joined: "2010-08-14",
      last_active: "2025-10-29",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Axl:User:Musician
    {
      user_id: "#00003",
      user_name: "gnr_axl",
      name: "W. Axl Rose",
      email: "axl@mail.com",
      dob: "1962-02-06",
      joined: "2008-08-20",
      last_active: "2025-10-28",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Lemmy:User:Musician
    {
      user_id: "#00004",
      user_name: "motor_lemmy",
      name: "Ian Fraser Kilmister",
      email: "lemmy@mail.com",
      dob: "1945-12-24",
      joined: "2020-02-12",
      last_active: "2025-10-01",
      gender: "male",
      country: "United Kingdom",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Dio:User:Musician
    {
      user_id: "#00005",
      user_name: "ronnie_j_dio",
      name: "Ronnie James Dio",
      email: "dio@mail.com",
      dob: "1942-07-10",
      joined: "2009-02-05",
      last_active: "2010-05-16",
      gender: "male",
      country: "USA",
      is_verified: false,
      privacy_level: "public"
    })

MERGE
  (Jordan:User:Athlete
    {
      user_id: "#00006",
      user_name: "jordan_m",
      name: "Michael Jeffrey Jordan",
      email: "jordan@mail.com",
      dob: "1963-02-17",
      joined: "2012-02-12",
      last_active: "2025-10-30",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Lewis:User:Athlete
    {
      user_id: "#00007",
      user_name: "h_lewis",
      name: "Sir Lewis Carl Davidson Hamilton MBE HonFREng Kt",
      email: "lewis@mail.com",
      dob: "1985-01-07",
      joined: "2016-10-18",
      last_active: "2025-10-29",
      gender: "male",
      country: "United Kingdom",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Tom:User:Artist
    {
      user_id: "#00008",
      user_name: "cruise_tom",
      name: "Thomas Cruise Mapother IV",
      email: "tom@mail.com",
      dob: "1962-07-03",
      joined: "2017-10-23",
      last_active: "2025-10-27",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Obama:User:Politician
    {
      user_id: "#00009",
      user_name: "obama_b",
      name: "Barack Hussein Obama II",
      email: "obama@mail.com",
      dob: "1961-08-04",
      joined: "2015-11-28",
      last_active: "2025-10-21",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Jones:User:Fighter
    {
      user_id: "#00010",
      user_name: "jonjones",
      name: "Jonathan Dwight Jones",
      email: "jones@mail.com",
      dob: "1987-07-19",
      joined: "2018-11-10",
      last_active: "2025-10-20",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "private"
    })

MERGE
  (Joao:User
    {
      user_id: "#00011",
      user_name: "s_joao",
      name: "João Pedo Alberto",
      email: "joao@mail.com",
      dob: "1990-03-11",
      joined: "2020-11-30",
      last_active: "2025-09-30",
      gender: "male",
      country: "Portugal",
      is_verified: false,
      privacy_level: "private"
    })

MERGE
  (Clara:User
    {
      user_id: "#00012",
      user_name: "clara_p",
      name: "Clara Aparecida Santos",
      email: "clara@mail.com",
      dob: "1989-06-10",
      joined: "2020-12-13",
      last_active: "2025-10-30",
      gender: "female",
      country: "Brazil",
      is_verified: false,
      privacy_level: "private"
    })

MERGE
  (Borat:User
    {
      user_id: "#00013",
      user_name: "m_borat",
      name: "Borat Sagdiyev",
      email: "borat@mail.com",
      dob: "1977-02-24",
      joined: "2020-12-21",
      last_active: "2025-08-20",
      gender: "male",
      country: "Cazaquistão",
      is_verified: false,
      privacy_level: "private"
    })

MERGE
  (Paty:User
    {
      user_id: "#00014",
      user_name: "paty_p",
      name: "Patricia Souza",
      email: "pati@mail.com",
      dob: "1997-08-15",
      joined: "2020-12-24",
      last_active: "2025-06-30",
      gender: "female",
      country: "Brazil",
      is_verified: false,
      privacy_level: "private"
    })

MERGE
  (Maria:User
    {
      user_id: "#00015",
      user_name: "mariasilva",
      name: "Maria Josefa",
      email: "maria@mail.com",
      dob: "1992-11-10",
      joined: "2020-12-30",
      last_active: "2025-10-30",
      gender: "female",
      country: "Portugal",
      is_verified: false,
      privacy_level: "private"
    })

MERGE
  (Pedro:User
    {
      user_id: "#00016",
      user_name: "pedroh",
      name: "Pedro Henrique Silva",
      email: "pedro@mail.com",
      dob: "1990-05-18",
      joined: "2021-08-18",
      last_active: "2025-10-28",
      gender: "male",
      country: "Brazil",
      is_verified: false,
      privacy_level: "private"
    })

MERGE
  (Bruce:User:Musician
    {
      user_id: "#00017",
      user_name: "d_bruce",
      name: "Paul Bruce Dickinson",
      email: "bruce@mail.com",
      dob: "1958-08-07",
      joined: "2020-09-17",
      last_active: "2025-10-28",
      gender: "male",
      country: "United Kingdom",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (James:User:Musician
    {
      user_id: "#00018",
      user_name: "h_james",
      name: "James Alan Hetfield",
      email: "pedro@mail.com",
      dob: "1963-08-03",
      joined: "2014-10-19",
      last_active: "2025-10-25",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Whinderson:User:Influencer:Comedian
    {
      user_id: "#00019",
      user_name: "whinderson",
      name: "Whindersson Nunes Batista",
      email: "whinderson@mail.com",
      dob: "1995-01-05",
      joined: "2015-12-15",
      last_active: "2022-10-26",
      gender: "male",
      country: "Brazil",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Ronaldo:User:Athlete:Influencer
    {
      user_id: "#00020",
      user_name: "rnazario",
      name: "Ronaldo Luís Nazário de Lima",
      email: "ronaldo@mail.com",
      dob: "1976-09-18",
      joined: "2016-05-11",
      last_active: "2025-10-29",
      gender: "male",
      country: "Brazil",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Angelina:User:Artist
    {
      user_id: "#00021",
      user_name: "angelina",
      name: "Angelina Jolie Voight",
      email: "angelina@mail.com",
      dob: "1975-06-04",
      joined: "2023-10-16",
      last_active: "2025-09-18",
      gender: "female",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Charlize:User:Artist
    {
      user_id: "#00022",
      user_name: "charlize",
      name: "Charlize Theron",
      email: "charlize@mail.com",
      dob: "1975-08-07",
      joined: "2023-11-10",
      last_active: "2025-10-23",
      gender: "female",
      country: "South-Africa",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Michelle:User:Artist
    {
      user_id: "#00023",
      user_name: "r_michelle",
      name: "Mayte Michelle Rodriguez",
      email: "michelle_r@mail.com",
      dob: "1978-17-12",
      joined: "2013-10-21",
      last_active: "2024-12-20",
      gender: "female",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Brian:User:Artist
    {
      user_id: "#00024",
      user_name: "oconnorb",
      name: "Brian O' Connor",
      email: "brian@mail.com",
      dob: "1973-09-12",
      joined: "2010-05-21",
      last_active: "2013-11-30",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Toretto:User:Artist
    {
      user_id: "#00025",
      user_name: "toretto",
      name: "Dominic 'Dom' Toretto",
      email: "toretto@mail.com",
      dob: "1967-07-18",
      joined: "2013-12-10",
      last_active: "2025-10-20",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Lebron:User
    {
      user_id: "#00026",
      user_name: "lebron_j",
      name: "LeBron Raymone James",
      email: "lebron@mail.com",
      dob: "1984-12-30",
      joined: "2012-06-11",
      last_active: "2025-10-29",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Kobi:User:Athlete
    {
      user_id: "#00027",
      user_name: "bryant_k",
      name: "Kobe Bean Bryant",
      email: "bryant@mail.com",
      dob: "1978-08-23",
      joined: "2016-03-17",
      last_active: "2020-01-26",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Iverson:User:Athlete
    {
      user_id: "#00028",
      user_name: "allen_i",
      name: "Allen Ezail Iverson",
      email: "iverson@mail.com",
      dob: "1975-06-07",
      joined: "2013-04-11",
      last_active: "2025-10-18",
      gender: "male",
      country: "USA",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Ozzy:User:Musician
    {
      user_id: "#00029",
      user_name: "o_osbourn",
      name: "John Michael 'Ozzy' Osbourne",
      email: "osbourn@mail.com",
      dob: "1948-12-03",
      joined: "2011-02-10",
      last_active: "2025-07-22",
      gender: "male",
      country: "United Kingdom",
      is_verified: true,
      privacy_level: "public"
    })

MERGE
  (Aldo:User:Fighter
    {
      user_id: "#00030",
      user_name: "j_aldo",
      name: "José Aldo da Silva Oliveira Júnior",
      email: "j_aldo@mail.com",
      dob: "1986-09-09",
      joined: "2019-01-15",
      last_active: "2025-10-19",
      gender: "male",
      country: "Brazil",
      is_verified: true,
      privacy_level: "public"
    })

MERGE (Rafael)-[:FOLLOWS {date: "2020-11-09"}]->(Slash)
MERGE (Rafael)-[:FOLLOWS {date: "2020-11-09"}]->(Axl)
MERGE (Rafael)-[:FOLLOWS {date: "2021-01-05"}]->(Lemmy)
MERGE (Rafael)-[:FOLLOWS {date: "2021-08-10"}]->(Lewis)
MERGE (Rafael)-[:FOLLOWS {date: "2020-01-10"}]->(Michael)
MERGE (Rafael)-[:FOLLOWS {date: "2021-11-02"}]->(Tom)
MERGE (Rafael)-[:FOLLOWS {date: "2021-10-28"}]->(Jordan)
MERGE (Rafael)-[:FOLLOWS {date: "2020-02-27"}]->(Kobi)
MERGE (Rafael)-[:FOLLOWS {date: "2020-02-27"}]->(Lebron)
MERGE (Rafael)-[:FOLLOWS {date: "2021-04-06"}]->(Charlize)
MERGE (Rafael)-[:FOLLOWS {date: "2021-07-13"}]->(Angelina)
MERGE (Rafael)-[:FOLLOWS {date: "2022-05-10"}]->(James)
MERGE (Rafael)-[:FOLLOWS {date: "2020-03-11"}]->(Whinderson)

MERGE (Joao)-[:FOLLOWS {date: "2022-12-10"}]->(Jordan)
MERGE (Joao)-[:FOLLOWS {date: "2023-01-03"}]->(James)
MERGE (Joao)-[:FOLLOWS {date: "2023-10-10"}]->(Kobi)
MERGE (Joao)-[:FOLLOWS {date: "2023-05-07"}]->(Iverson)
MERGE (Clara)-[:FOLLOWS {date: "2021-01-01"}]->(Angelina)
MERGE (Clara)-[:FOLLOWS {date: "2021-01-01"}]->(Charlize)
MERGE (Clara)-[:FOLLOWS {date: "2021-02-10"}]->(Michelle)
MERGE (Paty)-[:FOLLOWS {date: "2020-12-24"}]->(Tom)
MERGE (Paty)-[:FOLLOWS {date: "2021-03-04"}]->(Borat)
MERGE (Paty)-[:FOLLOWS {date: "2021-05-01"}]->(Toretto)

MERGE (Pedro)-[:FOLLOWS {date: "2021-05-01"}]->(Ronaldo)
MERGE (Pedro)-[:FOLLOWS {date: "2021-05-02"}]->(Aldo)
MERGE (Pedro)-[:FOLLOWS {date: "2022-01-11"}]->(Jones)
MERGE (Pedro)-[:FOLLOWS {date: "2022-01-23"}]->(Michael)
MERGE (Pedro)-[:FOLLOWS {date: "2022-01-24"}]->(Kobi)
MERGE (Pedro)-[:FOLLOWS {date: "2022-02-23"}]->(Lebron)
MERGE (Pedro)-[:FOLLOWS {date: "2023-01-03"}]->(Iverson)
MERGE (Maria)-[:FOLLOWS {date: "2021-01-10"}]->(Borat)
MERGE (Borat)-[:FOLLOWS {date: "2020-12-25"}]->(Obama)

MERGE (Axl)-[:FOLLOWS {date: "2008-11-12"}]->(Lemmy)
MERGE (Axl)-[:FOLLOWS {date: "2021-04-06"}]->(Ozzy)
MERGE (Axl)-[:FOLLOWS {date: "2014-08-03"}]->(James)
MERGE (Axl)-[:FOLLOWS {date: "2020-04-06"}]->(Lemmy)
MERGE (Axl)-[:FOLLOWS {date: "2009-03-01"}]->(Dio)
MERGE (Slash)-[:FOLLOWS {date: "2025-10-10"}]->(Jones)
MERGE (Slash)-[:FOLLOWS {date: "2020-05-05"}]->(Michael)
MERGE (Slash)-[:FOLLOWS {date: "2020-08-02"}]->(James)
MERGE (Slash)-[:FOLLOWS {date: "2016-02-02"}]->(Obama)
MERGE (Slash)-[:FOLLOWS {date: "2020-09-21"}]->(Bruce)

MERGE (Obama)-[:FOLLOWS {date: "2018-05-20"}]->(Tom)
MERGE (Obama)-[:FOLLOWS {date: "2018-12-05"}]->(Jones)
MERGE (Obama)-[:FOLLOWS {date: "2018-01-09"}]->(Lebron)
MERGE (Obama)-[:FOLLOWS {date: "2023-08-16"}]->(Charlize)
MERGE (Obama)-[:FOLLOWS {date: "2016-10-02"}]->(Ronaldo)
MERGE (Lemmy)-[:FOLLOWS {date: "2020-02-12"}]->(Bruce)
MERGE (Lemmy)-[:FOLLOWS {date: "2020-02-15"}]->(James)
MERGE (Lemmy)-[:FOLLOWS {date: "2020-04-01"}]->(Obama)
MERGE (Lemmy)-[:FOLLOWS {date: "2020-08-05"}]->(Lewis)
MERGE (Lemmy)-[:FOLLOWS {date: "2020-10-08"}]->(Jones)

MERGE (Jones)<-[:FOLLOWS {date: "2025-08-15"}]-(Lewis)
MERGE (Michael)<-[:FOLLOWS {date: "2024-06-02"}]-(Obama)
MERGE (Dio)<-[:FOLLOWS {date: "2020-07-01"}]-(Rafael)

MERGE (Slash)-[:FRIENDS_WITH {date: "2018-07-19"}]->(Axl)
MERGE (Slash)-[:FRIENDS_WITH {date: "2020-03-02"}]->(Lemmy)
MERGE (Slash)-[:FRIENDS_WITH {date: "2020-10-05"}]->(Bruce)
MERGE (Slash)-[:FRIENDS_WITH {date: "2014-10-25"}]->(James)
MERGE (Slash)-[:FRIENDS_WITH {date: "2010-08-25"}]->(Dio)

MERGE (Lewis)-[:FRIENDS_WITH {date: "2024-06-01"}]->(Obama)
MERGE (Lewis)-[:FRIENDS_WITH {date: "2021-10-25"}]->(Tom)

MERGE (Michael)-[:FRIENDS_WITH {date: "2021-10-21"}]->(Lewis)
MERGE (Michael)-[:FRIENDS_WITH {date: "2016-03-23"}]->(Kobi)
MERGE (Michael)-[:FRIENDS_WITH {date: "2013-05-07"}]->(Iverson)

MERGE (Iverson)-[:FRIENDS_WITH {date: "2016-09-09"}]->(Ronaldo)
MERGE (Iverson)-[:FRIENDS_WITH {date: "2016-03-18"}]->(Kobi)

MERGE (Ronaldo)-[:FRIENDS_WITH {date: "2019-05-26"}]->(Aldo)
MERGE (Ronaldo)-[:FRIENDS_WITH {date: "2016-10-22"}]->(Lewis)
MERGE (Ronaldo)-[:FRIENDS_WITH {date: "2017-07-11"}]->(Lebron)
MERGE (Ronaldo)-[:FRIENDS_WITH {date: "2016-05-15"}]->(Whinderson)

MERGE (Jones)-[:FRIENDS_WITH {date: "2019-12-20"}]->(Aldo)
MERGE (Jones)-[:FRIENDS_WITH {date: "2020-03-23"}]->(Kobi)

MERGE (Toretto)-[:FRIENDS_WITH {date: "2013-12-10"}]->(Brian)
MERGE (Toretto)-[:FRIENDS_WITH {date: "2013-12-10"}]->(Michelle)
MERGE (Toretto)-[:FRIENDS_WITH {date: "2023-12-12"}]->(Charlize)
MERGE (Michelle)-[:FRIENDS_WITH {date: "2013-12-21"}]->(Brian)
MERGE (Michelle)-[:FRIENDS_WITH {date: "2023-12-02"}]->(Charlize)
MERGE (Tom)-[:FRIENDS_WITH {date: "2023-07-05"}]->(Angelina)

MERGE (Obama)-[:WROTE {date: "2024-10-10"}]->(posts);
MERGE
  (posts:Post
    {
      posts_id: "P#K1!A01",
      timestamp: "2024-10-10",
      text: "Precisamos lutar pelo planeta"
    })

MERGE
  (n11:Comment {comment_id: "#C0001", text: "Trabalhando a mente das pessoas"})

MERGE (n12:Comment {comment_id: "#C0002", text: "Para ontem"})

MERGE
  (Compartilhar:Shared
    {shared_id: "#S001", text: "Olha isso, Lemmy", date: "2024-10-28"})

MERGE (Slash)-[:LIKED {date: "2024-10-12"}]->(posts)
MERGE (Axl)-[:LIKED {date: "2024-10-13"}]->(posts)
MERGE (Pedro)-[:LIKED {date: "2024-10-13"}]->(posts)
MERGE (Maria)-[:LIKED {date: "2024-10-14"}]->(posts)
MERGE (Paty)-[:LIKED {date: "2024-10-111"}]->(posts)
MERGE (Toretto)-[:LIKED {date: "2024-10-12"}]->(posts)
MERGE (Lewis)-[:LIKED {date: "2024-10-10"}]->(posts)
MERGE (Jones)-[:LIKED {date: "2024-10-15"}]->(posts)
MERGE (Michael)-[:LIKED {date: "2024-10-20"}]->(posts)

MERGE (Lewis)-[:COMMENTED {date: "2024-10-10"}]->(n11)
MERGE (n11)-[:ON]->(posts)
MERGE (Jones)-[:COMMENTED {date: "2024-10-15"}]->(n12)
MERGE (n12)-[:ON]->(posts)

MERGE (Rafael)-[:LIKED {date: "2024-10-15"}]->(n11)
MERGE (Aldo)-[:LIKED {date: "2024-10-25"}]->(n11)
MERGE (Jones)-[:LIKED {date: "2024-10-15"}]->(n11)
MERGE (Tom)-[:LIKED {date: "2024-10-20"}]->(n12)
MERGE (Slash)-[:SHARED {date: "2024-10-28"}]->(Compartilhar)
MERGE (Compartilhar)-[:OF]->(posts)
MERGE (Compartilhar)-[:TO]->(Lemmy)