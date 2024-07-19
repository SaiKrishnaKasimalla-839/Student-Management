<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Shopping Cart</title>
</head>
<body>
    <h1>Product List</h1>
    <div id="products">
        <div class="product">
            <h2>Product 1</h2>
            <button onclick="addToCart(1)">Add to Cart</button>
        </div>
        <div class="product">
            <h2>Product 2</h2>
            <button onclick="addToCart(2)">Add to Cart</button>
        </div>
        <div class="product">
            <h2>Product 3</h2>
            <button onclick="addToCart(3)">Add to Cart</button>
        </div>
    </div>
    <h2>Your Cart</h2>
    <div id="cart"></div>
    
    <script>
        function addToCart(productId) {
            fetch('Cart', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: `productId=${productId}`
            })
            .then(response => response.json())
            .then(data => {
                const cartDiv = document.getElementById('cart');
                cartDiv.innerHTML = '<ul>' + data.cartItems.map(item => `<li>${item}</li>`).join('') + '</ul>';
            })
            .catch(error => console.error('Error:', error));
        }
    </script>
</body>
</html>
