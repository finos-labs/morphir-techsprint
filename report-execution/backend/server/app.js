const express = require("express");
const cors = require("cors");

const app = express();

app.use(
  cors({
    origin: "*",
  })
);

const port = 3000;

app.get("/", (req, res) => {
  res.send([
    { tradeDate: "20220210", eventTimestamp: 123456 },
    { tradeDate: "20220215", eventTimestamp: 123457 },
    { tradeDate: "20220220", eventTimestamp: 123458 },
    { tradeDate: "20210210", eventTimestamp: 123459 },
  ]);
});

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
