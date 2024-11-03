<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<head>
    <style>
        body {
            background: linear-gradient(135deg, #ff7e5f, #feb47b); /* Interesting gradient background */
            font-family: 'Arial', sans-serif; /* Modern font */
            margin: 0; /* Reset default margin */
            padding: 0; /* Reset default padding */
        }

        .site-wrap {
            background-color: rgba(255, 255, 255, 0.9); /* Light background for content area */
            border-radius: 10px; /* Rounded corners for site wrap */
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1); /* Subtle shadow */
            margin: 20px; /* Space around the site wrap */
        }

        .bg-light {
            background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background for the header */
        }

        .text-black {
            color: #333; /* Dark text color for headers */
        }

        .table {
            background-color: #ffffff; /* White background for the table */
            border-radius: 8px; /* Rounded corners for table */
            overflow: hidden; /* To ensure the border radius works */
        }

        th {
            background-color: #6c63ff; /* Header background color */
            color: white; /* White text color for header */
        }

        td {
            color: #333; /* Dark text color for table cells */
        }

        th, td {
            padding: 15px; /* Padding for table cells */
            text-align: center; /* Centered text */
        }

        .container {
            padding: 30px; /* Padding for the container */
        }
    </style>
</head>

<body>
<div class="site-wrap">
    <jsp:include page="templates/header.jsp"/>

    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0">
                    <a href="/"> Home </a>
                    <span class="mx-2 mb-0">/</span>
                    <a href="order-history">Orders History</a>
                    <span class="mx-2 mb-0">/</span>
                    <strong class="text-black">Order Detail</strong>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section" data-aos="fade-in">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-12">
                    <div class="site-blocks-table">
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th>Product ID</th>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Total</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${order_detail_list}" var="o">
                                <tr>
                                    <td>${o.product.id}</td>
                                    <td>${o.quantity}</td>
                                    <td>$${o.price}</td>
                                    <td>$${o.price * o.quantity}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="templates/footer.jsp"/>
</div>

<jsp:include page="templates/scripts.jsp"/>
</body>
</html>