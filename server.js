var mysql = require("mysql");
var inquirer = require("inquirer");
const cTable = require("console.table");
require("dotenv").config();

var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "h00kelex3",
    database: "employeesDB"
});

connection.connect(function (err) {
    if (err) throw err;
    runSearch();
});

function runSearch() {
    inquirer
        .prompt({
            name: "action",
            type: "list",
            message: "What would you like to do?",
            choices: [
                "View all employees",
                "View all roles",
                "View all departments",
                // "View all employees by manager", B
                // "Add employee",
                // "Remove employee", B
                // "Update employee role",
                // "Update employee manager", B
                // "Add department",
                // "Remove department", B
                // "Add role",
                // "Remove role", B
                // "View total utilized budget of department",B
                "Quit"
            ]
        })
        .then(function (answer) {
            switch (answer.action) {
                case "View all employees":
                    var query = "SELECT * FROM employee";
                    connection.query(query, function (err, res) {
                        console.table(res);
                    });
                    runSearch();
                    break;

                case "View all employees by role":
                    var query = "SELECT * FROM role";
                    connection.query(query, function (err, res) {
                        console.table(res);
                    });
                    runSearch();
                    break;

                case "View all employees by department":
                    var query = "SELECT * FROM department";
                    connection.query(query, function (err, res) {
                        console.table(res);
                    });
                    runSearch();
                    break;

                // case "View all employees by manager":
                //     runSearch();
                //     break;

                // case "Add employee":
                //     runSearch();
                //     break;

                //     case "Remove employee":
                //     runSearch();
                //     break;

                //     case "Update employee role":
                //     runSearch();
                //     break;

                //     case "Update employee manager":
                //     runSearch();
                //     break;

                //     case "Add department":
                //     runSearch();
                //     break;

                //     case "Remove department":
                //     runSearch();
                //     break;

                //     case "Add role":
                //     runSearch();
                //     break;

                //     case "Remove role":
                //     runSearch();
                //     break;

                //     case "View total utilized budget of department":
                //     runSearch();
                //     break;

                case "Quit":
                    console.log("Bye");
                    connection.end();
                    break;
            }
        });
}

// function viewByManger() {
//     inquirer
//         .prompt({
//             name: "viewManagers",
//             type: "list",
//             message: "Select a manager:"
//             choices:[]
//         })
//         .then(function (answer) {
//             var query = "SELECT * FROM department";
//             connection.query(query, function (err, res) {
//                 console.table(res);
//                 //   for (var i = 0; i < res.length; i++) {
//                 //     console.log("Position: " + res[i].position + " || Song: " + res[i].song + " || Year: " + res[i].year);
//                 //   }
//                 runSearch();
//             });
//         });
// }
