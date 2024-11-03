<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<style>
    body {
        background-color: #ffffe0; /* Light yellow background color */
        font-family: Arial, sans-serif; /* Modern font */
    }

    .site-wrap {
        padding: 20px;
    }

    .bg-light {
        background-color: #f7f7f7; /* Light grey background for the header */
    }

    .border {
        border: 1px solid #d0d0d0; /* Subtle border for sections */
        border-radius: 8px; /* Rounded corners */
    }

    .form-control {
        border: 1px solid #ced4da; /* Standard border color */
        border-radius: 0.25rem; /* Rounded input corners */
        padding: 12px; /* Padding for input */
    }

    .form-group {
        margin-bottom: 1.5rem; /* Space between input groups */
    }

    .btn-primary {
        background-color: #007bff; /* Primary color for buttons */
        border: none; /* No border */
        border-radius: 5px; /* Rounded corners */
        padding: 15px; /* Padding for buttons */
        width: 100%; /* Full width */
        font-size: 1.1rem; /* Slightly larger font for buttons */
        transition: background-color 0.3s; /* Smooth transition for hover */
    }

    .btn-primary:hover {
        background-color: #0056b3; /* Darker blue on hover */
    }

    .text-danger {
        font-weight: bold; /* Bold for required field indication */
    }

    h2.h3 {
        font-weight: bold; /* Bold headings */
        color: #343a40; /* Darker text color */
    }

    .text-black {
        color: #343a40; /* Standard text color */
    }

    .ml-auto {
        margin-left: auto; /* Align to the right */
    }

    .p-3 {
        padding: 20px; /* Uniform padding */
    }

    /* Responsive image style */
    img {
        border-radius: 5px; /* Rounded image corners */
    }
</style>

<body>
<div class="site-wrap">
    <jsp:include page="templates/header.jsp"/>

    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0">
                    <a href="/">Home</a>
                    <span class="mx-2 mb-0">/</span>
                    <strong class="text-black">Edit Product</strong>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="h3 mb-3 text-black">Product Information</h2>
                </div>

                <div class="col-md-7">
                    <form action="edit-product" method="post" enctype="multipart/form-data">
                        <div class="p-3 border">
                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="id" class="text-black">Product ID <span class="text-danger">*</span></label>
                                    <input name="product-id" type="text" class="form-control" id="id" value="${product.id}" readonly>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="name" class="text-black">Name <span class="text-danger">*</span></label>
                                    <input name="product-name" type="text" class="form-control" id="name" value="${product.name}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="image" class="text-black">Image <span class="text-danger">*</span></label>
                                    <input name="product-image" type="file" class="form-control" id="image">
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="price" class="text-black">Price <span class="text-danger">*</span></label>
                                    <input name="product-price" type="number" class="form-control" id="price" value="${product.price}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="description" class="text-black">Description <span class="text-danger">*</span></label>
                                    <textarea name="product-description" id="description" cols="30" rows="7" class="form-control">${product.description}</textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="amount" class="text-black">Amount <span class="text-danger">*</span></label>
                                    <input name="product-amount" type="number" class="form-control" id="amount" value="${product.amount}">
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="category" class="text-black">Category <span class="text-danger">*</span></label>
                                    <select name="product-category" id="category" class="form-control">
                                        <c:forEach items="${category_list}" var="o">
                                            <option value="${o.id}">${o.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-lg-12">
                                    <input type="submit" class="btn btn-primary btn-lg btn-block" value="Edit Product">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="col-md-5 ml-auto">
                    <div class="p-3 border">
                        <img src="data:image/jpg;base64,${product.base64Image}" alt="image" width="100%">
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