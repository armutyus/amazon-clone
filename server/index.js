console.log("Hello, World");
// IMPORTS FROM PACKAGES
const express = require("express");

// INIT
const PORT = 3000;
const app = express();

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});