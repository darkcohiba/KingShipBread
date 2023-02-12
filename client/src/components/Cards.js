function Cards({order, refetch}) {

    function updateOrder(){
        fetch(`/orders/${order.id}`, {
            method: "PATCH",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify({
                completed: true
            }),
        })
        .then(response => response.json())
        .then(data => console.log(data))
        refetch()
    }


    return (
        <div className="border-2 bg-amber-300 border-collapse rounded border-4 text-center border-black border-solid text-black m-5">
            <p>Order ID: {order.id}</p>
            <p>Ordered by: {order.user.full_name}</p>
            <p>Items in Order</p>
            <div className="">
                <table className="">
                    <tbody>
                        <tr>
                            <th>Item</th>
                            <th>Quantity</th>
                            <th>Price</th>
                        </tr>
                        <tr>
                            <td className="text-center">{order.bread.title}</td>
                            <td className="text-center">{order.quantity}</td>
                            <td className="text-center">{order.bread.price}</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <p>Status: {order.status}</p>
            <button className="bg-gradient-to-r from-indigo-500 via-purple-500 to-pink-500 rounded-md text-black p-2 m-1" onClick={updateOrder}>Mark Order as Complete!</button>
        </div>
    );
}

export default Cards;