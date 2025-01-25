<%--
  Created by IntelliJ IDEA.
  User: Dinu
  Date: 1/24/2025
  Time: 5:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body{

            background-image: url("imges/img_41.png");
        }
        .form-container {
            max-width: 400px;
            margin: 0 auto;
            padding: 30px;
            background-color: #f5f5f5;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
<% String passwordMisMatch = request.getParameter("passwordMisMatch"); %>
<% String saveSuccessful = request.getParameter("saveSuccess");%>
<section class="h-100 bg-gradient">

<div class="container my-5">
    <div class="form-container">
        <h2 class="mb-4">Customer Registration</h2>
        <form action="user-registration-servlet" method="post">
            <div class="row">
                <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input type="text" id="firstName" name="firstName" class="form-control form-control-lg" required />
                        <label class="form-label" for="firstName">First Name</label>
                    </div>
                </div>
                <div class="col-md-6 mb-4">
                    <div class="form-outline">
                        <input type="text" id="lastName" name="lastName" class="form-control form-control-lg" required />
                        <label class="form-label" for="lastName">Last Name</label>
                    </div>
                </div>
            </div>

            <div class="form-outline mb-4">
                <input type="text" id="username" name="username" class="form-control form-control-lg" required />
                <label class="form-label" for="username">Username</label>
            </div>

            <div class="form-outline mb-4">
                <label class="form-label" for="userType">User Type</label>
                <select id="userType" name="userType" class="form-select form-select-lg" required>
                    <option value="" disabled selected>Select User Type</option>
                    <option value="admin">Admin</option>
                    <option value="customer">Customer</option>
                </select>
            </div>

            <div class="form-outline mb-4">
                <input type="email" id="email" name="email" class="form-control form-control-lg" required />
                <label class="form-label" for="email">Email Address</label>
            </div>

            <div class="form-outline mb-4">
                <input type="password" id="password" name="password" class="form-control form-control-lg" required />
                <label class="form-label" for="password">Password</label>
            </div>

            <div class="form-outline mb-4">
                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control form-control-lg" required />
                <label class="form-label" for="confirmPassword">Confirm Password</label>
            </div>

            <div class="form-outline mb-4">
                <input type="text" id="address" name="address" class="form-control form-control-lg" required />
                <label class="form-label" for="address">Address</label>
            </div>

            <div class="form-outline mb-4">
                <input type="date" id="dob" name="dob" class="form-control form-control-lg" required />
                <label class="form-label" for="dob">Date of Birth</label>
            </div>

            <div class="d-flex justify-content-end pt-3">
                <button type="reset" class="btn btn-light btn-lg">Reset</button>
                <button type="submit" class="btn btn-outline-primary btn-lg ms-2">Submit</button>
            </div>
        </form>
    </div>
</div>
        <%
    if (saveSuccessful !=null){%>
    <!-- Toast Container -->
    <div class="position-fixed bottom-0 end-0 p-3" style="z-index: 11">
        <div id="successToast" class="toast align-items-center text-bg-success border-0" role="alert" aria-live="assertive" aria-atomic="true">
            <div class="d-flex">
                <div class="toast-body">
                    <%=saveSuccessful%>
                </div>
                <button type="button" class="btn-close btn-close-white me-2 m-auto" data-bs-dismiss="toast" aria-label="Close"></button>
            </div>
        </div>
    </div>
        <%}%>


    <script>

        document.addEventListener("DOMContentLoaded", function () {
            const toastElement = document.getElementById('successToast');
            const toast = new bootstrap.Toast(toastElement, { delay: 10000 });
            toast.show();
        });
    </script>
</body>
</html>
