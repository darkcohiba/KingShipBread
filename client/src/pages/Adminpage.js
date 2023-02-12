import { useQuery } from '@tanstack/react-query';
import Cards from "../components/Cards"


function Adminpage() {

    const { data: orders, isLoading, isError, refetch} = useQuery({
        queryKey: ['orders'],
        queryFn: async () => {
        const response = await fetch("/orders")
        if (!response.ok) {
            throw new Error('Network response was not ok')
        }
        return response.json()
        },
    })
    const cards = orders?.map((order) =>(
        <Cards 
            order={order}
            key={order.id}
            refetch={refetch}
        />
    ))
    console.log(orders)
    return (
        <div className='grid grid-cols-3'>
            <div className='col-start-2 col-end-2'>
                {cards}
            </div>
        </div>
    );
}

export default Adminpage;