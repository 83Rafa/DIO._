<div>
    <h1>
        Explorando IA Generativa em um Pipeline de ETL com Python
    </h1>
    <p>Consumir os dados da API da Santander Dev Week 2023 e enviar mensagens personalizadas a "clientes" através da API do ChatGPT</p>
    <p>Reprodução do Projeto feito pelo expert.</p>
    <h3>Projeto Repaginado</h3>
    <p>Para uma abordagem diferente foi realizada um a requisição <strong>GET</strong> de todos os usuários para poder analisar os dados até então enviados.</p>
    <p>A <strong>ETL</strong> foi realizada da seguinte maneira:</p>
    <p><strong>Extract</strong></p>
    <ol>
        <li>A Extração dos dados da API e conversão em uma tabela CSV.</li>
    </ol>
    <p><strong>Tranform</strong></p>
    <ul>
        <li>Desmembramento da coluna <i>account</i> em <i>"id", "account_number", "account_digit", "agency", "balance" e "limit"</li>
        <li>Desmembramento da coluna <i>"card"</i> em "card_id", "card_number", e "card_limit"</li>
        <li>Remoção de dados estranhos às colunas de "acc_number", "acc_digit", "agency" e "card_number</li>
        <li>Preenchimento de dados nulos nas colunas "account_number' e "digit"</li>
        <li>Foi realizado um teste para envio de mensagens para 3 <i>'users'</i>. No caso os 3 usuários com saldo bancário acima de 100.000.</li>
        <p>O ChatGPT da versão <strong>"gpt-3.5-turbo"</strong> limita o envio de 3 mensagens a cada 3 minitos. A função <i>sleep()</i> do pacote nativo do python <strong>Time</strong> poderia automatizar o envio para mais usuários caso fosse necessário.
        <li>Para gerar o filtro de ids foi criada a função <i>"extract_ids_and_names"</i> quer retorna a lista de usuários que se encaixa no perfil desejado.</li>
    </ul>
    <p><strong>Load</strong></p>
    <p>A partir desse pronto, com os ids desejados em mãos, o código do expert foi aproveitado tanto para buscar as informações dos usuários em formato <stront>JSON</strong> da API da <strong>Santander Dev Week</strong> quanto para acessar a API do <strong>ChatGPT</strong> e enviar as mensagens personalizadas.</p>
    <p>Também foram gerados um arquivo CSV de uma tabela com os dados tratados e outra tabela apenas com os 3 clientes que receberam as mensagens.</p>
</div>