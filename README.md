# Flask Books App - Docker

Este é um aplicativo Flask para gerenciamento de livros, que pode ser executado facilmente usando Docker.

## 🚀 Como rodar com Docker

### 1️⃣ **Clonar o repositório**
Se ainda não clonou o projeto, faça isso primeiro:
```sh
git clone https://github.com/juliocesar014/docker-pos.git
cd docker-pos
```


### 2️⃣ **Executar com MAKEFILE**
Para rodar a aplicação com o makefile, execute os comandos abaixo:

```sh
make build
````

```sh
make run
```

### 3️⃣ **Executar o container diretamente do Docker Hub**
Para rodar a aplicação sem precisar construir a imagem manualmente:
```sh
docker run -p 5000:5000 juliocesar014/docker-pos:1.0.0 
```

### 4️⃣ **Construir a imagem Docker manualmente**
Caso queira construir a imagem a partir do código-fonte:
```sh
docker build -t docker-pos .
```

### 5️⃣ **Rodar o container localmente**
```sh
docker run -p 5000:5000 docker-pos
```

### 6️⃣ **Acessar a aplicação**
Abra o navegador e acesse:
```
http://127.0.0.1:5000/
```

## 🛠️ **Personalizações**
Se quiser rodar o container em modo interativo ou fazer modificações:
```sh
docker run -it -p 5000:5000 docker-pos /bin/bash
```

## 📌 **Notas**
- Certifique-se de que a porta 5000 não está sendo usada por outro serviço.
- Se precisar reconstruir a imagem após alterações, execute:
  ```sh
  docker build --no-cache -t flask-books-app .
  ```

---
Agora seu aplicativo Flask está rodando em um container Docker! 🚀
