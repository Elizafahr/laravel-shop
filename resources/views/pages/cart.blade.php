@include('components.header')
@include('blocks.cartBlock')

<div class="container">
    <h1>Мои заказы</h1>

    @if (session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
    @endif

    @if (session('error'))
        <div class="alert alert-danger">
            {{ session('error') }}
        </div>
    @endif

    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Товары</th>
                <th>Статус</th>
                <th>действие</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($orders as $order)
                <tr>
                    <td>{{ $order->id }}</td>
                    <td>{{ $order->orderDetails->sum('quantity') }}</td>
                    <td>{{ $order->status }}</td>
                    <td>
                        @if ($order->created_at->diffInDays(now()) <= 7)
                            <form action="{{ route('cart.destroy', $order->id) }}" method="POST">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger">del</button>
                            </form>
                        @endif
                    </td>
                </tr>
            @endforeach
        </tbody>
        
    </table>
</div>

@include('blocks.cartModal')
@include('components.footer')
