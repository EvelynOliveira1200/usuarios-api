const pool = require("../config/database");

const getPosts = async (description) => {
  if (!description) {
    const result = await pool.query(`SELECT posts.*, users.name AS usuario 
            FROM posts 
            LEFT JOIN users 
            ON posts.user_id = users.id`);
    return result.rows;
  } else {
    const result = await pool.query(
      `SELECT posts.*, users.name AS usuario 
            FROM posts 
            LEFT JOIN users ON posts.user_id = users.id 
            WHERE posts.description ILIKE $1`,
      [`%${description}%`]
    );
    return result.rows;
  }
};

const getPostById = async (id) => {
  const result = await pool.query(
    `SELECT posts.id, posts.image, posts.description, posts.add_person, posts.localization, 
        users.name AS usuario 
        FROM posts 
        LEFT JOIN users 
        ON posts.user_id = users.id 
        WHERE posts.id = $1`,
    [id]
  );
  return result.rows[0];
};

const createPost = async (
  user_id,
  description,
  add_person,
  localization,
  photo
) => {
  const result = await pool.query(
    `INSERT INTO posts (user_id, description, add_person, localization, photo) 
        VALUES ($1, $2, $3, $4, $5) RETURNING *`,
    [user_id, description, add_person, localization, photo]
  );
  return result.rows[0];
};

const updatePost = async (id, description, add_person) => {
  const result = await pool.query(
    `UPDATE posts 
        SET description = $1, add_person = $2 
        WHERE id = $3 RETURNING *`,
    [description, add_person, id]
  );
  return result.rows[0];
};

const deletePost = async (id) => {
  const result = await pool.query(
    `DELETE FROM posts 
        WHERE id = $1 RETURNING *`,
    [id]
  );
  if (result.rowCount === 0) {
    throw new Error("Post not found");
  }
  return result.rows[0];
};

module.exports = { getPosts, getPostById, createPost, updatePost, deletePost };
