import { create } from 'zustand';
import {devtools, persist} from 'zustand/middleware'


const orderStore = (set) => ({
    orders: ['hoops'],

})

const useOrderStore = create(
    devtools(
        persist(orderStore, {
            name: "orders",
        })
    )
)


export default useOrderStore;