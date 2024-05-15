//Copyright © 2022-2024, @Acktarius, All Rights Reserved

//Required External Modules
const express = require("express");
const path = require("path");

const htmlDirectory = path.join(__dirname, "html");

const app = express();
const port = process.env.PORT || "5023"; 
app.use(express.static(htmlDirectory));
app.use(express.urlencoded({ extended: false }));


// main index page
app.get("^/$|/conceal-network(.html)?", (req, res) => { 
    res.sendFile(path.join(htmlDirectory, '/Conceal-Network.html'), { title: "Conceal Network" });
    }); 

//Server Activation
app.listen(port, () => {
    console.log(`Listening to requests on http://localhost:5023`);
  });