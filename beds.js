var mysql = require('mysql');
var Table = require('cli-table');
var inquirer = require('inquirer');
//  CREATE CONNECTION TO SQL DATABASE
var connection = mysql.createConnection({  
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "FinalProject1_db"

});

// CONNECT AND ALERT ERROR IF CONNECTION ISSUE 
connection.connect(function(err) {
    
    if (err) throw err;
});

//CREATE DISPLAY FUNCTION TO DISPLAY TABLE 
var display = function() {

    // PULL INFORMATION FROM MYSQL DATABASE 
    connection.query("SELECT * FROM beds", function(err, results) {
        if (err) throw err;

        // USE NPM CLI-TABLE PACKAGE TO RENDER TABLE ON THE COMMAND LINE
        var table = new Table({
            head: ["Bed Id", "First name", "Last name", "Doctors Name", "Nurse Name"],
            colWidths: [10, 25, 25, 25, 25]
        });
      

        // FOR LOOP THROUGH OBJECTS LOCATED ON THE MYSQL SERVER
        for (var i = 0; i < results.length; i++) {
            table.push([
                results[i].Bed_id,
                results[i].First_name,
                results[i].Last_name,
                results[i].Doctors_name,
                results[i].Nurse_name,
                
            ]);
        }

        // DISPLAY TABLE
        console.log(table.toString());

     
        
    });
}


display();