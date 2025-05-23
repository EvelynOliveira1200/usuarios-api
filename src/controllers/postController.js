const postModels = require("../models/postModels");

const getAllPosts = async (req, res) => {
  try {
    const { description } = req.query;
    const posts = await postModels.getPosts(description);
    res.status(200).json(posts);
  } catch (error) {
    res.status(500).json({ message: "Erro ao buscar posts" });
  }
};

const getPost = async (req, res) => {
  try {
    const post = await postModels.getPostById(req.params.id);
    if (!post) {
      return res.status(404).json({ message: "Post não encontrado" });
    }
    res.status(200).json(post);
  } catch (error) {
    res.status(500).json({ message: "Erro ao buscar post" });
  }
};

const createPost = async (req, res) => {
  try {
    const { user_id, description, add_person, localization } = req.body;
    const photo = req.file ? req.file.filename : null;

    console.log("Arquivo recebido:", req.file); 

    const newPost = await postModels.createPost(
      user_id,
      description,
      add_person,
      localization,
      photo
    );
    res.status(201).json(newPost);
  } catch (error) {
    console.error("Erro ao criar post:", error); 
    res.status(500).json({ message: "Erro ao criar post" });
  }
};

const updatePost = async (req, res) => {
  try {
    const { id } = req.params;
    const { description, add_person } = req.body;
    const updatedPost = await postModels.updatePost(
      id,
      description,
      add_person
    );
    if (!updatedPost) {
      return res.status(404).json({ message: "Post não encontrado" });
    }
    res.status(200).json(updatedPost);
  } catch (error) {
    res.status(500).json({ message: "Erro ao atualizar post" });
  }
};

const deletePost = async (req, res) => {
  try {
    const deletedPost = await postModels.deletePost(req.params.id);
    res
      .status(200)
      .json({ message: "Post deletado com sucesso", post: deletedPost });
  } catch (error) {
    res.status(404).json({ message: "Post não encontrado" });
  }
};

module.exports = { getAllPosts, getPost, createPost, updatePost, deletePost };
