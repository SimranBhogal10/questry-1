const express = require("express"); //acquiring express
const app = express();
const mongoose = require("mongoose");
const dotenv = require("dotenv");
const helmet = require("helmet");
const morgan = require("morgan"); // acquiring all the things...
//const userRoute = require("./routes/users");
const authRoute = require("./routes/auth");
//const postRoute = require("./routes/posts");
const multer = require("multer");
const router = express.Router();
const path = require("path");


dotenv.config(); // configuring the env

const MONGO_URL = "mongodb://shinigamirex888:<password>@cluster0-shard-00-00.j9vne.mongodb.net:27017,cluster0-shard-00-01.j9vne.mongodb.net:27017,cluster0-shard-00-02.j9vne.mongodb.net:27017/myFirstDatabase?ssl=true&replicaSet=atlas-ad3je4-shard-0&authSource=admin&retryWrites=true&w=majority";

mongoose
  .connect(MONGO_URL, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
    useCreateIndex: true,
  })
  .then(() => console.log("Database connected!"))
  .catch((err) => console.log(err));

  // It's Stuff time...
app.use(express.json());
app.use(helmet());
app.use(morgan("common"));


//const storage = multer.diskStorage({
//  destination: (req, file, cb) => {
//    cb(null, "public/images");
//  },
//  filename: (req, file, cb) => {
//    cb(null, req.body.name);
//  },
//});

//const upload = multer({ storage: storage });
//app.post("/api/upload", upload.single("file"), (req, res) => {
//  try {
//    return res.status(200).json("File uploded successfully");
//  } catch (error) {
//    console.error(error);
//  }
//});


//app.use("/api/users", userRoute);
app.use("/api/auth", authRoute);
//app.use("/api/posts", postRoute);



app.listen(8800, () => console.log("Backend Running!! "));