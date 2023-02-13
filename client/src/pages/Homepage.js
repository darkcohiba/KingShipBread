// import useOrderStore from "../hooks/orderStore";
import { useState, useEffect} from 'react'

function Homepage() {

    useEffect(() => {
        fetch("/orders")
            .then((response) => response.json())
            .then(data => console.log(data))

    }, []);
    return (
        <div className="w-screen h-screen">
            <p>Already a Bread Club Member?</p>
            <button>Click here to Login</button>
            <p>Looking to join the best club around?</p>
            <button>Click here to Signup</button>
        </div>
    );
}

export default Homepage;