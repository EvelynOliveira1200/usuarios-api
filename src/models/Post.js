const { v4: uuid4 } = require("uuid");
const User = require("./User");

class Post {
    constructor(imagem, legenda, marcacao, musica, localizacao
    ) {
        this.id.user = uuid4();
        this.userID = User.id;
        this.imagem = imagem;
        this.legenda = legenda;
        this.marcacao = marcacao;
        this.musica = musica;
        this.localizacao = localizacao;
        this.createdAt = new Date();
    }
}

module.exports = Post;