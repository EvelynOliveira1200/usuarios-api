const userModels = require("../models/userModels");

const getAllUsers = async (req, res) => {
  try {
    const users = await userModels.getUsers();
    res.status(200).json(users);
  } catch (error) {
    res.status(404).json({ message: "Erro ao buscar usuários" });
  }
};

const getUserById = async (req, res) => {
  try {
    const user = await userModels.getUserById(req.params.id);
    if (!user) {
      res.status(404).json({ message: "Usuário não encontrado" });
    }
    res.status(200).json(user);
  } catch (error) {
    res.status(404).json({ message: "Erro ao buscar usuário" });
  }
};

const createUser = async (req, res) => {
  try {
    const { name, email } = req.body;
    const photo = req.file ? req.file.filename : null;
    const newUser = await userModels.createUser(name, email, photo);
    res.status(201).json(newUser);
  } catch (error) {
    console.log(error);
    if (error.code === "23505") {
      res.status(400).json({ message: "Email já cadastrado" });
    }
    res.status(404).json({ message: "Erro ao criar usuário" });
  }
};

const updateUser = async (req, res) => {
  try {
    const { name, email } = req.body;
    const updateUser = await userModels.updateUser(req.params.id, name, email);
    if (!updateUser) {
      res.status(404).json({ message: "Usuário não encontrado" });
    }
    res.json(updateUser);
  } catch (error) {
    res.status(404).json({ message: "Erro ao atualizar usuário" });
  }
};

const deleteUser = async (req, res) => {
  try {
    const mensagem = await userModels.deleteUser(req.params.id);
    res.json(mensagem);
  } catch (error) {
    res.status(404).json({ message: "Erro ao deletar usuário" });
  }
};

module.exports = {
  getAllUsers,
  getUserById,
  createUser,
  updateUser,
  deleteUser,
};
