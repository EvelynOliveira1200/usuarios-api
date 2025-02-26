const express = require("express");
const router = express.Router();
const postController = require("../controllers/postController");

router.post("/posts", postController.addPostByUserID);


module.exports = router;