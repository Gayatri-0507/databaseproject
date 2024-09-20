
const express = require('express');
const bodyParser = require('body-parser');
const oracledb = require('oracledb');

const app = express();
const PORT = 4000;

// Configure Oracle Database connection (replace 'your_connection_string' with your actual connection string)
const dbConfig = {
    user: 'ashwin',
    password: 'password1',
    connectString: 'localhost:1521/xe'
};
oracledb.initOracleClient({ libDir: '' });

// Middleware to parse the request body
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// Serve static files from the 'public' directory
app.use(express.static('public'));

// Route for serving the HTML file
app.get("/", (req, res) => {
    res.sendFile(__dirname + '/process.html');
});

// Handle form submission
app.post('/register', async (req, res) => {
    // Extract patient data from the request body
    const UserData = {
        username: req.body['username'],
        userId: req.body['userId'],
        email: req.body['email'],
        password: req.body['password'],
        fullName: req.body['fullName'],
        dob: req.body['dob'],
        gender: req.body['gender'],
        address: req.body['address'],
        phone: req.body['phone'],
        
    };

    // Connect to the Oracle Database
    let connection;
    try {
        connection = await oracledb.getConnection(dbConfig);

        // Insert patient data into the database
        const result = await connection.execute(
            `INSERT INTO signup (username, userId, email, password, fullName, dob, gender, address, phone)
            VALUES (:username, :userId, :email, :password, :fullName, TO_DATE(:dob, 'YYYY-MM-DD'), :gender, :address, :phone)`,
            UserData
        );
        // Commit the transaction
        await connection.commit();

        console.log(result);

        res.status(200).json({ message: 'User registered successfully' });
    } catch (err) {
        console.error(err);
        res.status(500).json({ message: 'Error registering User' });
    } finally {
        if (connection) {
            try {
                await connection.close();
            } catch (err) {
                console.error(err);
            }
        }
    }
});

// Start the server
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${port}`);
});