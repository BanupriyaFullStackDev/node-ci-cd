const express = require("express");
const sum = require("./sum")

const app = express();

app.get("/", (req, res) => {
    const result = sum(10,20);

    res.send(`Node CI/CD app is running! Sum = ${result}`);
});

app.listen(3000, () => {
    console.log("Server running on port 3000");
});
