<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<style>
    body {
        background-color: #ffcccb; /* Light pink background color */
    }

    .site-wrap {
        padding: 20px;
    }

    .border {
        border: 1px solid #e0e0e0; /* Subtle border for sections */
        border-radius: 8px; /* Rounded corners */
    }

    .form-control {
        border: 1px solid #ced4da; /* Standard border color */
        border-radius: 0.25rem; /* Rounded input corners */
        padding: 10px; /* Padding for input */
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

    .h6 {
        font-size: 1.2rem; /* Increase font size for location headers */
    }

    .text-uppercase {
        text-transform: uppercase; /* Uppercase for location headers */
    }

    .p-4 {
        padding: 20px; /* Uniform padding */
    }

    .col-md-5.ml-auto {
        margin-left: auto; /* Align to the right */
    }
</style>

<body>
<div class="site-wrap">
    <% request.setAttribute("contact_active", "active"); %>
    <jsp:include page="templates/header.jsp"/>

    <div class="bg-light py-3">
        <div class="container">
            <div class="row">
                <div class="col-md-12 mb-0">
                    <a href="index.jsp">Home</a>
                    <span class="mx-2 mb-0">/</span>
                    <strong class="text-black">Contact</strong>
                </div>
            </div>
        </div>
    </div>

    <div class="site-section">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h2 class="h3 mb-3 text-black">Get In Touch</h2>
                </div>

                <div class="col-md-7">
                    <form action="#" method="post">
                        <div class="p-3 p-lg-5 border">
                            <div class="form-group row">
                                <div class="col-md-6">
                                    <label for="c_fname" class="text-black">First Name <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="c_fname" name="c_fname" required>
                                </div>

                                <div class="col-md-6">
                                    <label for="c_lname" class="text-black">Last Name <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" id="c_lname" name="c_lname" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="c_email" class="text-black">Email <span class="text-danger">*</span></label>
                                    <input type="email" class="form-control" id="c_email" name="c_email" required placeholder="">
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="c_subject" class="text-black">Subject</label>
                                    <input type="text" class="form-control" id="c_subject" name="c_subject" placeholder="">
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-md-12">
                                    <label for="c_message" class="text-black">Message</label>
                                    <textarea name="c_message" id="c_message" cols="30" rows="7" class="form-control" placeholder="Type your message here..."></textarea>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-lg-12">
                                    <input type="submit" class="btn btn-primary btn-lg btn-block" value="Send Message">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="col-md-5 ml-auto">
                    <div class="p-4 border mb-3">
                        <span class="d-block text-primary h6 text-uppercase">New York</span>
                        <p class="mb-0">203 Fake St. Mountain View, San Francisco, California, USA</p>
                    </div>

                    <div class="p-4 border mb-3">
                        <span class="d-block text-primary h6 text-uppercase">London</span>
                        <p class="mb-0">203 Fake St. Mountain View, San Francisco, California, USA</p>
                    </div>

                    <div class="p-4 border mb-3">
                        <span class="d-block text-primary h6 text-uppercase">Canada</span>
                        <p class="mb-0">203 Fake St. Mountain View, San Francisco, California, USA</p>
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