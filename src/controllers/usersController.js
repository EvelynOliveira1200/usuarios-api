const User = require('../models/User');
const UserList = require('../models/UserList');
const lista = new UserList();

lista.addUser(new User('João', 'joão@gmail.com', 25));
lista.addUser(new User('Maria', 'maria@gmail.com', 30));
lista.addUser(new User('José', 'josé@gmail.com', 35));

const router = {
    getAllUsers: (req, res) => {
        try {
            const users = lista.getAllUsers();
            res.status(200).json(users);          
        } catch (error) {
            res.status(404).json({ message: "Nehum usuário cadastrado", error });
        }
    },

    getUserById: (req, res) => {
        try {
            res.json(lista.getUserById(req.params.id));
        } catch (error) {
            res.status(404).json({ message: "Usuário não encontrado", error });
        }
    },

    addUser: (req, res) => {
        try {
            const { name, email, age } = req.body;
            if (!name || !email || age == undefined) {
                throw new Error("Todos os campos são obrigatórios");
            }
            const newUser = new User(name, email, age);
            lista.addUser(newUser);
            res.status(201).json({ message: "Usuário adicionado com sucesso", user: newUser });
        } catch (error) {
            res.status(400).json({ message: error.message, error });
        }
    },

    updateUser: (req, res) => {
        try {
            res.status(200).json(lista.updateUser(req.params.id, req.body));
            console.log(lista)
        } catch (error) {
            res.status(404).json({ message: "Erro ao atualizar o usuário", error });
        }
    },


    deleteUser: (req, res) => {
        lista.deleteUser(req.params.id);
        res.status(200).json({ message: "Usuário deletado com sucesso" });
    }
}

module.exports = router;