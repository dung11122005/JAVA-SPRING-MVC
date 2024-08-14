<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
            <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="utf-8">
                    <title>User profile - Laptopshop</title>
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
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                    <script>
                        $(document).ready(() => {
                            const avatarFile = $("#avatarFile");
                            const orgImage = "${newUser.avatar}";
                            if (orgImage) {
                                const urlImage = "/images/avatar/" + orgImage;
                                $("#avatarPreview").attr("src", urlImage);
                                $("#avatarPreview").css({ "display": "block" });
                            }

                            avatarFile.change(function (e) {
                                const imgURL = URL.createObjectURL(e.target.files[0]);
                                $("#avatarPreview").attr("src", imgURL);
                                $("#avatarPreview").css({ "display": "block" });
                            });
                        });
                    </script>
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

                    <!-- Cart Page Start -->
                    <div style="margin-top: 120px;" class="container-fluid">
                        <div class="container py-5">
                            <div>
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Đơn mua</li>
                                    </ol>
                                </nav>
                            </div>
                            <div style="width: 20px;" class="dropdown mb-4">
                                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    hiến thị thêm
                                </button>
                                <div style="left: 0px; width: 200px;" class="dropdown-menu"
                                    aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="#">Địa chỉ</a>
                                    <a class="dropdown-item" href="/purchase">Đơn mua</a>
                                    <a class="dropdown-item" href="#">Kho voucher</a>
                                </div>
                            </div>
                            <section>
                                <nav>
                                    <div class="nav nav-tabs mb-3">
                                        <button class="nav-link active border-white border-bottom-0" type="button"
                                            role="tab" id="nav-about-tab" data-bs-toggle="tab"
                                            data-bs-target="#nav-about" aria-controls="nav-about"
                                            aria-selected="true">Tất cả</button>
                                        <button class="nav-link border-white border-bottom-0" type="button" role="tab"
                                            id="nav-mission-tab" data-bs-toggle="tab"
                                            data-bs-target="#nav-mission-pending" aria-controls="nav-mission"
                                            aria-selected="false">Chờ xác nhận</button>
                                        <button class="nav-link border-white border-bottom-0" type="button" role="tab"
                                            id="nav-mission-tab" data-bs-toggle="tab"
                                            data-bs-target="#nav-mission-shiping" aria-controls="nav-mission"
                                            aria-selected="false">Giao hàng</button>
                                        <button class="nav-link border-white border-bottom-0" type="button" role="tab"
                                            id="nav-mission-tab" data-bs-toggle="tab"
                                            data-bs-target="#nav-mission-success" aria-controls="nav-mission"
                                            aria-selected="false">Hoàn thành</button>
                                        <button class="nav-link border-white border-bottom-0" type="button" role="tab"
                                            id="nav-mission-tab" data-bs-toggle="tab"
                                            data-bs-target="#nav-mission-cancel" aria-controls="nav-mission"
                                            aria-selected="false">Đã hủy</button>
                                        <button class="nav-link border-white border-bottom-0" type="button" role="tab"
                                            id="nav-mission-tab" data-bs-toggle="tab"
                                            data-bs-target="#nav-mission-refund" aria-controls="nav-mission"
                                            aria-selected="false">Trả hàng/Hoàn
                                            tiền</button>
                                    </div>
                                </nav>
                                <div class="tab-content mb-5">
                                    <div class="tab-pane active" id="nav-about" role="tabpanel"
                                        aria-labelledby="nav-about-tab">
                                        <c:if test="${purchases != null}">
                                            <div class="px-2">
                                                <c:forEach var="purchase" items="${purchases}">
                                                    <div class="row g-4 mb-3">
                                                        <div class="bg-light rounded">
                                                            <div class="p-4">
                                                                <c:forEach var="orderDetail"
                                                                    items="${purchase.orderDetails}">
                                                                    <div class="d-flex align-items-center mb-2">
                                                                        <img src="/images/product/${orderDetail.product.image}"
                                                                            class="img-fluid me-5 rounded-circle"
                                                                            style="width: 80px; height: 80px; overflow: hidden;  display: flex;
                                                            justify-content: center; align-items: center; object-fit: cover;" alt="">
                                                                        <h5 class="mb-0">
                                                                            <a href="/product/${orderDetail.product.id}"
                                                                                target="_blank">
                                                                                ${orderDetail.product.name}
                                                                            </a>
                                                                            <p class="mb-0">
                                                                                Hãng
                                                                                ${orderDetail.product.factory} -
                                                                                có cấu hình
                                                                                ${orderDetail.product.shortDesc} -
                                                                                mục đính máy dành cho
                                                                                ${orderDetail.product.target}
                                                                            </p>
                                                                            <p style="color: rgb(255, 77, 77);">
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${orderDetail.product.price}" />
                                                                                đ
                                                                            </p>
                                                                        </h5>
                                                                    </div>
                                                                </c:forEach>
                                                                <div class="d-flex justify-content-between mt-3">
                                                                    <h5 class="mb-0 me-4">Phí vận chuyển</h5>
                                                                    <div class="">
                                                                        <p class="mb-0">0 đ</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-3 d-flex justify-content-between">
                                                                    <h5 class="mb-0 me-4">Hình thức</h5>
                                                                    <div class="">
                                                                        <p class="mb-0">Thanh toán khi nhận hàng (COD)
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="py-4 mb-2 border-top d-flex justify-content-between">
                                                                <h5 class="mb-0 ps-4 me-4">Tổng số tiền</h5>
                                                                <p style="color: rgb(255, 77, 77); font-weight: 600;"
                                                                    class="mb-0 pe-4">
                                                                    <fmt:formatNumber type="number"
                                                                        value="${purchase.totalPrice}" /> đ
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </c:if>
                                        <c:if test="${purchases == null}">
                                            Chưa có đơn hàng
                                        </c:if>
                                    </div>


                                    <div class="tab-pane" id="nav-mission-pending" role="tabpanel"
                                        aria-labelledby="nav-mission-tab">
                                        <div class="px-2">
                                            <c:if test="${PENDING == null}">
                                                Chưa có đơn hàng
                                            </c:if>
                                            <c:forEach var="purchase" items="${purchases}">
                                                <c:if test="${purchase.status == '1PENDING'}">
                                                    <div class="row g-4 mb-3">
                                                        <div class="bg-light rounded">
                                                            <div class="p-4">
                                                                <c:forEach var="orderDetail"
                                                                    items="${purchase.orderDetails}">
                                                                    <div class="d-flex align-items-center mb-2">
                                                                        <img src="/images/product/${orderDetail.product.image}"
                                                                            class="img-fluid me-5 rounded-circle"
                                                                            style="width: 80px; height: 80px; overflow: hidden;  display: flex;
                                                            justify-content: center; align-items: center; object-fit: cover;" alt="">
                                                                        <h5 class="mb-0">
                                                                            <a href="/product/${orderDetail.product.id}"
                                                                                target="_blank">
                                                                                ${orderDetail.product.name}
                                                                            </a>
                                                                            <p class="mb-0">
                                                                                Hãng
                                                                                ${orderDetail.product.factory} -
                                                                                có cấu hình
                                                                                ${orderDetail.product.shortDesc} -
                                                                                mục đính máy dành cho
                                                                                ${orderDetail.product.target}
                                                                            </p>
                                                                            <p style="color: rgb(255, 77, 77);">
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${orderDetail.product.price}" />
                                                                                đ
                                                                            </p>
                                                                        </h5>
                                                                    </div>
                                                                </c:forEach>
                                                                <div class="d-flex justify-content-between mt-3">
                                                                    <h5 class="mb-0 me-4">Phí vận chuyển</h5>
                                                                    <div class="">
                                                                        <p class="mb-0">0 đ</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-3 d-flex justify-content-between">
                                                                    <h5 class="mb-0 me-4">Hình thức</h5>
                                                                    <div class="">
                                                                        <p class="mb-0">Thanh toán khi nhận hàng (COD)
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="py-4 mb-2 border-top d-flex justify-content-between">
                                                                <h5 class="mb-0 ps-4 me-4">Tổng số tiền</h5>
                                                                <p style="color: rgb(255, 77, 77); font-weight: 600;"
                                                                    class="mb-0 pe-4">
                                                                    <fmt:formatNumber type="number"
                                                                        value="${purchase.totalPrice}" /> đ
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>

                                    <div class="tab-pane" id="nav-mission-shiping" role="tabpanel"
                                        aria-labelledby="nav-mission-tab">
                                        <div class="px-2">
                                            <c:if test="${SHIPPING == null}">
                                                Chưa có đơn hàng
                                            </c:if>
                                            <c:forEach var="purchase" items="${purchases}">
                                                <c:if test="${purchase.status == '2SHIPPING'}">
                                                    <div class="row g-4 mb-3">
                                                        <div class="bg-light rounded">
                                                            <div class="p-4">
                                                                <c:forEach var="orderDetail"
                                                                    items="${purchase.orderDetails}">
                                                                    <div class="d-flex align-items-center mb-2">
                                                                        <img src="/images/product/${orderDetail.product.image}"
                                                                            class="img-fluid me-5 rounded-circle"
                                                                            style="width: 80px; height: 80px; overflow: hidden;  display: flex;
                                                            justify-content: center; align-items: center; object-fit: cover;" alt="">
                                                                        <h5 class="mb-0">
                                                                            <a href="/product/${orderDetail.product.id}"
                                                                                target="_blank">
                                                                                ${orderDetail.product.name}
                                                                            </a>
                                                                            <p class="mb-0">
                                                                                Hãng
                                                                                ${orderDetail.product.factory} -
                                                                                có cấu hình
                                                                                ${orderDetail.product.shortDesc} -
                                                                                mục đính máy dành cho
                                                                                ${orderDetail.product.target}
                                                                            </p>
                                                                            <p style="color: rgb(255, 77, 77);">
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${orderDetail.product.price}" />
                                                                                đ
                                                                            </p>
                                                                        </h5>
                                                                    </div>
                                                                </c:forEach>
                                                                <div class="d-flex justify-content-between mt-3">
                                                                    <h5 class="mb-0 me-4">Phí vận chuyển</h5>
                                                                    <div class="">
                                                                        <p class="mb-0">0 đ</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-3 d-flex justify-content-between">
                                                                    <h5 class="mb-0 me-4">Hình thức</h5>
                                                                    <div class="">
                                                                        <p class="mb-0">Thanh toán khi nhận hàng (COD)
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="py-4 mb-2 border-top d-flex justify-content-between">
                                                                <h5 class="mb-0 ps-4 me-4">Tổng số tiền</h5>
                                                                <p style="color: rgb(255, 77, 77); font-weight: 600;"
                                                                    class="mb-0 pe-4">
                                                                    <fmt:formatNumber type="number"
                                                                        value="${purchase.totalPrice}" /> đ
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="nav-mission-success" role="tabpanel"
                                        aria-labelledby="nav-mission-tab">
                                        <div class="px-2">
                                            <c:if test="${COMPLETE == null}">
                                                Chưa có đơn hàng
                                            </c:if>
                                            <c:forEach var="purchase" items="${purchases}">
                                                <c:if test="${purchase.status == '3COMPLETE'}">
                                                    <div class="row g-4 mb-3">
                                                        <div class="bg-light rounded">
                                                            <div class="p-4">
                                                                <c:forEach var="orderDetail"
                                                                    items="${purchase.orderDetails}">
                                                                    <div class="d-flex align-items-center mb-2">
                                                                        <img src="/images/product/${orderDetail.product.image}"
                                                                            class="img-fluid me-5 rounded-circle"
                                                                            style="width: 80px; height: 80px; overflow: hidden;  display: flex;
                                                            justify-content: center; align-items: center; object-fit: cover;" alt="">
                                                                        <h5 class="mb-0">
                                                                            <a href="/product/${orderDetail.product.id}"
                                                                                target="_blank">
                                                                                ${orderDetail.product.name}
                                                                            </a>
                                                                            <p class="mb-0">
                                                                                Hãng
                                                                                ${orderDetail.product.factory} -
                                                                                có cấu hình
                                                                                ${orderDetail.product.shortDesc} -
                                                                                mục đính máy dành cho
                                                                                ${orderDetail.product.target}
                                                                            </p>
                                                                            <p style="color: rgb(255, 77, 77);">
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${orderDetail.product.price}" />
                                                                                đ
                                                                            </p>
                                                                        </h5>
                                                                    </div>
                                                                </c:forEach>
                                                                <div class="d-flex justify-content-between mt-3">
                                                                    <h5 class="mb-0 me-4">Phí vận chuyển</h5>
                                                                    <div class="">
                                                                        <p class="mb-0">0 đ</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-3 d-flex justify-content-between">
                                                                    <h5 class="mb-0 me-4">Hình thức</h5>
                                                                    <div class="">
                                                                        <p class="mb-0">Thanh toán khi nhận hàng (COD)
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="py-4 mb-2 border-top d-flex justify-content-between">
                                                                <h5 class="mb-0 ps-4 me-4">Tổng số tiền</h5>
                                                                <p style="color: rgb(255, 77, 77); font-weight: 600;"
                                                                    class="mb-0 pe-4">
                                                                    <fmt:formatNumber type="number"
                                                                        value="${purchase.totalPrice}" /> đ
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="nav-mission-cancel" role="tabpanel"
                                        aria-labelledby="nav-mission-tab">
                                        <div class="px-2">
                                            <c:if test="${CANCEL == null}">
                                                Chưa có đơn hàng
                                            </c:if>
                                            <c:forEach var="purchase" items="${purchases}">
                                                <c:if test="${purchase.status == '4CANCEL'}">
                                                    <div class="row g-4 mb-3">
                                                        <div class="bg-light rounded">
                                                            <div class="p-4">
                                                                <c:forEach var="orderDetail"
                                                                    items="${purchase.orderDetails}">
                                                                    <div class="d-flex align-items-center mb-2">
                                                                        <img src="/images/product/${orderDetail.product.image}"
                                                                            class="img-fluid me-5 rounded-circle"
                                                                            style="width: 80px; height: 80px; overflow: hidden;  display: flex;
                                                            justify-content: center; align-items: center; object-fit: cover;" alt="">
                                                                        <h5 class="mb-0">
                                                                            <a href="/product/${orderDetail.product.id}"
                                                                                target="_blank">
                                                                                ${orderDetail.product.name}
                                                                            </a>
                                                                            <p class="mb-0">
                                                                                Hãng
                                                                                ${orderDetail.product.factory} -
                                                                                có cấu hình
                                                                                ${orderDetail.product.shortDesc} -
                                                                                mục đính máy dành cho
                                                                                ${orderDetail.product.target}
                                                                            </p>
                                                                            <p style="color: rgb(255, 77, 77);">
                                                                                <fmt:formatNumber type="number"
                                                                                    value="${orderDetail.product.price}" />
                                                                                đ
                                                                            </p>
                                                                        </h5>
                                                                    </div>
                                                                </c:forEach>
                                                                <div class="d-flex justify-content-between mt-3">
                                                                    <h5 class="mb-0 me-4">Phí vận chuyển</h5>
                                                                    <div class="">
                                                                        <p class="mb-0">0 đ</p>
                                                                    </div>
                                                                </div>
                                                                <div class="mt-3 d-flex justify-content-between">
                                                                    <h5 class="mb-0 me-4">Hình thức</h5>
                                                                    <div class="">
                                                                        <p class="mb-0">Thanh toán khi nhận hàng (COD)
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div
                                                                class="py-4 mb-2 border-top d-flex justify-content-between">
                                                                <h5 class="mb-0 ps-4 me-4">Tổng số tiền</h5>
                                                                <p style="color: rgb(255, 77, 77); font-weight: 600;"
                                                                    class="mb-0 pe-4">
                                                                    <fmt:formatNumber type="number"
                                                                        value="${purchase.totalPrice}" /> đ
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="nav-mission-refund" role="tabpanel"
                                        aria-labelledby="nav-mission-tab">
                                        <div class="px-2">
                                            <div class="row g-4">

                                            </div>
                                        </div>
                                    </div>
                            </section>

                        </div>
                    </div>
                    <!-- Cart Page End -->


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
                    <script>
                        const buttonOpen = document.getElementById('openbuttonUpdatedform');
                        const buttonClose = document.getElementById('closebuttonUpdatedform');
                        buttonOpen.addEventListener('click', function () {
                            const form = document.getElementById('formupdateuser');
                            form.style.display = 'block';
                            buttonOpen.style.display = 'none';
                            buttonClose.style.display = 'block';
                        });
                        buttonClose.addEventListener('click', function () {
                            const form = document.getElementById('formupdateuser');
                            form.style.display = 'none';
                            buttonOpen.style.display = 'block';
                            buttonClose.style.display = 'none';
                        });
                    </script>
                    <!-- Template Javascript -->
                    <script src="/client/js/main.js"></script>
                </body>

                </html>