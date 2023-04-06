const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const queryString = `SELECT DISTINCT teachers.name as name, cohorts.name as cohort
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN teachers ON teachers.id = teacher_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name LIKE $1;`

const cohortName = process.argv[2] || 'JUL02';

const values = [`%${cohortName}%`];


pool.query(queryString, values)
.then(res => {
    console.log(res.rows);
  })
.catch(err => console.error('query error', err.stack));
