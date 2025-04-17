const usersModels = require("../models/userModels");
const postsModels = require("../models/postModels");
const PDFDocument = require("pdfkit");

const exportUsersPDF = async (req, res) => {
  try {
    const users = await usersModels.getUsers();

    res.setHeader("Content-Type", "application/pdf");
    res.setHeader("Content-disposition", "inline; filename=users.pdf");

    const doc = new PDFDocument();
    doc.pipe(res);

    // Título
    doc
      .fontSize(20)
      .text("Relatório de Usuários", { align: "center", underline: true });
    doc.moveDown(1);

    // Cabeçalho
    doc.fontSize(12).text("Id | Nome | Email", { underline: true });
    doc.moveDown(0.5);

    // Conteúdo com linhas alternadas e espaçamento
    let isAlternate = false;
    users.forEach((user) => {
      if (isAlternate) doc.fillColor("#f0f0f0").rect(50, doc.y, 500, 15).fill();
      doc
        .fillColor("black")
        .text(`${user.id}    ${user.name}    ${user.email}`);
      doc.moveDown(0.5); // Espaçamento entre linhas
      isAlternate = !isAlternate;
    });

    doc.end();
  } catch (error) {
    res.status(500).json({ message: "Erro ao gerar o PDF" });
  }
};

const exportPostPDF = async (req, res) => {
  try {
    const posts = await postsModels.getPosts();

    res.setHeader("Content-Type", "application/pdf");
    res.setHeader("Content-disposition", "inline; filename=posts.pdf");

    const doc = new PDFDocument();
    doc.pipe(res);

    // Título
    doc
      .fontSize(20)
      .text("Relatório de Posts", { align: "center", underline: true });
    doc.moveDown(1);

    // Cabeçalho
    doc
      .fontSize(12)
      .text(
        "Id | User ID | Descrição | Imagem | Pessoa Adicionada | Localização",
        { underline: true }
      );
    doc.moveDown(0.5);

    // Conteúdo com linhas alternadas e espaçamento
    let isAlternate = false;
    posts.forEach((post) => {
      if (isAlternate) doc.fillColor("#f0f0f0").rect(50, doc.y, 500, 15).fill();
      doc
        .fillColor("black")
        .text(
          `${post.id}    ${post.user_id}    ${post.description}    ${
            post.image || "N/A"
          }    ${post.add_person || "N/A"}    ${post.localization || "N/A"}`
        );
      doc.moveDown(0.5); // Espaçamento entre linhas
      isAlternate = !isAlternate;
    });

    doc.end();
  } catch (error) {
    res.status(500).json({ message: "Erro ao gerar o PDF" });
  }
};

module.exports = { exportUsersPDF, exportPostPDF };
