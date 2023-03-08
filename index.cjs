const express = require("express");
const app = express();
const port = +(process.env.PORT || "3000");

app.get("/path", (req, res) => {
    res.json(req.query);
});

app.listen(port, () => {
    console.log(`Example app listening on port ${port}`);
});
