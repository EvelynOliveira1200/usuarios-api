const postModels = require("../models/postModels");

const getAllPosts = async (req, res) => {
    try {
        const { description } = req.query;
        const posts = await postModels.getPosts(description);
        res.status(200).json(posts);
    } catch (error) {
        res.status(500).json({ mensagem: "Erro ao buscar posts" });
    }
};

const getPost = async (req, res) => {
    try {
        const post = await postModels.getPostById(req.params.id);
        if (!post) {
            return res.status(404).json({ mensagem: "Post não encontrado" });
        }
        res.status(200).json(post);
    } catch (error) {
        res.status(500).json({ mensagem: "Erro ao buscar post" });
    }
};

const createPost = async (req, res) => {
    try {
        const { user_id, image, description, add_person, localization } = req.body;
        const newPost = await postModels.createPost(user_id, image, description, add_person, localization);
        res.status(201).json(newPost);
    } catch (error) {
        res.status(500).json({ mensagem: "Erro ao criar post" });
    }
};

const updatePost = async (req, res) => {
    try {
        const { id } = req.params;
        const { description, add_person } = req.body;
        const updatedPost = await postModels.updatePost(id, description, add_person);
        if (!updatedPost) {
            return res.status(404).json({ mensagem: "Post não encontrado" });
        }
        res.status(200).json(updatedPost);
    } catch (error) {
        res.status(500).json({ mensagem: "Erro ao atualizar post" });
    }
};

const deletePost = async (req, res) => {
    try {
        const deletedPost = await postModels.deletePost(req.params.id);
        res.status(200).json({ mensagem: "Post deletado com sucesso", post: deletedPost });
    } catch (error) {
        res.status(404).json({ mensagem: "Post não encontrado" });
    }
};

module.exports = { getAllPosts, getPost, createPost, updatePost, deletePost };