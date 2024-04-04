const express = require('express');
const cors=require("cors");
const port=process.env.PORT ||5000; 
const mongoose = require('mongoose');
const app = express();
const http = require('http');
const server = http.createServer(app);
const { Server } = require("socket.io");
const Message = require('./model/ChatSchema');

const io = new Server(server,{
    cors:
    {
        origin:"*"
    }
});
app.use(express.static('public'));


//middleware
app.use(express.json());
app.use(cors())

mongoose
  .connect('mongodb+srv://rakeshlohana15:Rakesh.12345@cluster0.lylcejz.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0')
  .then(() => {
    console.log("Connected to MongoDB");
  })
  .catch((err) => {
    console.log(err);
  });



io.on('connection', (socket) => {
  console.log('User Connected: ',socket.id);
  socket.on('disconnect', () => {
    console.log('User disconnected:', socket.id);
  });


socket.on( 'chat message', (data)=>{
  console.log("Receive message: ",data);






  io.emit('chat message', data);
  const message = new Message({ user: data.user, text: data.message });


  message.save().then(()=>(
    console.log("Message saved successfully")

  )).catch((error)=>{
    console.log("Something went wrong",error)
  });


});




});

server.listen(port, () => {
  console.log(`listening on : ${port}`);
});