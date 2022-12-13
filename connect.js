var express = require("express");
var mysql = require("mysql");
var app = express();
var cors = require("cors");

app.use(express.json());
app.use(cors());

var conexion = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "jmegun23",
  database: "VACANTE",
});

conexion.connect(function (error) {
    if (error) {
      throw error;
    } else {
      console.log("Conexión exitosa");
    }
  });

const puerto = process.env.PUERTO || 3000;

app.listen(puerto, function () {
    console.log("Servidor funcionando en puerto: " + puerto);
  });
  

  app.post("/api/VACANTE", (req, res) => {
    let data = {
							 NOMEST: req.body.NOMEST,  
							 DNIEST: req.body.DNIEST, 
							 EMAEST: req.body.EMAEST,   
							 CELEST: req.body.CELEST,
               MSGEST: req.body.MSGEST,
    };
    let sql = "INSERT INTO VACANTE SET ?";
    conexion.query(sql, data, function (error, results) {
      if (error) {
        throw error;
      } else {
        console.log(data);
        res.send(data);
      }
    });
    });
  
  