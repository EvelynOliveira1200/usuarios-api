const express = require("express");
const cors = require("cors");
const userRoutes = require("./src/routes/usersRoutes"); 
const postRoutes = require("./src/routes/postRoutes");
const reportRoutes = require("./src/routes/reportRoutes.js");
const setupSwagger = require('./src/config/swagger.js'); // Swagger aqui

const app = express();
const PORT = process.env.PORT || 3000;

app.use(cors());
app.use(express.json());
setupSwagger(app); // Ativa o Swagger

app.use("/api", userRoutes);
app.use("/api", postRoutes);
app.use("/api", reportRoutes);

app.listen(PORT, () => {
    console.log(`Servidor rodando em http://localhost:${PORT}`);
});