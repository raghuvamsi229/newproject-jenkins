<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width,initial-scale=1" />
<title>NexusShop — Modern UI</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

<style>
:root{
    --primary:#0f172a;
    --accent:#6366f1;
    --bg:#f1f5f9;
    --card:#ffffff;
}

body{
    margin:0;
    font-family:Poppins;
    background:var(--bg);
}

/* HEADER */
header{
    position:sticky;
    top:0;
    background:rgba(255,255,255,0.8);
    backdrop-filter:blur(10px);
    box-shadow:0 2px 10px rgba(0,0,0,0.05);
}

.container{
    max-width:1200px;
    margin:auto;
    padding:15px;
}

.header-inner{
    display:flex;
    justify-content:space-between;
    align-items:center;
}

.brand{
    font-weight:700;
    font-size:22px;
}

.brand span{
    color:var(--accent);
}

.search{
    background:#e2e8f0;
    padding:8px 12px;
    border-radius:50px;
    display:flex;
    gap:10px;
}

.search input{
    border:none;
    background:none;
    outline:none;
}

/* HERO */
.hero{
    text-align:center;
    padding:80px 20px;
    background:linear-gradient(135deg,#6366f1,#22c55e);
    color:white;
}

.hero h1{
    font-size:40px;
}

.btn{
    padding:10px 20px;
    border:none;
    border-radius:30px;
    cursor:pointer;
    font-weight:600;
}

.btn-primary{
    background:white;
    color:#000;
}

/* PRODUCTS */
.products{
    display:grid;
    grid-template-columns:repeat(auto-fit,minmax(250px,1fr));
    gap:20px;
    margin-top:40px;
}

.product{
    background:var(--card);
    border-radius:15px;
    overflow:hidden;
    transition:.3s;
    box-shadow:0 5px 15px rgba(0,0,0,0.05);
}

.product:hover{
    transform:translateY(-8px);
    box-shadow:0 15px 30px rgba(0,0,0,0.1);
}

.product img{
    width:100%;
    height:200px;
    object-fit:cover;
}

.product-body{
    padding:15px;
}

.price{
    font-weight:bold;
    color:var(--accent);
}

.add-btn{
    width:100%;
    padding:10px;
    border:none;
    background:var(--primary);
    color:white;
    border-radius:10px;
    cursor:pointer;
}

/* FOOTER */
footer{
    text-align:center;
    padding:20px;
    margin-top:40px;
    color:#555;
}

</style>
</head>

<body>

<header>
<div class="container header-inner">
    <div class="brand">Nexus<span>Shop</span></div>

    <div class="search">
        <input type="text" id="searchInput" placeholder="Search...">
        <i class="fas fa-search"></i>
    </div>

    <div>
        <i class="fas fa-user"></i>
        <i class="fas fa-shopping-cart"></i>
    </div>
</div>
</header>

<section class="hero">
    <h1>Modern Shopping Experience</h1>
    <p>Clean UI + smooth experience</p>
    <button class="btn btn-primary">Shop Now</button>
</section>

<div class="container">
    <div class="products" id="productsGrid"></div>
</div>

<footer>
    © 2026 NexusShop
</footer>

<script>
const PRODUCTS = [
{title:"iPhone 14",price:999,img:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb"},
{title:"MacBook",price:1999,img:"https://images.unsplash.com/photo-1593642632823"},
{title:"Headphones",price:299,img:"https://images.unsplash.com/photo-1518449031667"},
{title:"Shoes",price:150,img:"https://images.unsplash.com/photo-1542291026"}
];

const grid = document.getElementById("productsGrid");

function render(){
    grid.innerHTML="";
    PRODUCTS.forEach(p=>{
        grid.innerHTML+=`
        <div class="product">
            <img src="${p.img}">
            <div class="product-body">
                <h4>${p.title}</h4>
                <div class="price">$${p.price}</div>
                <button class="add-btn">Add to Cart</button>
            </div>
        </div>
        `;
    });
}

render();
</script>

</body>
</html>
