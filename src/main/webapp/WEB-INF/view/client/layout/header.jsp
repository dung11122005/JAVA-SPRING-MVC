<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

            <!-- Navbar start -->
            <div class="container-fluid fixed-top">
                <div class="container topbar bg-primary d-none d-lg-block">
                    <div class="d-flex justify-content-between">
                        <div class="top-info ps-2">
                            <small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a
                                    target="_blank"
                                    href="https://www.google.com/maps/dir/320+%C4%90%C6%B0%E1%BB%9Dng+Tr%E1%BA%A7n+B%C3%ACnh+Tr%E1%BB%8Dng,+Ph%C6%B0%E1%BB%9Dng+4,+District+5,+Ho+Chi+Minh+City/%C4%90%E1%BA%A1i+H%E1%BB%8Dc+S%C6%B0+Ph%E1%BA%A1m+Tp.HCM+CS1,+%C4%90%C6%B0%E1%BB%9Dng+An+D%C6%B0%C6%A1ng+V%C6%B0%C6%A1ng,+ph%C6%B0%E1%BB%9Dng+4,+Qu%E1%BA%ADn+5,+H%E1%BB%93+Ch%C3%AD+Minh/@10.7616631,106.6799989,407m/data=!3m1!1e3!4m24!4m23!1m15!1m1!1s0x31752f1dcd4041b1:0x39f9d63d7b21e6f9!2m2!1d106.6793357!2d10.7623554!3m4!1m2!1d106.6805145!2d10.7629101!3s0x31752f1e9e7abb1d:0xaa578e0e0eb09ba!3m4!1m2!1d106.6819665!2d10.7608395!3s0x31752f1b891e9cd1:0x4f4eab5a182f285e!1m5!1m1!1s0x31752f1b8a072901:0x2fb4502ebd044212!2m2!1d106.6821711!2d10.7613832!3e2?hl=vi-VN&entry=ttu"
                                    class="text-white">320/32/6 Trần Bình Trọng, P4, Q5, HCM</a></small>
                            <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="#"
                                    class="text-white">hoangtandung2k5@gmail.com</a></small>
                        </div>
                        <div class="top-link pe-2">
                            <a href="#" class="text-white"><small class="text-white mx-2">Giao hàng nhanh
                                    chóng</small>/</a>
                            <a href="#" class="text-white"><small class="text-white mx-2">Đổi trả Nhanh trong vòng 7
                                    ngày</small>/</a>
                            <a href="#" class="text-white"><small class="text-white ms-2">Bảo hành tận nơi</small></a>
                        </div>
                    </div>
                </div>
                <div class="container px-0">
                    <nav class="navbar navbar-light bg-white navbar-expand-xl">
                        <a href="/" class="navbar-brand">
                            <h1 class="text-primary display-6">Laptopshop</h1>
                        </a>
                        <button class="navbar-toggler py-2 px-3" type="button" data-bs-toggle="collapse"
                            data-bs-target="#navbarCollapse">
                            <span class="fa fa-bars text-primary"></span>
                        </button>
                        <div class="collapse navbar-collapse bg-white justify-content-between mx-5" id="navbarCollapse">
                            <div class="navbar-nav">
                                <a href="/" class="nav-item nav-link active">Trang chủ</a>
                                <a href="/products" class="nav-item nav-link">Sản Phẩm</a>
                                <a href="shop-detail.html" class="nav-item nav-link">Phụ Kiện</a>
                                <div class="nav-item dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Thiết bị văn
                                        phòng</a>
                                    <div class="dropdown-menu m-0 bg-secondary rounded-0">
                                        <a href="cart.html" class="dropdown-item">Bàn</a>
                                        <a href="chackout.html" class="dropdown-item">Ghế</a>
                                        <a href="testimonial.html" class="dropdown-item">Wifi</a>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex m-3 me-0">

                                <!-- https://stackoverflow.com/a/21329436/22612096 -->

                                <c:if test="${not empty pageContext.request.userPrincipal}">
                                    <div class="dropdown my-auto dropdown-hover">
                                        <a href="#" class="position-relative me-4 my-auto" role="button"
                                            id="dropdownMenuLink" aria-expanded="false" data-bs-toggle="dropdown"
                                            data-bs-hover="true">
                                            <i style="font-size: 32px;" class="far fa-bell"></i>
                                        </a>
                                        <div style="width: 370px; height: 300px; overflow-y:auto ;"
                                            class="container2 dropdown-menu dropdown-menu-end p-4"
                                            aria-labelledby="dropdownMenuLink">
                                            <c:if test="${sessionScope.listOrder == null}">
                                                <h5 style="margin: 60px 60px ;">
                                                    Không có thông báo
                                                </h5>
                                            </c:if>

                                            <c:if test="${sessionScope.listOrder != null}">
                                                <c:forEach var="listOrder" items="${sessionScope.listOrder}">
                                                    <c:if test="${listOrder.status=='2SHIPPING'}">
                                                        <div class="d-flex mb-1">
                                                            <img style="width: 65px; height: 65px; margin-right: 15px;"
                                                                src="/images/avatar/logoshop.jpg"
                                                                class="img-fluid rounded" alt="Image">
                                                            <h6 style="color: black; font-size: 20px;">Đơn hàng bạn
                                                                vừa đặt có mã
                                                                <a href="/order-history">${listOrder.id}</a> đã được xác
                                                                nhận.
                                                                <br />
                                                                <p style="color: rgb(99, 99, 99); font-size: 15px;"> Bạn
                                                                    sẽ nhận được sau 5 - 7 ngày.</p>
                                                            </h6>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${listOrder.status=='3COMPLETE'}">
                                                        <div class="d-flex mb-1">
                                                            <img style="width: 65px; height: 65px; margin-right: 15px;"
                                                                src="/images/avatar/logoshop.jpg"
                                                                class="img-fluid rounded" alt="Image">
                                                            <h6 style="color: black; font-size: 20px;">Đơn hàng của bạn
                                                                có mã
                                                                <a href="/order-history">${listOrder.id}</a> đã được
                                                                giao.
                                                                <br />
                                                                <p style="color: rgb(99, 99, 99); font-size: 15px;"> Cảm
                                                                    ơn bạn đã tin tưởng shop.</p>
                                                            </h6>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${listOrder.status=='4CANCEL'}">
                                                        <div class="d-flex mb-1">
                                                            <img style="width: 65px; height: 65px; margin-right: 15px;"
                                                                src="/images/avatar/logoshop.jpg"
                                                                class="img-fluid rounded" alt="Image">
                                                            <h6 style="color: rgb(246, 55, 55); font-size: 20px;">Đơn
                                                                hàng của bạn
                                                                có mã
                                                                <a href="/order-history">${listOrder.id}</a> đã bị HỦY
                                                                <br />
                                                                <p style="color: rgb(99, 99, 99); font-size: 15px;">vui
                                                                    lòng liên hệ 19001900 để biết thêm chi tiết.</p>
                                                            </h6>
                                                        </div>
                                                    </c:if>
                                                </c:forEach>
                                            </c:if>
                                        </div>
                                    </div>

                                    <a href="/cart" class="position-relative me-4 my-auto">
                                        <i class="fa fa-shopping-bag fa-2x"></i>
                                        <span id="sumCart"
                                            class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1"
                                            style="top: -5px; left: 15px; height: 20px; min-width: 20px;">${sessionScope.sum}</span>
                                    </a>

                                    <div class="dropdown my-auto dropdown-hover">
                                        <a href="#" class="position-relative me-4 my-auto" role="button"
                                            id="dropdownMenuLink" aria-expanded="false" data-bs-toggle="dropdown"
                                            data-bs-hover="true">
                                            <i class="fas fa-user fa-2x"></i>
                                        </a>
                                        <ul class="dropdown-menu dropdown-menu-end p-4"
                                            aria-labelledby="dropdownMenuLink">
                                            <li class="d-flex align-items-center flex-column" style="min-width: 300px;">
                                                <img style="width: 150px; height: 150px; border-radius: 50%; overflow: hidden;  display: flex;
                                                justify-content: center; align-items: center; object-fit: cover;"
                                                    src="/images/avatar/${sessionScope.avatar}" />
                                                <div class="text-center my-3">
                                                    <c:out value="${sessionScope.fullName}" />
                                                </div>
                                            </li>
                                            <li><a class="dropdown-item" href="/user-profile">Quản lý tài khoản</a></li>
                                            <li><a class="dropdown-item" href="/order-history">Lịch sử mua hàng</a></li>
                                            <li>
                                                <hr class="dropdown-divider">
                                            </li>
                                            <li>
                                                <form method="post" action="/logout">
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />
                                                    <button class="dropdown-item">Đăng xuất</button>
                                                </form>
                                            </li>
                                        </ul>
                                    </div>

                                </c:if>

                                <c:if test="${ empty pageContext.request.userPrincipal}">

                                    <a href="/laptopshop/login" class="a-login position-relative me-4 my-auto">
                                        <i class="fas fa-sign-in-alt"></i>
                                        Đăng nhập
                                    </a>

                                </c:if>

                            </div>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- Navbar End