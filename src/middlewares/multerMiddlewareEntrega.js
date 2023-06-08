const path = require ('path')
const multer = require('multer'); 

const storage = multer.diskStorage({   // Lugar para guardar las imagenes de las entregas creadas //
    destination: (req, file, cb) => {  
        cb (null, path.join(__dirname, "../../public/images/entregas"))
    }, 
    filename: (req, file, cb) => { // Propiedad que guarda el nombre de la imagen // 
        const newFilename = "imagen" + Date.now() + path.extname (file.originalname); // Esto es para que este sea el nuevo nombre del archivo, el cual va a ser "imagen y el horario en mili segundos (Datenow) con su extension gracias a extname" //
        cb (null, newFilename); 
    } 
}); 

const uploadFile = multer ({storage}) // Ejecucion de multer (para subir archivos) //

module.exports = uploadFile