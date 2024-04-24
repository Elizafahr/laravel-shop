 <div class="container">
     <h1>Корзина</h1>
     <table class="table">
         <thead>
             <tr>
                 <th>Артикул</th>
                 <th>Продукт</th>
                 <th>Цена</th>
                 <th>Количество</th>
                 <th>Действия</th>
             </tr>
         </thead>
         <tbody>
             @foreach ($shCarts as $item)
                 <tr>
                     <td>{{ $item->product_id }}</td>
                     <td>{{ $item->productt->product_name }}</td>
                     <td>{{ $item->productt->price }}</td>
                     <td>{{ $item->quantity }}</td>
                     <td>
                     
                         <form action="{{ route('updateQuantity', $item->id) }}" method="POST">
                             @csrf
                             <button type="submit" name="action" value="decrement">-</button>
                             <button type="submit" name="action" value="increment">+</button>
                         </form>

                     </td>
                 </tr>
             @endforeach
         </tbody>
     </table>
 </div>
