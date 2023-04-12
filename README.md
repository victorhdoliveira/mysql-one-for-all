## Projeto One For All

Neste projeto, foi necessário normalizar uma tabela que foi fornecida em um formato não normalizado para que ela atingisse a terceira forma normal. Depois disso, foram criadas as tabelas normalizadas e foram feitas consultas para juntar as informações dessas tabelas usando o método JOIN.

A normalização de uma tabela é um processo que busca reduzir a redundância de dados e evitar inconsistências no banco de dados. A terceira forma normal é um dos níveis de normalização mais utilizados e requer que todas as colunas de uma tabela estejam diretamente relacionadas com a chave primária, eliminando assim as redundâncias e as dependências transitivas.

<h3>Tabela não normalizada recebida</h3>

![Tabela não normalizada "Spotify Clone"](https://github.com/tryber/sd-025-b-mysql-one-for-all/blob/master/images/non-normalized-tables.png)

<h3>Banco de dados desenvolvido</h3>

![one-for-all](https://user-images.githubusercontent.com/106452876/218260257-b96b5af2-c8a4-4423-b552-575c897a0650.png)

## Tecnologias
* Docker
* docker-compose
* SQL
* MySQL
* Workbench

## Instalando Dependências
Clone o repositório do GitHub

```javascript
 git clone git@github.com:victorhdoliveira/mysql-one-for-all.git
```

### Com Docker
> Backend

1. Rode os serviços node e db com o seguinte comando: 
```bash
docker-compose up -d
``` 

2. Abra o terminal interativo do container: 
```bash
docker exec -it one_for_all bash
``` 

3. Instale as dependências dentro do container: 
```bash
npm install
``` 
> Testes

4. Dentro do terminal do container:
```bash
npm test
``` 

:warning: Atenção: O git dentro do container não vem configurado com suas credenciais;

### Sem Docker

Instale as dependências
```bash
npm install
``` 
