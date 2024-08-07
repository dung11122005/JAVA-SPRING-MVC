<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <html lang="en">

            <head>
                <meta charset="utf-8">
                <title>${product.name} - Laptopshop</title>
                <meta content="width=device-width, initial-scale=1.0" name="viewport">
                <meta content="" name="keywords">
                <meta content="" name="description">

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

                <!-- Libraries Stylesheet -->
                <link href="/client/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
                <link href="/client/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


                <!-- Customized Bootstrap Stylesheet -->
                <link href="/client/css/bootstrap.min.css" rel="stylesheet">

                <!-- Template Stylesheet -->
                <link href="/client/css/style.css" rel="stylesheet">
                <meta name="_csrf" content="${_csrf.token}" />
                <!-- default header name is X-CSRF-TOKEN -->
                <meta name="_csrf_header" content="${_csrf.headerName}" />
                <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.css"
                    rel="stylesheet">
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


                <!-- Modal Search Start -->
                <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                    aria-hidden="true">
                    <div class="modal-dialog modal-fullscreen">
                        <div class="modal-content rounded-0">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Search by keyword</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body d-flex align-items-center">
                                <div class="input-group w-75 mx-auto d-flex">
                                    <input type="search" class="form-control p-3" placeholder="keywords"
                                        aria-describedby="search-icon-1">
                                    <span id="search-icon-1" class="input-group-text p-3"><i
                                            class="fa fa-search"></i></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal Search End -->


                <!-- Single Page Header start -->
                <div style="margin-bottom: -70px;" class="container-fluid page-header py-1">
                    <h3 class="text-center text-white">Chi tiết sản phẩm</h3>
                    <ol class="breadcrumb justify-content-center mb-0">
                        <li class="breadcrumb-item active text-white">Vui chơi có thưởng khi mua trực tiếp tại cửa hàng
                        </li>
                    </ol>
                </div>
                <!-- Single Page Header End -->


                <!-- Single Product Start -->
                <div class="container-fluid py-5">
                    <div class="container py-5">
                        <div class="row g-4 mb-5">
                            <div class="col-lg-8 col-xl-9">
                                <div>
                                    <ol class="breadcrumb mb-4">
                                        <li class="breadcrumb-item active"><a href="/">Home</a></li>
                                        <li class="breadcrumb-item active">Chi tiết sản phẩm</li>
                                    </ol>
                                </div>
                                <div class="row g-4">
                                    <div class="col-lg-6">
                                        <div class="border rounded">
                                            <a href="#">
                                                <img src="/images/product/${product.image}" class="img-fluid rounded"
                                                    alt="Image">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="col-lg-6">
                                        <h4 class="fw-bold mb-3">${product.name}</h4>
                                        <p class="mb-3">${product.factory}</p>
                                        <h5 class="fw-bold mb-3">
                                            <fmt:formatNumber type="number" value="${product.price}" /> đ
                                        </h5>

                                        <c:if test="${product.sta == '5'}">
                                            <div class="d-flex mb-4">
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                            </div>
                                        </c:if>
                                        <c:if test="${product.sta == '4'}">
                                            <div class="d-flex mb-4">
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </c:if>
                                        <c:if test="${product.sta == '3'}">
                                            <div class="d-flex mb-4">
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </c:if>
                                        <c:if test="${product.sta == '2'}">
                                            <div class="d-flex mb-4">
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </c:if>
                                        <c:if test="${product.sta == '1'}">
                                            <div class="d-flex mb-4">
                                                <i class="fa fa-star text-secondary"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                            </div>
                                        </c:if>

                                        <p class="mb-4">${product.shortDesc}</p>

                                        <div class="input-group quantity mb-5" style="width: 100px;">
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-minus rounded-circle bg-light border">
                                                    <i class="fa fa-minus"></i>
                                                </button>
                                            </div>
                                            <input type="text" class="form-control form-control-sm text-center border-0"
                                                value="1" data-cart-detail-index="0">
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-plus rounded-circle bg-light border">
                                                    <i class="fa fa-plus"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <!-- <form action="/add-product-from-view-detail" method="post"
                                            modelAttribute="product"> -->
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <input class="form-control d-none" type="text" value="${product.id}"
                                            name="id" />

                                        <input class="form-control d-none" type="text" name="quantity"
                                            id="cartDetails0.quantity" value="1" />
                                        <button data-product-id="${product.id}"
                                            class="btnAddToCartHomepage btn border border-secondary rounded-pill px-4 py-2 mb-4 text-primary">
                                            <i class="fa fa-shopping-bag me-2 text-primary"></i> Add to
                                            cart</button>
                                        <!-- </form> -->
                                    </div>
                                    <div class="col-lg-12">
                                        <nav>
                                            <div class="nav nav-tabs mb-3">
                                                <button class="nav-link active border-white border-bottom-0"
                                                    type="button" role="tab" id="nav-about-tab" data-bs-toggle="tab"
                                                    data-bs-target="#nav-about" aria-controls="nav-about"
                                                    aria-selected="true">Description</button>
                                                <button class="nav-link border-white border-bottom-0" type="button"
                                                    role="tab" id="nav-mission-tab" data-bs-toggle="tab"
                                                    data-bs-target="#nav-mission" aria-controls="nav-mission"
                                                    aria-selected="false">Reviews</button>
                                            </div>
                                        </nav>
                                        <div class="tab-content mb-5">
                                            <div class="tab-pane active" id="nav-about" role="tabpanel"
                                                aria-labelledby="nav-about-tab">
                                                <p>${product.detailDesc} </p>

                                                <div class="px-2">
                                                    <div class="row g-4">
                                                        <div class="col-6">
                                                            <div
                                                                class="row bg-light align-items-center text-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Weight</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">1 kg</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Country of Origin</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">Agro Farm</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row bg-light text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Quality</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">Organic</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Сheck</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">Healthy</p>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="row bg-light text-center align-items-center justify-content-center py-2">
                                                                <div class="col-6">
                                                                    <p class="mb-0">Min Weight</p>
                                                                </div>
                                                                <div class="col-6">
                                                                    <p class="mb-0">250 Kg</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="tab-pane" id="nav-mission" role="tabpanel"
                                                aria-labelledby="nav-mission-tab">
                                                <c:forEach var="comment" items="${comments}">
                                                    <div class="d-flex">
                                                        <img src="/images/avatar/${comment.user.avatar}"
                                                            class="img-fluid rounded-circle p-3" style="width: 100px; height: 100px;overflow: hidden;  display: flex;
                                                justify-content: center; align-items: center; object-fit: cover;"
                                                            alt="">
                                                        <div class="">
                                                            <div class="d-flex justify-content-between">
                                                                <h5>${comment.user.fullName}</h5>
                                                                <c:if test="${comment.sta== '5'}">
                                                                    <div style="margin-left: 20px;" class="d-flex mb-3">
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${comment.sta== '4'}">
                                                                    <div style="margin-left: 20px;" class="d-flex mb-3">
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${comment.sta== '3'}">
                                                                    <div style="margin-left: 20px;" class="d-flex mb-3">
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${comment.sta== '2'}">
                                                                    <div style="margin-left: 20px;" class="d-flex mb-3">
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${comment.sta== '1'}">
                                                                    <div style="margin-left: 20px;" class="d-flex mb-3">
                                                                        <i class="fa fa-star text-secondary"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                        <i class="fa fa-star"></i>
                                                                    </div>
                                                                </c:if>
                                                            </div>
                                                            <p>${comment.description} </p>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                    <form method="post" action="/confirm-comment">
                                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                        <h4 class="mb-4 fw-bold">Hãy để lại 1 bình luận</h4>
                                        <div class="col-lg-12 mb-4">
                                            <div class="mb-2"><b>Đánh giá</b></div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-1" value="1"
                                                    name="radio-sort">
                                                <label class="form-check-label" for="sort-1"><i
                                                        class="fa fa-star text-secondary"></i>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-2" value="2"
                                                    name="radio-sort">
                                                <label class="form-check-label" for="sort-2">
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                </label>
                                            </div>

                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-3" value="3"
                                                    name="radio-sort">
                                                <label class="form-check-label" for="sort-3">
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>

                                                </label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-4" value="4"
                                                    name="radio-sort">
                                                <label class="form-check-label" for="sort-4">
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>

                                                </label>
                                            </div>
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" type="radio" id="sort-5" checked
                                                    value="5" name="radio-sort">
                                                <label class="form-check-label" for="sort-5">
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>
                                                    <i class="fa fa-star text-secondary"></i>

                                                </label>
                                            </div>
                                        </div>
                                        <div class="row g-4">
                                            <div class="col-lg-12">
                                                <div class="border-bottom rounded my-4">
                                                    <textarea name="description" class="form-control border-0" cols="30"
                                                        rows="2" placeholder="Miêu tả của bạn *" required
                                                        spellcheck="false"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div style="display: none;">
                                            <input class="form-check-input" value="${product.id}" name="id">
                                        </div>
                                        <button style="width: 200px;" id="btnConfirmComment"
                                            class="btn border border-secondary text-primary rounded-pill px-4 py-3">
                                            Đăng bình luận
                                        </button>
                                    </form>
                                </div>
                            </div>
                            <div class="col-lg-4 col-xl-3">
                                <div class="row g-4 fruite">
                                    <div class="col-lg-12">
                                        <div class="input-group w-100 mx-auto d-flex mb-4">
                                            <input type="search" class="form-control p-3" placeholder="keywords"
                                                aria-describedby="search-icon-1">
                                            <span id="search-icon-1" class="input-group-text p-3"><i
                                                    class="fa fa-search"></i></span>
                                        </div>

                                    </div>
                                    <div class="col-lg-12">
                                        <h4 class="mb-4">Sản phẩm bán chạy nhất</h4>
                                        <c:forEach var="product" items="${products}" end="6">
                                            <div class="d-flex align-items-center justify-content-start">
                                                <div class="rounded"
                                                    style="width: 100px; height: 85px; margin-right: 10px;">
                                                    <img src="/images/product/${product.image}"
                                                        class="img-fluid rounded" alt="Image">
                                                </div>
                                                <div>
                                                    <h6 style="font-size: 15px;" class="mb-2">
                                                        <a href="/product/${product.id}">${product.name}</a>
                                                    </h6>
                                                    <c:if test="${product.sta == '5'}">
                                                        <div class="d-flex mb-2">
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star text-secondary"></i>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${product.sta == '4'}">
                                                        <div class="d-flex mb-2">
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star"></i>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${product.sta == '3'}">
                                                        <div class="d-flex mb-2">
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${product.sta == '2'}">
                                                        <div class="d-flex mb-2">
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${product.sta == '1'}">
                                                        <div class="d-flex mb-2">
                                                            <i class="fas fa-star text-secondary"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                            <i class="fas fa-star"></i>
                                                        </div>
                                                    </c:if>

                                                    <div class="d-flex mb-2">
                                                        <h5 class="fw-bold me-2">
                                                            <fmt:formatNumber type="number" value="${product.price}" />
                                                            đ
                                                        </h5>

                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>

                                        <div class="d-flex justify-content-center my-4">
                                            <a href="/products"
                                                class="btn border border-secondary px-4 py-3 rounded-pill text-primary w-100">Xem
                                                thêm</a>
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <div class="position-relative">
                                            <img src="/client/img/banner-fruits.jpg" class="img-fluid w-100 rounded"
                                                alt="">
                                            <div class="position-absolute"
                                                style="top: 50%; right: 10px; transform: translateY(-50%);">
                                                <h3 class="text-secondary fw-bold">Fresh <br> Fruits <br> Banner</h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <jsp:include page="../layout/carousel.jsp" />

                    </div>
                </div>
                </div>
                <!-- Single Product End -->


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
                <script
                    src="https://cdnjs.cloudflare.com/ajax/libs/jquery-toast-plugin/1.3.2/jquery.toast.min.js"></script>
            </body>

            </html>