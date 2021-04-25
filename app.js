const inquirer = require('inquirer');
const mysql = require("mysql")
const cTable = require('console.table');

require('dotenv').config()

const db = mysql.createConnection({
    host: 'localhost',
    // Your MySQL username,
    user: 'root',
    // Your MySQL password
    password: process.env.DB_PASSWORD,
    database: 'employee_tracker'
});

db.connect(err => {
    if (err) throw err;
    console.log('Database connected.');
})

function promptProject() {
        return inquirer.prompt([
            {
                type: 'list',
                name: 'todo',
                message: 'What would you like to do?',
                choices: ['View All Employees', 'View All Employees by Department','View All Employess by Manager', 'Add Employee', 'Remove Employee', "Undate employee's Role", "Update employee's maneger" ]
            }
        ])
        .then(res => {
            // console.log(res.todo)
            switch(res.todo) {
                case 'View All Employees':
                    viewEmployees()
                    break;
                    case 'View All Emoloyees by Department':
                        viewDepartment()
                        break;
                        case 'View All Employess by Manager':
                            employeesManager()
                            break;
                            case 'Add Employee':
                                addEmployee()
                                break;
                                case 'Remove Employee':
                                    removeEmployee()
                                    break;
                                    case "Undate employee's Role":
                                        updateRole()
                                        break;
                                        case "Update employee's manager":
                                            updateManager()
                                            break;

            }
          
        })
    }

    function viewEmployees(res) {
        //function to view employees
        const sql = `SELECT * FROM departments`;
        db.query(sql,(err, rows) => {
            if (err) {
                console.log(err)
            } else {
                promptProject()
            console.table(rows)
            // 
            
            }
          });
    }

    promptProject()


    //when the app runs we need to ask what the user wants to do
        //run inquirer
    //based on the user response we run the appropriate funciton
        //switch case
    //after the funciton is run we need to interact with the db
        //db.query(insert our sql)
    //after db interaction takes place run promptProject again until user is done