const mongoose = require("mongoose");

mongoose.connect("mongodb://127.0.0.1:27017/task-manger-api", {
  useCreateIndex: true,
  useNewUrlParser: true,
});
