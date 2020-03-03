const express = require('express');
const app = express();
const path = require('path');
const fastcsv = require("fast-csv");
const mysql = require("mysql");
const fs = require("fs");
const router = express.Router();
const ws = fs.createWriteStream("./files/viculados.csv");

// crear coneccion a base de datos
const connection = mysql.createConnection({
  host: "vicu-mysql",
  user: "root",
  password: "example",
  database: "reporte"
});

// se establece (crea) la ruta home para servir la vista que contiene el boton
router.get('/', function (req, res) {
  res.sendFile(path.join(__dirname + '/index.html'));
});


// se configura la ruta about donde esta la logica para crear el csv.
router.get('/about', function (req, res) {

  // res.sendFile(path.join(__dirname + '/about.html'));

  connection.connect(error => {
    if (error) throw error;

    // creando Query Mysql
    connection.query("SELECT * FROM vinculados", function (error, data, fields) {
      if (error) throw error;

  //se procesa la data para convertirla a Json
      const jsonData = JSON.parse(JSON.stringify(data));
      console.log("jsonData", jsonData);

  //metodos de la libreria fast-csv para crear cabeceras y escribir sobre el documento anterior mente creado con fs.
      fastcsv
        .write(jsonData, { headers: true })
        .on("end", function () {
          console.log("Write to mysql_vinculados.csv successfully!");
        })
        .pipe(ws);

      ws.on("close", function () {
        res.sendFile(path.join(__dirname + '/files/viculados.csv'));
      });
    });
  });
});


//add the router
app.use('/', router);
app.listen(process.env.port || 3000);

console.log('Running at Port 3000');