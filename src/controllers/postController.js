const Post = require("../models/Post");
const PostList = require("../models/PostList");

const publicacao = new PostList();

const router = {

    addPostByUserID: (req, res) => {
        try {
            const {  imagem, legenda, marcacao, musica, localizacao } = req.body;
            const newPost = new Post( imagem, legenda, marcacao, musica, localizacao);
            publicacao.addPostByUserID(newPost, req.params.id);
            res.status(200).json(newPost);
            
        } catch (error) {
            res.status(400).json({ message: "Post not created" });
        }
    },

    getAllPosts: (req, res) => {
        try {
            const posts = publicacao.getAllPosts();
            res.status(200).json(posts);
        } catch (error) {
            res.status(400).json({ message: "Posts Not Found" });
        }
    },

    getPostByID: (req, res) => {
        try {
            const id = req.params.id;
            res.status(200).json(publicacao.getPostByID(id));
        } catch (error) {
            res.status(404).json({ message: "Post not found" });
        }
    },

    updatePost: (req, res) => {
        try {
            const { legenda, marcacao } = req.body;

            if (!legenda && !marcacao) {
                throw new Error("No data to update");
            }

            res.status(200).json(publicacao.updatePost(req.params.id, req.body));
        } catch (error) {
            res.status(404).json({ message: "Post not updated" });
        }
    },

    deletePost: (req, res) => {
        try {
            const { id } = req.params;
            publicacao.deletePost(id);
            res.json({ message: "Post deleted" });
        } catch (error) {
            res.status(400).json({ message: "Post not deleted" });
        }
    },
};

module.exports = router;