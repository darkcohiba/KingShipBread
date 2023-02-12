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
            Homepage
        </div>
    );
}

export default Homepage;