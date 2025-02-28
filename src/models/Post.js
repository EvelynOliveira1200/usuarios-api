const { v4: uuid4 } = require("uuid");

class Post {
    constructor(userID, imagem, legenda, marcacao, musica, localizacao) {
        this.id = uuid4();
        this.userID= userID;
        this.imagem = imagem;
        this.legenda = legenda;
        this.marcacao = marcacao;
        this.musica = musica;
        this.localizacao = localizacao;
        this.createdAt = new Date();
    }
}

module.exports = Post;