const express = require("express");
const router = express.Router();
const postController = require("../controllers/postController");
const upload = require("../config/upload");
const apiKeyMiddleware = require("../config/apiKey"); 

router.use(apiKeyMiddleware);
/**
 * @swagger
 * tags:
 *   name:  Posts
 *   description: Gerenciamento de Posts
 */

router.get("/posts", postController.getAllPosts);

router.get("/posts", postController.getAllPosts);
/**
 * @swagger
 * /api/posts:
 *   get:
 *     summary: Listar todos os posts
 *     tags: [Posts]
 *     parameters:
 *       - in: query
 *         name: localization
 *         schema:
 *           type: string
 *         description: Filtro por localização
 *     responses:
 *       200:
 *         description: Posts retornados com sucesso
 */

router.post("/posts", upload.single("photo"), postController.createPost);
/**
 * @swagger
 * /api/posts:
 *   post:
 *     summary: Cria um novo post
 *     tags: [Posts]
 *     requestBody:
 *       required: true
 *       content:
 *         multipart/form-data:
 *           schema:
 *             type: object
 *             properties:
 *               user_id:
 *                 type: number
 *               photo:
 *                 type: string
 *                 format: binary
 *               description:
 *                 type: string
 *               add_person:
 *                 type: string
 *               localization:
 *                 type: string
 *     responses:
 *       201:
 *         description: Post criado com sucesso
 */

router.get("/posts/:id", postController.getPost);
/**
 * @swagger
 * /api/posts/{id}:
 *   get:
 *     summary: Busca um post por ID
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Post encontrado
 *       404:
 *         description: Post não encontrado
 */

router.delete("/posts/:id", postController.deletePost);


/**
 * @swagger
 * /api/posts/{id}:
 *   delete:
 *     summary: Deleta um post
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     responses:
 *       200:
 *         description: Post deletado
 */

router.put("/posts/:id", postController.updatePost);
/**
 * @swagger
 * /api/posts/{id}:
 *   put:
 *     summary: Atualiza um post existente
 *     tags: [Posts]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               description:
 *                 type: string
 *               add_person:
 *                 type: string
 *     responses:
 *       200:
 *         description: Post atualizado com sucesso
 *       404:
 *         description: Post não encontrado
 */

module.exports = router;
