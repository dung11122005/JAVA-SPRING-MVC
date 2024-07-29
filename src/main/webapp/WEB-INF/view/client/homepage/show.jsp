<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Trang chủ - Laptopshop</title>

                <!-- Google Web Fonts -->
                <link rel="preconnect" href="https://fonts.googleapis.com">
                <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
                <link
                    href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
                    rel="stylesheet">

                <!-- Icon Font Stylesheet -->
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
                <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
                    rel="stylesheet">
                <link rel="stylesheet"
                    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                <!-- Libraries Stylesheet -->
                <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
                <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


                <!-- Customized Bootstrap Stylesheet -->
                <link href="/client/css/bootstrap.min.css" rel="stylesheet">

                <!-- Template Stylesheet -->
                <link href="/client/css/style.css" rel="stylesheet">

                <style>
                    /* Add this CSS to your stylesheet */
                    .dropdown-menu {
                        display: none;
                    }

                    .dropdown:hover .dropdown-menu {
                        display: block;
                        right: 0px;
                    }
                </style>


            </head>

            <body>

                <!-- Spinner Start -->
                <div id="spinner"
                    class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
                    <div class="spinner-grow text-primary" role="status"></div>
                </div>
                <!-- Spinner End -->



                <jsp:include page="../layout/header.jsp" />





                <jsp:include page="../layout/banner.jsp" />







                <!-- Fruits Shop Start-->
                <div class="container-fluid fruite py-5">
                    <div class="container py-5">
                        <div class="tab-class text-center">
                            <div class="row g-4">
                                <div class="col-lg-4 text-start">
                                    <h1>Sản phẩm nổi bật</h1>
                                </div>
                                <div class="col-lg-8 text-end">
                                    <ul class="nav nav-pills d-inline-flex text-center mb-5">
                                        <li class="nav-item">
                                            <a class="d-flex m-2 py-2 bg-light rounded-pill active"
                                                data-bs-toggle="pill" href="#tab-1">
                                                <span class="text-dark" style="width: 130px;">All Products</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-content">
                                <div id="tab-1" class="tab-pane fade show p-0 active">
                                    <div class="row g-4">
                                        <div class="col-lg-12">
                                            <div class="row g-4">
                                                <c:forEach var="product" items="${products}">

                                                    <div class="col-md-6 col-lg-4 col-xl-3">
                                                        <div class="rounded position-relative fruite-item">
                                                            <div class="fruite-img">
                                                                <img src="/images/product/${product.image}"
                                                                    class="img-fluid w-100 rounded-top" alt="">
                                                            </div>
                                                            <div class="text-white bg-secondary px-3 py-1 rounded position-absolute"
                                                                style="top: 10px; left: 10px;">Laptop</div>
                                                            <div
                                                                class="p-4 border border-secondary border-top-0 rounded-bottom">
                                                                <h4 style="font-size: 15px;">
                                                                    <a href="/product/${product.id}">
                                                                        ${product.name}</a>
                                                                </h4>
                                                                <p style="font-size: 13px;">${product.shortDesc}</p>
                                                                <div
                                                                    class="d-flex justify-content-between flex-lg-wrap">
                                                                    <p style="font-size: 15px; text-align: center; width: 100%;"
                                                                        class="text-dark fw-bold mb-3">
                                                                        <fmt:formatNumber type="number"
                                                                            value="${product.price}" /> đ

                                                                    </p>
                                                                    <a href="#"
                                                                        class="mx-auto btn border border-secondary rounded-pill px-3 text-primary"><i
                                                                            class="fa fa-shopping-bag me-2 text-primary"></i>
                                                                        Add to cart</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>


                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Fruits Shop End-->



                <!-- Featurs Start -->
                <!-- <div class="container-fluid service py-5">
                <div class="container py-5">
                    <div class="row g-4 justify-content-center">
                        <div class="col-md-6 col-lg-4">
                            <a href="#">
                                <div class="service-item bg-secondary rounded border border-secondary">
                                    <img src="/client/img/featur-1.jpg" class="img-fluid rounded-top w-100" alt="">
                                    <div class="px-4 rounded-bottom">
                                        <div class="service-content bg-primary text-center p-4 rounded">
                                            <h5 class="text-white">Fresh Apples</h5>
                                            <h3 class="mb-0">20% OFF</h3>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <a href="#">
                                <div class="service-item bg-dark rounded border border-dark">
                                    <img src="/client/img/featur-2.jpg" class="img-fluid rounded-top w-100" alt="">
                                    <div class="px-4 rounded-bottom">
                                        <div class="service-content bg-light text-center p-4 rounded">
                                            <h5 class="text-primary">Tasty Fruits</h5>
                                            <h3 class="mb-0">Free delivery</h3>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-6 col-lg-4">
                            <a href="#">
                                <div class="service-item bg-primary rounded border border-primary">
                                    <img src="/client/img/featur-3.jpg" class="img-fluid rounded-top w-100" alt="">
                                    <div class="px-4 rounded-bottom">
                                        <div class="service-content bg-secondary text-center p-4 rounded">
                                            <h5 class="text-white">Exotic Vegitable</h5>
                                            <h3 class="mb-0">Discount 30$</h3>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div> -->
                <!-- Featurs End -->


                <jsp:include page="../layout/carousel.jsp" />



                <!-- Bestsaler Product Start -->
                <div class="container-fluid py-5">
                    <div class="container py-5">
                        <div class="text-center mx-auto mb-5" style="max-width: 700px;">
                            <h1 class="display-4">Bestseller Products</h1>
                            <p>Latin words, combined with a handful of model sentence structures, to generate Lorem
                                Ipsum
                                which looks reasonable.</p>
                        </div>
                        <div class="row g-4">
                            <div class="col-lg-6 col-xl-4">
                                <div class="p-4 rounded bg-light">
                                    <div class="row align-items-center">
                                        <div class="col-6">
                                            <img src="/client/img/best-product-1.jpg"
                                                class="img-fluid rounded-circle w-100" alt="">
                                        </div>
                                        <div class="col-6">
                                            <a href="#" class="h5">Organic Tomato</a>
                                            <div class="d-flex my-3">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <h4 class="mb-3">3.12 $</h4>
                                            <a href="#"
                                                class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                    class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-4">
                                <div class="p-4 rounded bg-light">
                                    <div class="row align-items-center">
                                        <div class="col-6">
                                            <img src="/client/img/best-product-2.jpg"
                                                class="img-fluid rounded-circle w-100" alt="">
                                        </div>
                                        <div class="col-6">
                                            <a href="#" class="h5">Organic Tomato</a>
                                            <div class="d-flex my-3">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <h4 class="mb-3">3.12 $</h4>
                                            <a href="#"
                                                class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                    class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-4">
                                <div class="p-4 rounded bg-light">
                                    <div class="row align-items-center">
                                        <div class="col-6">
                                            <img src="/client/img/best-product-3.jpg"
                                                class="img-fluid rounded-circle w-100" alt="">
                                        </div>
                                        <div class="col-6">
                                            <a href="#" class="h5">Organic Tomato</a>
                                            <div class="d-flex my-3">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <h4 class="mb-3">3.12 $</h4>
                                            <a href="#"
                                                class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                    class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-4">
                                <div class="p-4 rounded bg-light">
                                    <div class="row align-items-center">
                                        <div class="col-6">
                                            <img src="/client/img/best-product-4.jpg"
                                                class="img-fluid rounded-circle w-100" alt="">
                                        </div>
                                        <div class="col-6">
                                            <a href="#" class="h5">Organic Tomato</a>
                                            <div class="d-flex my-3">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <h4 class="mb-3">3.12 $</h4>
                                            <a href="#"
                                                class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                    class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-4">
                                <div class="p-4 rounded bg-light">
                                    <div class="row align-items-center">
                                        <div class="col-6">
                                            <img src="/client/img/best-product-5.jpg"
                                                class="img-fluid rounded-circle w-100" alt="">
                                        </div>
                                        <div class="col-6">
                                            <a href="#" class="h5">Organic Tomato</a>
                                            <div class="d-flex my-3">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <h4 class="mb-3">3.12 $</h4>
                                            <a href="#"
                                                class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                    class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-xl-4">
                                <div class="p-4 rounded bg-light">
                                    <div class="row align-items-center">
                                        <div class="col-6">
                                            <img src="/client/img/best-product-6.jpg"
                                                class="img-fluid rounded-circle w-100" alt="">
                                        </div>
                                        <div class="col-6">
                                            <a href="#" class="h5">Organic Tomato</a>
                                            <div class="d-flex my-3">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                            <h4 class="mb-3">3.12 $</h4>
                                            <a href="#"
                                                class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                    class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xl-3">
                                <div class="text-center">
                                    <img src="/client/img/fruite-item-1.png" class="img-fluid rounded" alt="">
                                    <div class="py-4">
                                        <a href="#" class="h5">Organic Tomato</a>
                                        <div class="d-flex my-3 justify-content-center">
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <h4 class="mb-3">3.12 $</h4>
                                        <a href="#"
                                            class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xl-3">
                                <div class="text-center">
                                    <img src="/client/img/fruite-item-2.png" class="img-fluid rounded" alt="">
                                    <div class="py-4">
                                        <a href="#" class="h5">Organic Tomato</a>
                                        <div class="d-flex my-3 justify-content-center">
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <h4 class="mb-3">3.12 $</h4>
                                        <a href="#"
                                            class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xl-3">
                                <div class="text-center">
                                    <img src="/client/img/fruite-item-1.png" class="img-fluid rounded" alt="">
                                    <div class="py-4">
                                        <a href="#" class="h5">Organic Tomato</a>
                                        <div class="d-flex my-3 justify-content-center">
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <h4 class="mb-3">3.12 $</h4>
                                        <a href="#"
                                            class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-xl-3">
                                <div class="text-center">
                                    <img src="/client/img/fruite-item-1.png" class="img-fluid rounded" alt="">
                                    <div class="py-2">
                                        <a href="#" class="h5">Organic Tomato</a>
                                        <div class="d-flex my-3 justify-content-center">
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star text-primary"></i>
                                            <i class="fas fa-star"></i>
                                        </div>
                                        <h4 class="mb-3">3.12 $</h4>
                                        <a href="#"
                                            class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Bestsaler Product End -->


                <!-- Banner Section Start-->
                <div class="container-fluid banner bg-secondary my-5">
                    <div class="container py-5">
                        <div class="row g-4 align-items-center">
                            <div class="col-lg-6">
                                <div class="py-4">
                                    <h1 class="display-3 text-white">Fresh Exotic Fruits</h1>
                                    <p class="fw-normal display-3 text-dark mb-4">in Our Store</p>
                                    <p class="mb-4 text-dark">The generated Lorem Ipsum is therefore always free from
                                        repetition injected humour, or non-characteristic words etc.</p>
                                    <a href="#"
                                        class="banner-btn btn border-2 border-white rounded-pill text-dark py-3 px-5">BUY</a>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="position-relative">
                                    <img src="/client/img/baner-1.png" class="img-fluid w-100 rounded" alt="">
                                    <div class="d-flex align-items-center justify-content-center bg-white rounded-circle position-absolute"
                                        style="width: 140px; height: 140px; top: 0; left: 0;">
                                        <h1 style="font-size: 100px;">1</h1>
                                        <div class="d-flex flex-column">
                                            <span class="h2 mb-0">50$</span>
                                            <span class="h4 text-muted mb-0">kg</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Banner Section End -->

                <jsp:include page="../layout/feature.jsp" />

                <!-- Tastimonial Start -->
                <div class="container-fluid testimonial py-5">
                    <div class="container py-5">
                        <div class="testimonial-header text-center">
                            <h4 class="text-primary">Our Testimonial</h4>
                            <h1 class="display-5 mb-5 text-dark">Our Client Saying!</h1>
                        </div>
                        <div class="owl-carousel testimonial-carousel">
                            <div class="testimonial-item img-border-radius bg-light rounded p-4">
                                <div class="position-relative">
                                    <i class="fa fa-quote-right fa-2x text-secondary position-absolute"
                                        style="bottom: 30px; right: 0;"></i>
                                    <div class="mb-4 pb-4 border-bottom border-secondary">
                                        <p class="mb-0">Lorem Ipsum is simply dummy text of the printing Ipsum has been
                                            the
                                            industry's standard dummy text ever since the 1500s,
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center flex-nowrap">
                                        <div class="bg-secondary rounded">
                                            <img src="/client/img/testimonial-1.jpg" class="img-fluid rounded"
                                                style="width: 100px; height: 100px;" alt="">
                                        </div>
                                        <div class="ms-4 d-block">
                                            <h4 class="text-dark">Client Name</h4>
                                            <p class="m-0 pb-3">Profession</p>
                                            <div class="d-flex pe-5">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="testimonial-item img-border-radius bg-light rounded p-4">
                                <div class="position-relative">
                                    <i class="fa fa-quote-right fa-2x text-secondary position-absolute"
                                        style="bottom: 30px; right: 0;"></i>
                                    <div class="mb-4 pb-4 border-bottom border-secondary">
                                        <p class="mb-0">Lorem Ipsum is simply dummy text of the printing Ipsum has been
                                            the
                                            industry's standard dummy text ever since the 1500s,
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center flex-nowrap">
                                        <div class="bg-secondary rounded">
                                            <img src="/client/img/testimonial-1.jpg" class="img-fluid rounded"
                                                style="width: 100px; height: 100px;" alt="">
                                        </div>
                                        <div class="ms-4 d-block">
                                            <h4 class="text-dark">Client Name</h4>
                                            <p class="m-0 pb-3">Profession</p>
                                            <div class="d-flex pe-5">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="testimonial-item img-border-radius bg-light rounded p-4">
                                <div class="position-relative">
                                    <i class="fa fa-quote-right fa-2x text-secondary position-absolute"
                                        style="bottom: 30px; right: 0;"></i>
                                    <div class="mb-4 pb-4 border-bottom border-secondary">
                                        <p class="mb-0">Lorem Ipsum is simply dummy text of the printing Ipsum has been
                                            the
                                            industry's standard dummy text ever since the 1500s,
                                        </p>
                                    </div>
                                    <div class="d-flex align-items-center flex-nowrap">
                                        <div class="bg-secondary rounded">
                                            <img src="/client/img/testimonial-1.jpg" class="img-fluid rounded"
                                                style="width: 100px; height: 100px;" alt="">
                                        </div>
                                        <div class="ms-4 d-block">
                                            <h4 class="text-dark">Client Name</h4>
                                            <p class="m-0 pb-3">Profession</p>
                                            <div class="d-flex pe-5">
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                                <i class="fas fa-star text-primary"></i>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Tastimonial End -->


                <jsp:include page="../layout/footer.jsp" />



                <!-- Back to Top -->
                <a href="#" class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
                        class="fa fa-arrow-up"></i></a>


                <!-- JavaScript Libraries -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
                <script src="/client/lib/easing/easing.min.js"></script>
                <script src="/client/lib/waypoints/waypoints.min.js"></script>
                <script src="/client/lib/lightbox/js/lightbox.min.js"></script>
                <script src="/client/lib/owlcarousel/owl.carousel.min.js"></script>

                <!-- Template Javascript -->
                <script src="/client/js/main.js"></script>
            </body>

            </html>