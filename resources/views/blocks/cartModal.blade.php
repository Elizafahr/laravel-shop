<div class="container">
    <!-- Button trigger modal -->
    <a href="order/confirm-order" class="btn btn-primary"  >
        Оформить заказ
    </a>

    <!-- Modal -->
    {{-- <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="orderForm" action=" " method="get">
                        @csrf
                        <div class="mb-3">
                            <label for="password" class="form-label">Пароль</label>
                            <input type="password" name="password" class="form-control" id="password" required>
                            <div id="passwordError" class="invalid-feedback">
                                Неверный пароль.
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Подтвердить</button>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                 </div>
            </div>
        </div>
    </div> --}}
</div>
{{-- <script>
    document.getElementById('orderForm').addEventListener('submit', function(event) {
        event.preventDefault();
        var password = document.getElementById('password').value;
        var correctPassword = document.getElementById("idUser").value;
        if (password === correctPassword) {
            alert('Заказ подтвержден');
            $('#exampleModal').modal('hide');
        } else {
            document.getElementById('passwordError').style.display = 'block';
        }
    });
</script> --}}
 