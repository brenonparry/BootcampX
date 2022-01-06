const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// console.log('process.argv: ', process.argv)

const cohort = process.argv[2];
pool.query(`
SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON students.cohort_id = cohorts.id 
JOIN teachers ON teachers.id = assistance_requests.teacher_id
WHERE cohorts.name = '${cohort}'
GROUP BY teacher, cohort
ORDER BY teacher;
`)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.cohort}: ${user.teacher}`);
  })
});

