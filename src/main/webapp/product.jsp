<%--
  Created by IntelliJ IDEA.
  User: Dinu
  Date: 1/16/2025
  Time: 6:39 AM
  To change this template use File | Settings | File Templates.

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Watches - Jomashop</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .watch-card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 20px;
            text-align: center;
        }
        .watch-card img {
            max-width: 100%;
            height: auto;
        }
        .watch-card h5 {
            margin-top: 10px;
        }
        .watch-card p {
            font-size: 14px;
            color: #666;
        }
        .watch-card .btn {
            margin-top: 10px;
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
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light shadow-sm" >
    <div class="container" style="position: relative">
        <a class="navbar-brand" href="#">ShopEasy</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav me-auto">
                <li class="nav-item">
                    <a class="nav-link active" href="index.jsp">Home</a>
                </li>


                <li class="nav-item">
                    <a class="nav-link" href="product.jsp">Products</a>
                </li>


            </ul>
        </div>
</nav>
<img src="imges/img_43.png"   width="1000px"  height="600px">

<div class="container my-5">
    <div class="row">
        <div class="col-md-3">
            <div class="watch-card">
                <img src="imges/img_29.png" alt="Watch 1">
                <h5>TISSOT PRX Powermatic 80 Automatic Blue Dial Men's Watch T137.407.11.041.00</h5>
                <p>31% OFF</p>
                <p>$499.00 $725.00</p>
                <button class="btn btn-primary">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-3">
            <div class="watch-card">
                <img src="imges/img_33.png" alt="Watch 2">
                <h5>SEIKO 5 Automatic Black Arabic Dial Men's Watch SNKP21J1</h5>
                <p>48% OFF</p>
                <p>$179.00 $250.00</p>
                <button class="btn btn-primary">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-3">
            <div class="watch-card">
                <img src="imges/img_31.png" alt="Watch 3">
                <h5>OMEGA Speedmaster Racing Automatic Chronograph Men's Watch 329.30.44.51.01.001</h5>
                <p>28% OFF</p>
                <p>$3,450.00 $4,800.00</p>
                <button class="btn btn-primary">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-3">
            <div class="watch-card">
                <img src="imges/img_32.png" alt="Watch 4">
                <h5>SEIKO 5 Automatic Black Dial Stainless Steel Men's Watch SNXS79K1</h5>
                <p>53% OFF</p>
                <p>$118.00 $250.00</p>
                <button class="btn btn-primary">Add to Cart</button>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <div class="watch-card">
                <img src="imges/img_34.png" alt="Watch 1">
                <h5>TISSOT PRX Powermatic 80 Automatic Blue Dial Men's Watch T137.407.11.041.00</h5>
                <p>31% OFF</p>
                <p>$499.00 $725.00</p>
                <button class="btn btn-primary">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-3">
            <div class="watch-card">
                <img src="imges/img_35.png" alt="Watch 2">
                <h5>SEIKO 5 Automatic Black Arabic Dial Men's Watch SNKP21J1</h5>
                <p>48% OFF</p>
                <p>$179.00 $250.00</p>
                <button class="btn btn-primary">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-3">
            <div class="watch-card">
                <img src="imges/img_36.png" alt="Watch 3">
                <h5>OMEGA Speedmaster Racing Automatic Chronograph Men's Watch 329.30.44.51.01.001</h5>
                <p>28% OFF</p>
                <p>$3,450.00 $4,800.00</p>
                <button class="btn btn-primary">Add to Cart</button>
            </div>
        </div>
        <div class="col-md-3">
            <div class="watch-card">
                <img src="imges/img_6.png" alt="Watch 4">
                <h5>SEIKO 5 Automatic Black Dial Stainless Steel Men's Watch SNXS79K1</h5>
                <p>53% OFF</p>
                <p>$118.00 $250.00</p>
                <button class="btn btn-primary">Add to Cart</button>
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
</body>
</html>