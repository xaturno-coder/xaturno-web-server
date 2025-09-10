const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Yetslin & Juan Luis <3 - Xaturno");
});

app.listen(3000, () => {
  console.log("Server running on port 3000");
});
