const Post = require("../models/Post");
const PostList = require("../models/PostList");

const publicacao = new PostList();


const router = {

     addPostByUserID: (req, res) => {
        try {
            const { imagem, legenda, marcacao, musica, localizacao } = req.body;
            console.log(req.body);

            const newPost = new Post(imagem, legenda, marcacao, musica, localizacao);
            console.log(newPost);

            publicacao.addPostByUserID(newPost, req.params.id);

            res.status(200).json(newPost);

        } catch (error) {
            res.status(400).json({ message: "Post não pode ser criado" });
        }
    },
};

module.exports = router;