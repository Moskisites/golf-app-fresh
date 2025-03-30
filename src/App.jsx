import React, { useState } from 'react';
import './App.css';

function App() {
  const [courses, setCourses] = useState([]);

  return (
    <div className="app">
      <header>
        <h1>Golf Course Tracker</h1>
      </header>
      <main>
        <section className="courses">
          <h2>My Golf Courses</h2>
          {courses.length === 0 ? (
            <p>No courses added yet. Start by adding a golf course!</p>
          ) : (
            <ul className="course-list">
              {courses.map((course, index) => (
                <li key={index} className="course-item">
                  <h3>{course.name}</h3>
                  <p>Location: {course.location}</p>
                  <p>Holes: {course.holes}</p>
                </li>
              ))}
            </ul>
          )}
        </section>
      </main>
      <footer>
        <p>&copy; 2023 Golf App</p>
      </footer>
    </div>
  );
}

export default App;
