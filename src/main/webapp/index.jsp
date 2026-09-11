<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>NexusShop — Modern Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    --primary: #111111;
    --accent: #ff5c35;
    --accent-light: #fff0eb;
    --background: #f7f7f5;
    --white: #ffffff;
    --text: #171717;
    --muted: #777;
    --border: #e8e8e5;
    --success: #159957;
}

body {
    font-family: "DM Sans", sans-serif;
    background: var(--background);
    color: var(--text);
    line-height: 1.5;
}

a {
    text-decoration: none;
    color: inherit;
}

button {
    font-family: inherit;
    cursor: pointer;
}

.container {
    width: min(1180px, 92%);
    margin: auto;
}

/* ================= TOP BAR ================= */

.topbar {
    background: #111;
    color: white;
    font-size: 13px;
    padding: 9px 0;
}

.topbar-content {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.topbar span {
    opacity: .8;
}

/* ================= HEADER ================= */

header {
    position: sticky;
    top: 0;
    z-index: 1000;
    background: rgba(255,255,255,.9);
    backdrop-filter: blur(16px);
    border-bottom: 1px solid var(--border);
}

.navbar {
    min-height: 76px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 25px;
}

.logo {
    font-family: "Space Grotesk", sans-serif;
    font-size: 25px;
    font-weight: 700;
    letter-spacing: -1px;
}

.logo span {
    color: var(--accent);
}

.nav-links {
    display: flex;
    gap: 28px;
    font-size: 14px;
    font-weight: 600;
}

.nav-links a:hover {
    color: var(--accent);
}

.nav-actions {
    display: flex;
    align-items: center;
    gap: 10px;
}

.icon-btn {
    width: 42px;
    height: 42px;
    border: 1px solid var(--border);
    border-radius: 50%;
    background: white;
    display: grid;
    place-items: center;
    transition: .2s;
}

.icon-btn:hover {
    background: #111;
    color: white;
}

.cart {
    position: relative;
}

.cart-count {
    position: absolute;
    top: -4px;
    right: -2px;
    background: var(--accent);
    color: white;
    font-size: 10px;
    min-width: 18px;
    height: 18px;
    border-radius: 50%;
    display: grid;
    place-items: center;
}

/* ================= HERO ================= */

.hero {
    padding: 35px 0 20px;
}

.hero-grid {
    display: grid;
    grid-template-columns: 1.6fr .8fr;
    gap: 18px;
}

.hero-main {
    min-height: 430px;
    border-radius: 28px;
    background:
        linear-gradient(120deg, rgba(0,0,0,.95), rgba(0,0,0,.55)),
        url("https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1400&q=80")
        center/cover;
    color: white;
    padding: 55px;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.hero-tag {
    display: inline-flex;
    width: max-content;
    padding: 8px 13px;
    border-radius: 30px;
    background: rgba(255,255,255,.13);
    font-size: 12px;
    margin-bottom: 20px;
}

.hero h1 {
    font-family: "Space Grotesk", sans-serif;
    font-size: clamp(42px, 5vw, 70px);
    line-height: .98;
    max-width: 650px;
    letter-spacing: -3px;
}

.hero p {
    margin: 22px 0;
    max-width: 520px;
    color: #d1d1d1;
}

.primary-btn {
    width: max-content;
    border: 0;
    background: var(--accent);
    color: white;
    padding: 14px 22px;
    border-radius: 12px;
    font-weight: 700;
    transition: .2s;
}

.primary-btn:hover {
    transform: translateY(-2px);
    background: #e94721;
}

.hero-side {
    display: grid;
    gap: 18px;
}

.promo {
    border-radius: 25px;
    padding: 30px;
    min-height: 206px;
    overflow: hidden;
    position: relative;
}

.promo h3 {
    font-family: "Space Grotesk";
    font-size: 28px;
    max-width: 200px;
}

.promo p {
    font-size: 13px;
    margin-top: 8px;
    color: #555;
}

.promo-one {
    background: #dfe9ff;
}

.promo-two {
    background: #ffe0d7;
}

.promo .circle {
    width: 130px;
    height: 130px;
    position: absolute;
    right: -25px;
    bottom: -35px;
    border-radius: 50%;
    background: rgba(255,255,255,.7);
}

/* ================= SECTION ================= */

.section {
    padding: 60px 0;
}

.section-head {
    display: flex;
    justify-content: space-between;
    align-items: end;
    margin-bottom: 25px;
}

.section-head h2 {
    font-family: "Space Grotesk";
    font-size: 34px;
    letter-spacing: -1px;
}

.section-head p {
    color: var(--muted);
    font-size: 14px;
}

/* ================= CATEGORIES ================= */

.categories {
    display: grid;
    grid-template-columns: repeat(6,1fr);
    gap: 14px;
}

.category {
    background: white;
    border: 1px solid var(--border);
    border-radius: 20px;
    padding: 22px 15px;
    text-align: center;
    transition: .2s;
}

.category:hover {
    transform: translateY(-4px);
    border-color: #ccc;
}

.category-icon {
    width: 55px;
    height: 55px;
    border-radius: 17px;
    background: var(--accent-light);
    color: var(--accent);
    display: grid;
    place-items: center;
    margin: auto auto 12px;
    font-size: 22px;
}

.category h4 {
    font-size: 14px;
}

/* ================= FILTERS ================= */

.filters {
    display: flex;
    gap: 9px;
    flex-wrap: wrap;
    margin-bottom: 25px;
}

.filter {
    padding: 9px 15px;
    border: 1px solid var(--border);
    border-radius: 30px;
    background: white;
    font-size: 13px;
}

.filter.active,
.filter:hover {
    background: #111;
    color: white;
}

/* ================= PRODUCTS ================= */

.products {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 18px;
}

.product-card {
    background: white;
    border-radius: 22px;
    overflow: hidden;
    border: 1px solid var(--border);
    transition: .25s;
}

.product-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 35px rgba(0,0,0,.07);
}

.product-image {
    height: 245px;
    position: relative;
    background: #f1f1ef;
    overflow: hidden;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .4s;
}

.product-card:hover img {
    transform: scale(1.05);
}

.badge {
    position: absolute;
    left: 12px;
    top: 12px;
    background: white;
    padding: 6px 9px;
    border-radius: 8px;
    font-size: 11px;
    font-weight: 700;
}

.wishlist {
    position: absolute;
    right: 12px;
    top: 12px;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    border: 0;
    background: rgba(255,255,255,.9);
}

.product-info {
    padding: 18px;
}

.product-category {
    color: #999;
    font-size: 11px;
    text-transform: uppercase;
    letter-spacing: .8px;
}

.product-name {
    font-weight: 700;
    margin: 6px 0;
}

.rating {
    font-size: 12px;
    margin: 7px 0;
}

.rating span {
    color: #f3a600;
}

.price-row {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-top: 13px;
}

.price {
    font-size: 19px;
    font-weight: 700;
}

.old-price {
    color: #aaa;
    font-size: 12px;
    text-decoration: line-through;
    margin-left: 5px;
}

.add-btn {
    border: 0;
    background: #111;
    color: white;
    padding: 9px 12px;
    border-radius: 9px;
    font-size: 12px;
    font-weight: 600;
}

.add-btn:hover {
    background: var(--accent);
}

/* ================= DEAL ================= */

.deal {
    background: #111;
    color: white;
    border-radius: 30px;
    padding: 45px;
    margin: 25px 0;
}

.deal-content {
    display: flex;
    align-items: center;
    justify-content: space-between;
    gap: 30px;
}

.deal h2 {
    font-family: "Space Grotesk";
    font-size: 38px;
}

.deal p {
    color: #aaa;
    margin-top: 7px;
}

.timer {
    display: flex;
    gap: 10px;
}

.time-box {
    min-width: 65px;
    text-align: center;
    background: #242424;
    border-radius: 12px;
    padding: 12px;
}

.time-box strong {
    display: block;
    font-size: 21px;
}

.time-box small {
    color: #888;
    font-size: 10px;
}

/* ================= REVIEWS ================= */

.reviews {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 18px;
}

.review {
    background: white;
    border: 1px solid var(--border);
    border-radius: 20px;
    padding: 25px;
}

.review-stars {
    color: #f3a600;
    margin-bottom: 12px;
}

.review p {
    color: #555;
    font-size: 14px;
}

.reviewer {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-top: 20px;
}

.avatar {
    width: 38px;
    height: 38px;
    border-radius: 50%;
    background: #ddd;
    display: grid;
    place-items: center;
    font-weight: 700;
}

/* ================= NEWSLETTER ================= */

.newsletter {
    background: #ebe9e4;
    border-radius: 28px;
    padding: 50px;
    text-align: center;
}

.newsletter h2 {
    font-family: "Space Grotesk";
    font-size: 36px;
}

.newsletter p {
    color: #666;
    margin: 10px auto 25px;
}

.newsletter-form {
    display: flex;
    max-width: 480px;
    margin: auto;
    background: white;
    border: 1px solid var(--border);
    padding: 5px;
    border-radius: 12px;
}

.newsletter-form input {
    flex: 1;
    border: 0;
    outline: 0;
    padding: 12px;
    background: transparent;
}

/* ================= FOOTER ================= */

footer {
    background: #111;
    color: white;
    margin-top: 60px;
    padding: 55px 0 25px;
}

.footer-grid {
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1fr;
    gap: 40px;
}

.footer-brand p {
    color: #999;
    max-width: 330px;
    margin-top: 15px;
}

footer h4 {
    margin-bottom: 15px;
}

footer ul {
    list-style: none;
}

footer li {
    color: #999;
    margin-bottom: 9px;
    font-size: 13px;
}

.footer-bottom {
    border-top: 1px solid #292929;
    margin-top: 40px;
    padding-top: 20px;
    color: #777;
    font-size: 12px;
    display: flex;
    justify-content: space-between;
}

/* ================= MOBILE ================= */

.mobile-menu {
    display: none;
}

@media(max-width: 950px) {

    .nav-links {
        display: none;
    }

    .hero-grid {
        grid-template-columns: 1fr;
    }

    .categories {
        grid-template-columns: repeat(3,1fr);
    }

    .products {
        grid-template-columns: repeat(2,1fr);
    }

    .footer-grid {
        grid-template-columns: repeat(2,1fr);
    }

    .mobile-menu {
        display: grid;
    }
}

@media(max-width: 600px) {

    .topbar-content {
        justify-content: center;
    }

    .topbar span:last-child {
        display: none;
    }

    .navbar {
        min-height: 65px;
    }

    .logo {
        font-size: 21px;
    }

    .nav-actions .icon-btn:nth-child(1),
    .nav-actions .icon-btn:nth-child(2) {
        display: none;
    }

    .hero-main {
        padding: 30px;
        min-height: 390px;
    }

    .hero h1 {
        font-size: 44px;
    }

    .categories {
        grid-template-columns: repeat(2,1fr);
    }

    .products {
        grid-template-columns: 1fr;
    }

    .deal {
        padding: 30px 20px;
    }

    .deal-content {
        flex-direction: column;
        align-items: flex-start;
    }

    .timer {
        width: 100%;
    }

    .time-box {
        flex: 1;
    }

    .reviews {
        grid-template-columns: 1fr;
    }

    .newsletter {
        padding: 35px 20px;
    }

    .newsletter h2 {
        font-size: 29px;
    }

    .newsletter-form {
        flex-direction: column;
        background: transparent;
        border: 0;
        gap: 8px;
    }

    .newsletter-form input {
        background: white;
        border: 1px solid var(--border);
        border-radius: 10px;
    }

    .newsletter-form button {
        width: 100%;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }

    .footer-bottom {
        flex-direction: column;
        gap: 8px;
    }
}
</style>
</head>

<body>

<!-- TOP BAR -->

<div class="topbar">
    <div class="container topbar-content">
        <span>Free shipping on orders over $100</span>
        <span>Secure checkout · Easy returns · 24/7 support</span>
    </div>
</div>

<!-- HEADER -->

<header>
    <div class="container navbar">

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <nav class="nav-links">
            <a href="#shop">Shop</a>
            <a href="#categories">Categories</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>
        </nav>

        <div class="nav-actions">

            <button class="icon-btn">⌕</button>
            <button class="icon-btn">♡</button>

            <button class="icon-btn cart">
                🛒
                <span class="cart-count" id="cartCount">0</span>
            </button>

            <button class="icon-btn mobile-menu">☰</button>

        </div>

    </div>
</header>

<!-- HERO -->

<section class="hero">
    <div class="container hero-grid">

        <div class="hero-main">

            <span class="hero-tag">NEW SEASON · 2026 COLLECTION</span>

            <h1>
                Everything you want.
                One place.
            </h1>

            <p>
                Discover carefully selected technology, fashion,
                accessories and everyday essentials designed to
                make your life better.
            </p>

            <a href="#shop" class="primary-btn">
                Explore collection →
            </a>

        </div>

        <div class="hero-side">

            <div class="promo promo-one">
                <h3>Tech that moves with you.</h3>
                <p>Upgrade your everyday setup.</p>
                <div class="circle"></div>
            </div>

            <div class="promo promo-two">
                <h3>Fresh looks. Better prices.</h3>
                <p>New fashion arrivals every week.</p>
                <div class="circle"></div>
            </div>

        </div>

    </div>
</section>

<!-- CATEGORIES -->

<section class="section" id="categories">

<div class="container">

<div class="section-head">
    <div>
        <h2>Shop by category</h2>
        <p>Find exactly what you're looking for.</p>
    </div>
</div>

<div class="categories">

    <div class="category">
        <div class="category-icon">📱</div>
        <h4>Smartphones</h4>
    </div>

    <div class="category">
        <div class="category-icon">💻</div>
        <h4>Laptops</h4>
    </div>

    <div class="category">
        <div class="category-icon">👕</div>
        <h4>Clothing</h4>
    </div>

    <div class="category">
        <div class="category-icon">⌚</div>
        <h4>Gadgets</h4>
    </div>

    <div class="category">
        <div class="category-icon">👟</div>
        <h4>Footwear</h4>
    </div>

    <div class="category">
        <div class="category-icon">🎒</div>
        <h4>Accessories</h4>
    </div>

</div>

</div>
</section>

<!-- PRODUCTS -->

<section class="section" id="shop">

<div class="container">

<div class="section-head">

    <div>
        <h2>Featured products</h2>
        <p>Our most loved products right now.</p>
    </div>

</div>

<div class="filters">

    <button class="filter active" onclick="filterProducts('all', this)">
        All
    </button>

    <button class="filter" onclick="filterProducts('smartphones', this)">
        Smartphones
    </button>

    <button class="filter" onclick="filterProducts('laptops', this)">
        Laptops
    </button>

    <button class="filter" onclick="filterProducts('gadgets', this)">
        Gadgets
    </button>

    <button class="filter" onclick="filterProducts('footwear', this)">
        Footwear
    </button>

    <button class="filter" onclick="filterProducts('accessories', this)">
        Accessories
    </button>

</div>

<div class="products" id="products">

<!-- PRODUCT 1 -->

<div class="product-card" data-category="smartphones">

    <div class="product-image">

        <img src="https://images.unsplash.com/photo-1592286927505-2fd5d3f47b99?auto=format&fit=crop&w=700&q=80">

        <span class="badge">BESTSELLER</span>

        <button class="wishlist">♡</button>

    </div>

    <div class="product-info">

        <div class="product-category">Smartphones</div>

        <div class="product-name">
            iPhone 14 Pro Max
        </div>

        <div class="rating">
            <span>★★★★★</span> 4.9
        </div>

        <div class="price-row">

            <div>
                <span class="price">$999</span>
                <span class="old-price">$1,099</span>
            </div>

            <button class="add-btn" onclick="addToCart()">
                Add
            </button>

        </div>

    </div>

</div>

<!-- PRODUCT 2 -->

<div class="product-card" data-category="laptops">

    <div class="product-image">

        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=80">

        <span class="badge">POPULAR</span>

        <button class="wishlist">♡</button>

    </div>

    <div class="product-info">

        <div class="product-category">Laptops</div>

        <div class="product-name">
            MacBook Pro 14"
        </div>

        <div class="rating">
            <span>★★★★★</span> 4.8
        </div>

        <div class="price-row">

            <div>
                <span class="price">$1,899</span>
                <span class="old-price">$1,999</span>
            </div>

            <button class="add-btn" onclick="addToCart()">
                Add
            </button>

        </div>

    </div>

</div>

<!-- PRODUCT 3 -->

<div class="product-card" data-category="gadgets">

    <div class="product-image">

        <img src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=700&q=80">

        <span class="badge">NEW</span>

        <button class="wishlist">♡</button>

    </div>

    <div class="product-info">

        <div class="product-category">Gadgets</div>

        <div class="product-name">
            Apple Watch Series 8
        </div>

        <div class="rating">
            <span>★★★★★</span> 4.7
        </div>

        <div class="price-row">

            <div>
                <span class="price">$399</span>
            </div>

            <button class="add-btn" onclick="addToCart()">
                Add
            </button>

        </div>

    </div>

</div>

<!-- PRODUCT 4 -->

<div class="product-card" data-category="footwear">

    <div class="product-image">

        <img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=80">

        <span class="badge">SALE</span>

        <button class="wishlist">♡</button>

    </div>

    <div class="product-info">

        <div class="product-category">Footwear</div>

        <div class="product-name">
            Nike Air Max 270
        </div>

        <div class="rating">
            <span>★★★★★</span> 4.6
        </div>

        <div class="price-row">

            <div>
                <span class="price">$129</span>
                <span class="old-price">$160</span>
            </div>

            <button class="add-btn" onclick="addToCart()">
                Add
            </button>

        </div>

    </div>

</div>

<!-- PRODUCT 5 -->

<div class="product-card" data-category="gadgets">

    <div class="product-image">

        <img src="https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=80">

        <span class="badge">PRO</span>

        <button class="wishlist">♡</button>

    </div>

    <div class="product-info">

        <div class="product-category">Gadgets</div>

        <div class="product-name">
            Sony A7 IV Camera
        </div>

        <div class="rating">
            <span>★★★★★</span> 4.9
        </div>

        <div class="price-row">

            <div>
                <span class="price">$2,499</span>
            </div>

            <button class="add-btn" onclick="addToCart()">
                Add
            </button>

        </div>

    </div>

</div>

<!-- PRODUCT 6 -->

<div class="product-card" data-category="accessories">

    <div class="product-image">

        <img src="https://images.unsplash.com/photo-1585386959984-a41552231693?auto=format&fit=crop&w=700&q=80">

        <span class="badge">TRENDING</span>

        <button class="wishlist">♡</button>

    </div>

    <div class="product-info">

        <div class="product-category">Accessories</div>

        <div class="product-name">
            Chanel No. 5
        </div>

        <div class="rating">
            <span>★★★★★</span> 4.8
        </div>

        <div class="price-row">

            <div>
                <span class="price">$149</span>
            </div>

            <button class="add-btn" onclick="addToCart()">
                Add
            </button>

        </div>

    </div>

</div>

<!-- PRODUCT 7 -->

<div class="product-card" data-category="accessories">

    <div class="product-image">

        <img src="https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=80">

        <span class="badge">TRAVEL</span>

        <button class="wishlist">♡</button>

    </div>

    <div class="product-info">

        <div class="product-category">Accessories</div>

        <div class="product-name">
            Travel Backpack
        </div>

        <div class="rating">
            <span>★★★★★</span> 4.7
        </div>

        <div class="price-row">

            <div>
                <span class="price">$89</span>
            </div>

            <button class="add-btn" onclick="addToCart()">
                Add
            </button>

        </div>

    </div>

</div>

<!-- PRODUCT 8 -->

<div class="product-card" data-category="gadgets">

    <div class="product-image">

        <img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=80">

        <span class="badge">HOT</span>

        <button class="wishlist">♡</button>

    </div>

    <div class="product-info">

        <div class="product-category">Gadgets</div>

        <div class="product-name">
            Sony WH-1000XM5
        </div>

        <div class="rating">
            <span>★★★★★</span> 4.9
        </div>

        <div class="price-row">

            <div>
                <span class="price">$349</span>
            </div>

            <button class="add-btn" onclick="addToCart()">
                Add
            </button>

        </div>

    </div>

</div>

</div>

</div>
</section>

<!-- DEAL -->

<section class="section" id="deals">

<div class="container">

<div class="deal">

<div class="deal-content">

    <div>

        <span style="color:#ff7656;font-size:12px;font-weight:bold;">
            LIMITED TIME
        </span>

        <h2>Flash deals are live.</h2>

        <p>
            Grab selected products before the timer hits zero.
        </p>

    </div>

    <div class="timer">

        <div class="time-box">
            <strong id="hours">08</strong>
            <small>HOURS</small>
        </div>

        <div class="time-box">
            <strong id="minutes">42</strong>
            <small>MINUTES</small>
        </div>

        <div class="time-box">
            <strong id="seconds">19</strong>
            <small>SECONDS</small>
        </div>

    </div>

</div>

</div>

</div>
</section>

<!-- REVIEWS -->

<section class="section" id="reviews">

<div class="container">

<div class="section-head">

    <div>
        <h2>Loved by shoppers</h2>
        <p>Real feedback from the NexusShop community.</p>
    </div>

</div>

<div class="reviews">

    <div class="review">

        <div class="review-stars">
            ★★★★★
        </div>

        <p>
            "The website is incredibly easy to navigate.
            My order arrived earlier than expected."
        </p>

        <div class="reviewer">

            <div class="avatar">AR</div>

            <div>
                <strong>Alex R.</strong>
                <small>Verified customer</small>
            </div>

        </div>

    </div>

    <div class="review">

        <div class="review-stars">
            ★★★★★
        </div>

        <p>
            "Great product selection and really smooth
            checkout experience. Definitely coming back."
        </p>

        <div class="reviewer">

            <div class="avatar">SM</div>

            <div>
                <strong>Sarah M.</strong>
                <small>Verified customer</small>
            </div>

        </div>

    </div>

    <div class="review">

        <div class="review-stars">
            ★★★★★
        </div>

        <p>
            "I found exactly what I needed at a much
            better price than other stores."
        </p>

        <div class="reviewer">

            <div class="avatar">DK</div>

            <div>
                <strong>David K.</strong>
                <small>Verified customer</small>
            </div>

        </div>

    </div>

</div>

</div>
</section>

<!-- NEWSLETTER -->

<section class="section">

<div class="container">

<div class="newsletter">

    <h2>Get the good stuff.</h2>

    <p>
        New arrivals, exclusive offers and useful updates.
        No spam.
    </p>

    <form class="newsletter-form" onsubmit="subscribe(event)">

        <input
            type="email"
            id="email"
            placeholder="Enter your email"
            required
        >

        <button class="primary-btn">
            Subscribe
        </button>

    </form>

</div>

</div>
</section>

<!-- FOOTER -->

<footer>

<div class="container">

<div class="footer-grid">

    <div class="footer-brand">

        <div class="logo">
            Nexus<span>Shop</span>
        </div>

        <p>
            A modern marketplace for technology,
            fashion and everyday essentials.
        </p>

    </div>

    <div>

        <h4>Shop</h4>

        <ul>
            <li>All products</li>
            <li>New arrivals</li>
            <li>Best sellers</li>
            <li>Deals</li>
        </ul>

    </div>

    <div>

        <h4>Support</h4>

        <ul>
            <li>Contact us</li>
            <li>Shipping</li>
            <li>Returns</li>
            <li>FAQ</li>
        </ul>

    </div>

    <div>

        <h4>Company</h4>

        <ul>
            <li>About us</li>
            <li>Careers</li>
            <li>Privacy</li>
            <li>Terms</li>
        </ul>

    </div>

</div>

<div class="footer-bottom">

    <span>© 2026 NexusShop. All rights reserved.</span>

    <span>Made for better shopping.</span>

</div>

</div>

</footer>

<script>

/* ================= CART ================= */

let cartCount = 0;

function addToCart() {

    cartCount++;

    document.getElementById("cartCount").textContent = cartCount;

}

/* ================= FILTER ================= */

function filterProducts(category, button) {

    document
        .querySelectorAll(".filter")
        .forEach(btn => btn.classList.remove("active"));

    button.classList.add("active");

    document
        .querySelectorAll(".product-card")
        .forEach(product => {

            if (
                category === "all" ||
                product.dataset.category === category
            ) {

                product.style.display = "";

            } else {

                product.style.display = "none";

            }

        });

}

/* ================= COUNTDOWN ================= */

let totalSeconds = (8 * 60 * 60) + (42 * 60) + 19;

function updateTimer() {

    if (totalSeconds <= 0) {
        totalSeconds = 24 * 60 * 60;
    }

    const hours = Math.floor(totalSeconds / 3600);

    const minutes =
        Math.floor((totalSeconds % 3600) / 60);

    const seconds =
        totalSeconds % 60;

    document.getElementById("hours").textContent =
        String(hours).padStart(2, "0");

    document.getElementById("minutes").textContent =
        String(minutes).padStart(2, "0");

    document.getElementById("seconds").textContent =
        String(seconds).padStart(2, "0");

    totalSeconds--;

}

setInterval(updateTimer, 1000);

/* ================= NEWSLETTER ================= */

function subscribe(event) {

    event.preventDefault();

    const email =
        document.getElementById("email").value;

    alert(
        "Thanks! " + email +
        " has been subscribed to NexusShop."
    );

    document.getElementById("email").value = "";

}

/* ================= WISHLIST ================= */

document
    .querySelectorAll(".wishlist")
    .forEach(button => {

        button.addEventListener("click", () => {

            if (button.textContent.trim() === "♡") {

                button.textContent = "♥";
                button.style.color = "#ff5c35";

            } else {

                button.textContent = "♡";
                button.style.color = "";

            }

        });

    });

</script>

</body>
</html>
