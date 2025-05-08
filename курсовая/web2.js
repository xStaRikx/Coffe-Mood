function openOrderForm() {
    document.getElementById('orderModal').style.display = 'block';
}


function closeModal() {
    document.getElementById('orderModal').style.display = 'none';
}

document.getElementById('orderForm').addEventListener('submit', function(e) {
    e.preventDefault();
    
    const formData = {
        name: document.getElementById('name').value,
        email: document.getElementById('email').value,
        phone: document.getElementById('phone').value,
        address: document.getElementById('address').value,
        quantity: document.getElementById('quantity').value
    };
    
    console.log('Данные заказа:', formData);
    
    alert('Ваш заказ оформлен! Мы свяжемся с вами в ближайшее время.');
    
    closeModal();
    

    this.reset();
});

window.addEventListener('click', function(e) {
    if (e.target == document.getElementById('orderModal')) {
        closeModal();
    }
});