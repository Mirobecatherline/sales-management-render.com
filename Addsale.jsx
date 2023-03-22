import React,{useState} from 'react'

import { MdOutlineCancel } from 'react-icons/md';
import { useStateContext } from '../done/src/contexts/ContextProvider';

function Addsale() {
    const { addsale, setaddsale,sales, setsales } = useStateContext();
    const [product, setproduct] = useState("")
    const [status, setstatus] = useState("")
    const [price, setprice] = useState("")
    const [alerts, setalert] = useState("")
    const baseUrl="http://127.0.0.1:3000/";
    console.log(product)
    function handlesubmit(e) {
        e.preventDefault()
        fetch(baseUrl + 'sales',{
            method:"post",
            headers:{"Content-Type":"application/json"},
            body: JSON.stringify({
              product:product,
              status:status,
              price:price,
            })
          }).then(r => {
            if (r.ok) {
                setalert("submitted!!")
            } else {
                setalert("not submitted!!")
            }
          })
          .then(data=>setsales(currentsales=>[...currentsales,data]))
          .catch(error=>alert(error))
          e.target.reset();
    }
  return (
    <div className='bg-half-transparent w-screen fixed nav-item top-0 right-0 '>
         <div className=" float-right h-screen dark:text-gray-200  bg-white dark:bg-[#484B52] w-400">
            <div className="flex justify-between items-center p-4 ml-4">
                <p className="font-semibold text-lg">Add sales</p>
                <button
                    type="button"
                    onClick={() => setaddsale(false)}
                    style={{ color: 'rgb(153, 171, 180)', borderRadius: '50%' }}
                    className="text-2xl p-3 hover:drop-shadow-xl hover:bg-light-gray"
                >
                    <MdOutlineCancel />
                </button>

            </div>
            <div class="w-100 max-w-xs">
  <form class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4 p-4 ml-4" onSubmit={handlesubmit}>
    <div class="mb-4">
      <label class="block text-gray-700 text-sm font-bold mb-2 " >
        product
      </label>
      <input class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline" id="" type="text" placeholder="product"
      onChange={(e)=>{setproduct(e.target.value)}}
      />
    </div>
    <div class="mb-6">
      <label class="block text-gray-700 text-sm font-bold mb-2" >
        Price
      </label>
      <input class="shadow appearance-none border border-black-500 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline" id="" type="text" placeholder="price"
      onChange={(e)=>{setprice(e.target.value)}}
      />
     
    </div>
    <div class="mb-6">
      <label class="block text-gray-700 text-sm font-bold mb-2" >
        status
      </label>
      <input class="shadow appearance-none border border-black-500 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"  type="text" placeholder="status"
      onChange={(e)=>{setstatus(e.target.value)}}
      />
     
    </div>
   
        <button class="bg-blue-500 hover:bg-blue-700  font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline" type="submit">
        submit
      </button>
      <br />
 <p
 className={alerts == "submitted!!"? 'text-green-700':'text-red-700'}
 >{alerts}</p>
    
  </form>
 
</div>
            {/* <form action="">
                <input type="text"placeholder='product' />
                <input type="text" placeholder='price' />
                <button type='submit'>Add sale</button>
            </form> */}
       
         </div>
        
        </div>
  )
}

export default Addsale