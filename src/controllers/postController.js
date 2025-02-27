const Post = require("../models/Post");
const PostList = require("../models/PostList");

const publicacao = new PostList();

const post = new Post("123", "imagem", "legenda", "marcacao", "musica", "localizacao");
publicacao.addPost(post);

const router = {
    getAllPosts: (req, res) => {
        try {
            const posts = publicacao.getAllPosts();
            res.status(200).json(posts);          
        } catch (error) {
            res.status(404).json({ message: "Nehum post cadastrado", error });
        }
    },
    
    addPostByUserId: (req, res) => {
        try {
            const {userID, imagem, legenda, marcacao, musica, localizacao } = req.body;

            if (!userID || !imagem ) {
                throw new Error("Preencha os campos obrigatórios!");
            }

            const newPost = new Post(userID, imagem, legenda, marcacao, musica, localizacao);
            publicacao.addPost(newPost);

            res.status(201).json({ message: "Post adicionado com sucesso!", newPost });

        } catch (error) {
            res.status(400).json({ message: "Erro ao adicionar post. Tente novamente!", error });
        }
    },

    //erro a partir daqui

    getPostById: (req, res) => {
        try {
            res.json(publicacao.getPostById(req.params.id));
            console.log(publicacao);
        } catch (error) {
            res.status(404).json({ message: "Post não encontrado", error });
        }
    },

    updatePost: (req, res) => {
        try {
            res.status(200).json(lista.updatePost(req.params.id, req.body));
        } catch (error) {
            res.status(404).json({
                message: "Erro ao atualizar",
                error: error.message,
            });
        }
    },
};

module.exports = router;