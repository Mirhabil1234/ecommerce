<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="templates/head.jsp"/>

<body>
<div class="site-wrap">
    <% request.setAttribute("about_active", "active"); %>
    <jsp:include page="templates/header.jsp"/>

    <div class="bg-dark text-white py-5">
        <div class="container text-center">
            <h1 class="display-4">About Us</h1>
            <p class="lead">Explore our journey and meet the passionate team behind our mission.</p>
        </div>
    </div>

    <div class="container my-5">
        <div class="row mb-4">
            <div class="col-md-6">
                <div class="card border-0 shadow-lg">
                    <img src="static/images/appleproducts.jpeg" class="card-img-top rounded" alt="How We Started">
                    <div class="card-body">
                        <h5 class="card-title">How We Started</h5>
                        <p class="card-text">Our story began with a vision to make a difference. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eius repellat...</p>
                        <a href="https://vimeo.com/channels/staffpicks/93951774" class="btn btn-primary">Watch Video</a>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="card border-0 shadow-lg">
                    <img src="static/images/phones.jpeg" class="card-img-top rounded" alt="The Team">
                    <div class="card-body">
                        <h5 class="card-title">Meet Our Team</h5>
                        <p class="card-text">Our dedicated team works tirelessly to deliver the best service possible.</p>
                        <a href="#team" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>

        <div id="team" class="row text-center mb-5">
            <div class="col">
                <h2 class="display-5">Our Partners</h2>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3 mb-4">
                <div class="card text-center shadow-sm">
                    <img src="static/images/goat.jpeg" class="card-img-top" alt="Elizabeth Graham">
                    <div class="card-body">
                        <h5 class="card-title">Mirhabil Sariyev</h5>
                        <p class="card-text">CEO/Co-Founder</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card text-center shadow-sm">
                    <img src="static/images/kontakthome.png" class="card-img-top" alt="Jennifer Greive">
                    <div class="card-body">
                        <h5 class="card-title">Kontakt Home</h5>
                        <p class="card-text">Cihazlar</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card text-center shadow-sm">
                    <img src="static/images/bakuelectronics.png" class="card-img-top" alt="Patrick Marx">
                    <div class="card-body">
                        <h5 class="card-title">Baku Electronics</h5>
                        <p class="card-text">Məişət texnikası</p>
                    </div>
                </div>
            </div>
            <div class="col-md-3 mb-4">
                <div class="card text-center shadow-sm">
                    <img src="static/images/irsad.png" class="card-img-top" alt="Mike Coolbert">
                    <div class="card-body">
                        <h5 class="card-title">İrşad Electronics</h5>
                        <p class="card-text">Mebel</p>
                    </div>
                </div>
            </div>
        </div>

        <div class="row my-5">
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Free Shipping</h5>
                        <p class="card-text">Enjoy free shipping on all orders, no minimum purchase required!</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">Easy Returns</h5>
                        <p class="card-text">If you're not satisfied, return your product hassle-free!</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 mb-4">
                <div class="card text-center">
                    <div class="card-body">
                        <h5 class="card-title">24/7 Support</h5>
                        <p class="card-text">Our customer support team is here to help you at any time!</p>
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