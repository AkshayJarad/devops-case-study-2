const http = require('http');
const PORT = 3000;

const server = http.createServer((req, res) => {
  res.end("Hello from Dockerized Node.js app!");
});

server.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
