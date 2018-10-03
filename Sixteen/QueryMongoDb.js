// cerner_2^5_2018

var client = require('mongodb').MongoClient;
const url = "mongodb://<mongo-db-host>:<mongo-db-port>/";
var query = { userName: "jgrieger" };

client.connect(url, function (error, db) {
    if (error) {
        throw error;
    }

    var database = db.db("myAppDb");

    database.collection("users").find(query).toArray(function (error, result) {
        if (error) {
            throw error;
        }

        // return result properly
        console.log(result);
        db.close();
    });
});