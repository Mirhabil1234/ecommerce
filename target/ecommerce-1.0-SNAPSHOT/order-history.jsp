<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<head>
    <style>
        body {
            background: linear-gradient(to right, #00c6ff, #0072ff); /* Vibrant gradient background */
            font-family: 'Arial', sans-serif; /* Clean font for modern look */
            margin: 0; /* Remove default margin */
        }

        .site-wrap {
            background-color: #f8f9fa; /* Light gray background for the content area */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
            margin: 20px auto; /* Center the content with margins */
            max-width: 1200px; /* Max width for larger screens */
            padding: 20px; /* Padding around the content */
        }

        .bg-light {
            background-color: #ffffff; /* White background for the header */
            border-radius: 8px; /* Rounded corners */
            padding: 15px; /* Padding inside the header */
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Soft shadow */
        }

        .text-black {
            color: #333; /* Dark text for clarity */
            font-weight: bold; /* Bold for emphasis */
        }

        .table {
            background-color: #ffffff; /* Table background */
            border-radius: 8px; /* Rounded corners */
            overflow: hidden; /* Ensure corners are rounded */
            margin-top: 20px; /* Space above the table */
        }

        th {
            background-color: #0072ff; /* Header color */
            color: white; /* White text for headers */
        }

        th, td {
            padding: 12px; /* Padding for table cells */
            text-align: center; /* Centered text */
        }

        tr:hover {
            background-color: #f1f1f1; /* Highlight row on hover */
        }

        .btn-primary {
            background-color: #28a745; /* Green button */
            border: none; /* No border */
        }

        .btn-primary:hover {
            background-color: #218838; /* Darker green on hover */
        }

        .container {
            padding: 30px; /* Padding around the container */
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
                    <a href="/">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Order History</strong>
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
                                <th>ID</th>
                                <th>Total</th>
                                <th>Date</th>
                                <th style="min-width: 195px">Detail</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${order_list}" var="o">
                                <tr>
                                    <td>${o.id}</td>
                                    <td>$${o.total}</td>
                                    <td>${o.date}</td>
                                    <td>
                                        <a href="order-detail?order-id=${o.id}" class="btn btn-primary btn-sm">
                                            <span class="icon icon-arrow-right"></span> View Details
                                        </a>
                                    </td>
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