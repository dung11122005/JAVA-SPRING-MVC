<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!-- Navbar start -->
        <div class="container-fluid fixed-top">
            <div class="container topbar bg-primary d-none d-lg-block">
                <div class="d-flex justify-content-between">
                    <div class="top-info ps-2">
                        <small class="me-3"><i class="fas fa-map-marker-alt me-2 text-secondary"></i> <a
                                href="https://www.google.com/maps/place/320+%C4%90.+Tr%E1%BA%A7n+B%C3%ACnh+Tr%E1%BB%8Dng,+Ph%C6%B0%E1%BB%9Dng+4,+Qu%E1%BA%ADn+5,+H%E1%BB%93+Ch%C3%AD+Minh+72520,+Vi%E1%BB%87t+Nam/@10.7612343,106.6818076,171m/data=!3m1!1e3!4m6!3m5!1s0x31752f1dcd4041b1:0x39f9d63d7b21e6f9!8m2!3d10.7623554!4d106.6793357!16s%2Fg%2F11csg4n2mp?hl=vi-VN&entry=ttu"
                                class="text-white">320/32/6 Trần Bình Trọng, P4, Q5, HCM</a></small>
                        <small class="me-3"><i class="fas fa-envelope me-2 text-secondary"></i><a href="#"
                                class="text-white">hoangtandung2k5@gmail.com</a></small>
                    </div>
                    <div class="top-link pe-2">
                        <a href="#" class="text-white"><small class="text-white mx-2">Giao hàng nhanh chóng</small>/</a>
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
                    <div class="collapse navbar-collapse bg-white" id="navbarCollapse">
                        <div class="navbar-nav mx-auto">
                            <a href="/" class="nav-item nav-link active">Trang chủ</a>
                            <a href="shop.html" class="nav-item nav-link">Sản Phẩm</a>
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
                            <button
                                class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4"
                                data-bs-toggle="modal" data-bs-target="#searchModal"><i
                                    class="fas fa-search text-primary"></i></button>
                            <a href="#" class="position-relative me-4 my-auto">
                                <i class="fa fa-shopping-bag fa-2x"></i>
                                <span
                                    class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1"
                                    style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
                            </a>
                            <a href="#" class="my-auto">
                                <i class="fas fa-user fa-2x"></i>
                            </a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
        <!-- Navbar End -->