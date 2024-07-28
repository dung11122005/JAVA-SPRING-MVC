<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
                <html lang="en">

                <head>
                    <meta charset="UTF-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                    <meta http-equiv="x-ua-compatible" content="ie=edge" />
                    <title>Login - laptopshop</title>
                    <!-- MDB icon -->
                    <link rel="icon" href="/client/img/mdb-favicon.ico" type="image/x-icon" />
                    <!-- Font Awesome -->
                    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
                    <!-- Google Fonts Roboto -->
                    <link rel="stylesheet"
                        href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />
                    <!-- MDB -->
                    <link rel="stylesheet" href="/client/css/bootstrap-login-form.min.css" />
                </head>

                <body>
                    <!-- Start your project here-->

                    <style>
                        .divider:after,
                        .divider:before {
                            content: "";
                            flex: 1;
                            height: 1px;
                            background: #eee;
                        }

                        .h-custom {
                            height: calc(100% - 73px);
                        }

                        @media (max-width: 450px) {
                            .h-custom {
                                height: 100%;
                            }
                        }
                    </style>
                    <section class="vh-100">
                        <div class="container-fluid h-custom">
                            <div class="row d-flex justify-content-center align-items-center h-100">
                                <div class="col-md-9 col-lg-6 col-xl-5">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                                        class="img-fluid" alt="Sample image">
                                </div>
                                <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                                    <form>
                                        <div
                                            class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                                            <h1 style="font-size: 27px; margin-right: 10px;">Đăng nhập với</h1>
                                            <button type="button" class="btn btn-primary btn-floating mx-1">
                                                <i class="fab fa-facebook-f"></i>
                                            </button>

                                            <button type="button" class="btn btn-primary btn-floating mx-1">
                                                <i class="fab fa-twitter"></i>
                                            </button>

                                            <button type="button" class="btn btn-primary btn-floating mx-1">
                                                <i class="fab fa-linkedin-in"></i>
                                            </button>
                                        </div>

                                        <div class="divider d-flex align-items-center my-4">
                                            <p class="text-center fw-bold mx-3 mb-0">Or</p>
                                        </div>

                                        <!-- Email input -->
                                        <div class="form-outline mb-4">
                                            <input type="email" id="form3Example3" class="form-control form-control-lg"
                                                placeholder="Enter a valid email address" />
                                            <label class="form-label" for="form3Example3">Email address</label>
                                        </div>

                                        <!-- Password input -->
                                        <div style="margin-top: 35px;" class="form-outline mb-3">
                                            <input type="password" id="form3Example4"
                                                class="form-control form-control-lg" placeholder="Enter password" />
                                            <label class="form-label" for="form3Example4">Password</label>
                                        </div>

                                        <div style="margin-top: 35px;"
                                            class="d-flex justify-content-between align-items-center">
                                            <!-- Checkbox -->
                                            <div class="form-check mb-0">
                                                <input class="form-check-input me-2" type="checkbox" value=""
                                                    id="form2Example3" />
                                                <label class="form-check-label" for="form2Example3">
                                                    Remember me
                                                </label>
                                            </div>
                                            <a href="#!" class="text-body">Forgot password?</a>
                                        </div>

                                        <div class="text-center text-lg-start mt-3 pt-2">
                                            <button type="button" class="btn btn-primary btn-lg"
                                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>
                                            <p class="small fw-bold mt-2 pt-1 mb-0">Bạn chưa có tài khoản ? <a
                                                    href="/register" class="link-danger">Đăng kí</a></p>
                                        </div>

                                    </form>
                                </div>
                            </div>
                        </div>
                        <div
                            class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-primary">
                            <!-- Copyright -->
                            <div class="text-white mb-3 mb-md-0">
                                Bản quyền HOÀNG TẤN DŨNG © 2024. mọi quyền được bảo lưu.
                            </div>
                            <!-- Copyright -->

                            <!-- Right -->
                            <div>
                                <a href="#!" class="text-white me-4">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="#!" class="text-white me-4">
                                    <i class="fab fa-twitter"></i>
                                </a>
                                <a href="#!" class="text-white me-4">
                                    <i class="fab fa-google"></i>
                                </a>
                                <a href="#!" class="text-white">
                                    <i class="fab fa-linkedin-in"></i>
                                </a>
                            </div>
                            <!-- Right -->
                        </div>
                    </section>
                    <!-- End your project here-->

                    <!-- MDB -->
                    <script type="text/javascript" src="/client/js/mdb.min.js"></script>
                    <!-- Custom scripts -->
                    <script type="text/javascript"></script>
                </body>

                </html>