<div>
  <h1>Escopo do Projeto:</h1>
  <h3>
    <strong>1. Baixar uma base de dados.</strong>
  </h3>
  <p>O projeto será baseado na amostra aleatória de uma base de dados do <strong>Kaggle</strong>.

  <h3>
    <strong>2. Definir os tipos de nós (entidades principais)</strong>
  </h3>
  <p>Criar os seguintes nós com propriedades básicas:</p>
  <ul>
    <li><strong>User:</strong> nome, id, cidade</li>
    <li><strong>Music:</strong> título, ano, gênero</li>
    <li><strong>Album:</strong> título, ano, gênero</li>
    <li><strong>Artist:</strong> nome, gênero principal</li>
    <li><strong>Genre:</strong> nome do estilo (ex: rock, rap, hip-hop)</li>
  </ul>
  <h3>3. Definir os relacionamentos entre os nós</h3>
  <p>Conexões que representam ações ou vínculos:</p>

| Relacionamento     | Origem | Destino | Significado                                 |
| :----------------- | :----- | :------ | :------------------------------------------ |
| LISTENED           | User   | Music   | O usuário ouviu a música                    |
| LIKED              | User   | Music   | O usuário curtiu a música                   |
| ADDED_TO_FAVORITES | User   | Music   | O usuário adicionou à playlist de favoritos |
| FOLLOWED           | User   | Artist  | O usuário segue o artista                   |
| HAS_GENRE          | Music  | Genre   | A música pertence a um gênero               |
| PART_OF            | Music  | Album   | A música pertence a um álbum                |
| PERFORMED_BY       | Music  | Artist  | Quem canta ou toca a música                 |

<br>

<h3>4. Organizar os dados para entrada</h3>

- Usuários e seus IDs

- Músicas e seus atributos

- Artistas e seus gêneros

- Gêneros disponíveis

- Ações dos usuários (quem ouviu o quê, quem curtiu, quem segue quem)

<h3>5. Criar os nós no Arrows.app</h3>

- Crie visualmente os nós com seus labels (User, Music, etc.)

- Adicione propriedades básicas (ex: name, year, duration)

- Use cores diferentes para cada tipo de nó para facilitar a leitura

<h3>6. Adicionar os relacionamentos</h3>

- Usar setas com nomes como LISTENED, LIKED, FOLLOWED, etc.

- Garantir a direção correta (ex: User → LISTENED → Music)

- Um opcional é adicionar propriedades (ex: data da escuta, número de vezes)

<h3>7. Testar a estrutura</h3>
<p>Verificar se cada música tem:

- Um artista (PERFORMED_BY)

- Um gênero (HAS_GENRE)

- Um álbum (PART_OF)

<br>
Verificar se cada usuário tem:

- Músicas ouvidas (LISTENED)

- Músicas curtidas (LIKED)

- Artistas seguidos (FOLLOWED)

<h3>8. Preparar para recomendação</h3>

- Com base nos gêneros que o usuário mais ouve ou curte

- Com base nos artistas que ele segue

- Com base nas músicas semelhantes às que ele já escutou
</div>
