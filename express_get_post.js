const express = require('express');
const app = express();
const cors = require('cors');

// Middleware to parseJSON and allow cross origin connection
app.use(cors());
app.use(express.json());



const aboutData = {
    title: "About Page",
    description:"This is the About Page.",
    author:"Your Name",
    date: "2024-12-12"
};


// Handle GET request
app.get('/', (req,res) => {
    res.send('This is a GET request.');
});

app.get('/about', (req,res) => {
    res.json(aboutData);
});

// // Handle POST request
app.post('/submit', (req, res) => {
    console.log(req.body)
    res.send(`Received POST data: ${JSON.stringify(req.body)}`);
});
 
//Start the server
app.listen(3000, () => {
    console.log('Server running at http://localhost:3000/');
});