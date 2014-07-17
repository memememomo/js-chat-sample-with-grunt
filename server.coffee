express = require('express')
app = express()
http = require('http').Server(app)
io = require('socket.io')(http)

app.use(express.static(__dirname))

app.get('/', (req, res) ->
  res.sendfile('index.html')
)

io.on 'connection', (socket) ->
  socket.on 'chat message', (msg) ->
    io.emit 'chat message', msg

http.listen 3000, ->
  console.log 'listening on *:3000'
