const express = require("express");
const router = express.Router();
const postController = require("../controllers/postController");


router.get("/post/:id", postController.getPostById);
router.post("/posts", postController.addPostByUserId);
router.put("/posts/:id", postController.updatePost);
router.get("/posts", postController.getAllPosts);

module.exports = router;