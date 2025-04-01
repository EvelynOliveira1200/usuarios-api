const Post = require("../models/Post");
const PostList = require("../models/postModels");

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
            const { userID, imagem, legenda, marcacao, musica, localizacao } = req.body;

            if (!userID || !imagem) {
                throw new Error("Preencha os campos obrigatórios!");
            }

            const newPost = new Post(userID, imagem, legenda, marcacao, musica, localizacao);
            publicacao.addPost(newPost);

            res.status(201).json({ message: "Post adicionado com sucesso!", newPost });

        } catch (error) {
            res.status(400).json({ message: "Erro ao adicionar post. Tente novamente!", error });
        }
    },

    getPostById: (req, res) => {
        try {
            const id = req.params.id;
            console.log("Buscando post com ID:", id);

            const post = publicacao.getPostById(id);
            if (!post) throw new Error("Post não encontrado");

            res.json(post);
        } catch (error) {
            res.status(404).json({ message: error.message });
        }
    },

    updatePost: (req, res) => {
        try {
            res.status(200).json(publicacao.updatePost(req.params.id, req.body));
        } catch (error) {
            res.status(404).json({
                message: "Erro ao atualizar conteúdo do post",
                error: error.message,
            });
        }
    },

    deletePost: (req, res) => {
        try {
            const id = req.params.id;
            publicacao.deletePost(id);
            res.status(200).json({ message: "Post deletado com sucesso!" });
        } catch (error) {
            res.status(404).json({ message: "Erro ao deletar", error: error.message });
        }
    }
};

module.exports = router;