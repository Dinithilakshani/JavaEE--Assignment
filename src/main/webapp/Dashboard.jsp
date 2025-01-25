<%--
  Created by IntelliJ IDEA.
  User: Dinu
  Date: 1/24/2025
  Time: 9:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<!DOCTYPE html>
<html>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        .sidebar {
            background-color: #f8f9fa;
            border-right: 1px solid #dee2e6;
        }
        .sidebar .nav-link {
            color: #495057;
        }
        .sidebar .nav-link.active {
            color: #007bff;
            font-weight: bold;
        }
        .card-icon {
            font-size: 54px;
            margin-right: 20px;
        }
        .table td {
            vertical-align: middle;
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
            <div class="d-flex align-items-center">
                <form class="d-flex me-3">
                    <input class="form-control me-2" type="search" placeholder="Search products...">
                    <button class="btn btn-outline-primary" type="submit">
                        <i class="fas fa-search"></i>
                    </button>
                </form>
                <a href="#" class="btn btn-outline-primary me-2">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="badge bg-primary">3</span>
                </a>
                <a href="loginform.jsp" class="btn btn-primary">Login</a>
            </div>
        </div>
    </div>
</nav>
<div class="container-fluid">
    <div class="row">
        <div class="col-3 sidebar py-4">
            <h3 class="mb-4">Dashboard</h3>
            <ul class="nav flex-column">
                <li class="nav-item">
                    <a class="nav-link active" href="#">
                        <i class="fas fa-tachometer-alt me-2"></i>
                        Dashboard
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fas fa-box-open me-2"></i>
                        Products
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fas fa-shopping-bag me-2"></i>
                        Orders
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="catagory.jsp">
                        <i class="fas fa-list-ul me-2"></i>
                        Categories
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fas fa-users me-2"></i>
                        Users
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fas fa-cog me-2"></i>
                        Settings
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link text-danger" href="#">
                        <i class="fas fa-sign-out-alt me-2"></i>
                        Logout
                    </a>
                </li>
            </ul>
        </div>
        <div class="col-9 py-4">
            <div class="row mb-4">
                <div class="col-4">
                    <div class="card bg-primary text-white">
                        <div class="card-body d-flex align-items-center">
                            <i class="fas fa-shopping-bag card-icon"></i>
                            <div>
                                <h4 class="card-title">1,074</h4>
                                <p class="card-text">Paid Orders</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card bg-warning text-white">
                        <div class="card-body d-flex align-items-center">
                            <i class="fas fa-eye card-icon"></i>
                            <div>
                                <h4 class="card-title">3,944</h4>
                                <p class="card-text">Site Visits</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-4">
                    <div class="card bg-success text-white">
                        <div class="card-body d-flex align-items-center">
                            <i class="fas fa-search card-icon"></i>
                            <div>
                                <h4 class="card-title">14,721</h4>
                                <p class="card-text">Searches</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h4 class="card-title">Recent Orders</h4>
                        </div>
                        <div class="card-body">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>User</th>
                                    <th>Order Date</th>
                                    <th>Status</th>
                                    <th>Actions</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <img src="imges/img_37.png" class="rounded-circle me-2" alt="User Avatar"width="70px" height="70px">
                                            <span>John Doe</span>
                                        </div>
                                    </td>
                                    <td>14-08-2023</td>
                                    <td><span class="badge bg-success">Completed</span></td>
                                    <td>
                                        <div class="btn-group">
                                            <button class="btn btn-sm btn-primary">
                                                <i class="fas fa-eye"></i>
                                            </button>
                                            <button class="btn btn-sm btn-warning">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                            <button class="btn btn-sm btn-danger">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <img src="imges/img_38.png" class="rounded-circle me-2" alt="User Avatar"width="70px" height="70px">
                                            <span>Jordhan wiliyam</span>
                                        </div>
                                    </td>
                                    <td>14-08-2023</td>
                                    <td><span class="badge bg-warning">Pending</span></td>
                                    <td>
                                        <div class="btn-group">
                                            <button class="btn btn-sm btn-primary">
                                                <i class="fas fa-eye"></i>
                                            </button>
                                            <button class="btn btn-sm btn-warning">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                            <button class="btn btn-sm btn-danger">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <div class="d-flex align-items-center">
                                            <img src="imges/img_39.png" class="rounded-circle me-2" alt="User Avatar" width="70px" height="70px">
                                            <span>Jekium </span>
                                        </div>
                                    </td>
                                    <td>14-08-2023</td>
                                    <td><span class="badge bg-primary">Processing</span></td>
                                    <td>
                                        <div class="btn-group">
                                            <button class="btn btn-sm btn-primary">
                                                <i class="fas fa-eye"></i>
                                            </button>
                                            <button class="btn btn-sm btn-warning">
                                                <i class="fas fa-edit"></i>
                                            </button>
                                            <button class="btn btn-sm btn-danger">
                                                <i class="fas fa-trash"></i>
                                            </button>
                                        </div>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
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
</body>
</html>