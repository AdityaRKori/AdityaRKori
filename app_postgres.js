const express =  require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const {Pool} = require('pg');

const app = express();

//Middleware
app.use(cors());
app.use(express.json());


//PostgreSQL Connection
const pool = new Pool({
    connectionString: "postgresql://NEONDB_owner:fjAOglCh5u3I@ep-blue-leaf-a5vd6za5.us-east-2.aws.neon.tech/NEONDB?sslmode=require",
});

//Test Database Connection
pool.connect((err, client, release) => {
    if (err) {
        console.error('Error connecting to PostgreSQL:', err,stack);
    } else {
        console.log('Connected to PostgreSQL');
        release();
    }
});


// Route to get all users
app.get('/api/users', async (req,res) => {
    try {
        const result = await pool.query('SELECT * FROM medicalrecords limit 1');
        res.status(200).json(result.rows);
    } catch (error){
      console.error(error);
    }
});



// Routes
app.post('/api/register', async (req, res) => {
    const {name,diagnosis,prescription,doctor_id} = req.body;
    console.log('Request recieved:', req.body);
    try {
        const result = await pool.query(
       'INSERT INTO medicalrecords (name,diagnosis,prescription,doctor_id) VALUES ($1, $2, $3, $4) RETURNING *',
        [name,diagnosis,prescription,doctor_id]
);
res.status(201).json({ message: 'User registered successfully'})
}catch (error) {
    console.error(error);
}
});

// Start the server
app.listen(3000, () => {
    console.log('Server running at http://localhost:3000/');
});

