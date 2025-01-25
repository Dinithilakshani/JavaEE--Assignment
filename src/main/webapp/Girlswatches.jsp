<%--
  Created by IntelliJ IDEA.
  User: Dinu
  Date: 1/19/2025
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    .hero-section {
        min-height: 500px;
        height: 500px;
        overflow: hidden;
        background-color: #f8f9fa;
    }

    .hero-image {
        width: 900px;
        height: 700px;
        object-fit: cover;
    }

    .product-card {
        position: relative;
        padding: 20px;
        transition: transform 0.3s;
    }

    .product-card:hover {
        transform: translateY(-5px);
    }

    .favorite-btn {
        position: absolute;
        top: 20px;
        right: 20px;
        background: none;
        border: none;
        font-size: 24px;
        color: #ccc;
        cursor: pointer;
    }

    .favorite-btn:hover {
        color: #ff4d4d;
    }

    .product-image {
        width: 100%;
        height: auto;
        margin-bottom: 15px;
    }

    .filter-sort-btn {
        position: fixed;
        bottom: 20px;
        right: 20px;
        z-index: 1000;
        padding: 12px 24px;
        border-radius: 25px;
        background-color: #fff;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    }

    .results-count {
        color: #666;
        font-size: 14px;
        margin: 20px 0;
    }

    .footer {
        background-color: #333;
        color: #fff;
        padding: 60px 0 30px;
    }

    .footer h5 {
        color: #fff;
        font-weight: 600;
        margin-bottom: 20px;
    }

    .footer-links {
        list-style: none;
        padding: 0;
    }

    .footer-links li {
        margin-bottom: 10px;
    }

    .footer-links a {
        color: #aaa;
        text-decoration: none;
        transition: color 0.3s;
    }

    .footer-links a:hover {
        color: #fff;
    }

    .social-icons a {
        color: #fff;
        margin-right: 15px;
        font-size: 20px;
    }

    .footer-bottom {
        border-top: 1px solid #555;
        margin-top: 30px;
        padding-top: 20px;
        text-align: center;
    }

</style>

<body>

<div class="hero-section">
    <img src="imges/img_27.png"  class="hero-image">
</div>


<div class="container mt-5">
    <h1 class="display-4">Men Watches</h1>
    <p class="lead">Discover our selection of men watches. To gift or to wear, find the perfect masculine timepiece amongst our selection of classic, sporty or design styles.</p>
    <div class="results-count">338 RESULTS</div>
</div>

<div class="container mt-4">
    <div class="row g-4">


<div class="container mt-4">
    <div class="row g-4">

        <div class="col-md-6 col-lg-3">
            <div class="product-card">
                <button class="favorite-btn">♡</button>
                <a href="girl1.jsp">                 <img src="imges/img_33.png" alt="Tissot Watch with Blue Dial" class="product-image">
                </a>
                <h5>PRX 35mm</h5>
                <p class="text-muted">Automatic</p>
            </div>
        </div>



        <div class="col-md-6 col-lg-3">
            <div class="product-card">
                <button class="favorite-btn">♡</button>
                <a href="girl2.jsp">                <img src="imges/img_35.png" alt="Tissot Watch with Light Blue Dial" class="product-image">
                </a>
                <h5>PRX Powermatic 80</h5>
                <p class="text-muted">Automatic</p>
            </div>
        </div>



        <div class="col-md-6 col-lg-3">
            <div class="product-card">
                <button class="favorite-btn">♡</button>
                <a href="girl4.jsp">                <img src="imges/img_36.png" alt="Tissot Watch with Blue Gradient Dial" class="product-image">
                </a>
                <h5>PRX Powermatic 80</h5>
                <p class="text-muted">Automatic</p>
            </div>
        </div>
    </div>
</div>


<footer class="footer">
    <div class="container">
        <div class="row">

            <div class="col-md-4 mb-4">
                <h5>About Us</h5>
                <p>Your company description goes here. Add a brief overview of your business and its mission.</p>
            </div>

            <div class="col-md-4 mb-4">
                <h5>Quick Links</h5>
                <ul class="footer-links">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </div>


            <div class="col-md-4 mb-4">
                <h5>Contact Us</h5>
                <ul class="footer-links">
                    <li>Dinithi Lakshani</li>

                    <li>Phone: 077 6789890</li>
                    <li>Email: dinithi.com</li>
                </ul>


                <div class="social-icons mt-3">
                    <a href="#"><i class="fab fa-facebook"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-linkedin"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>


        <div class="footer-bottom">
            <p class="mb-0">&copy; 2025 Your Company Name. All rights reserved.</p>
        </div>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</div>
</body>
</html>

