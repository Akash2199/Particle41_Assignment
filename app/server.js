const express = require("express");
const app = express();

app.get("/", (req, res) => {
  const clientIp = req.headers["x-forwarded-for"] || req.socket.remoteAddress;
  console.log(`Client IP : ${clientIp}`);
  res.json({
    ip: clientIp,
    timestamp: new Date().toISOString(),
  });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
