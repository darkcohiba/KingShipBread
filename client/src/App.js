import { useState, useEffect } from 'react';
import './App.css';
import Homepage from './pages/Homepage';
import Adminpage from './pages/Adminpage';
import Navbar from './components/Navbar';


function App() {

  const [isAuthenticated, setIsAuthenticated] = useState(false)
  const [errors, setErrors] = useState(false)
  const [user, setUser] = useState(null)


  useEffect(() => {
    fetch("http://localhost:3000/me")
      .then((response) => {
        if (response.ok) {
          response.json().then((user) => setUser(user), setIsAuthenticated(true));
        }
      });
  }, []); 



  return (
    <div className='bg-bread bg-cover bg-no-repeat bg-center'>
      <Navbar 
        user={user}
      />
      <Adminpage />
    </div>
  );
}

export default App;
