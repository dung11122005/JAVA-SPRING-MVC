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
                    <title>Sign up - laptopshop</title>
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
                                    <form:form method="post" action="/register" modelAttribute="registerUser">

                                        <!-- https://mkyong.com/spring-mvc/spring-mvc-form-check-if-a-field-has-an-error/ -->
                                        <c:set var="errorFirstName">
                                            <form:errors path="firstName" cssClass="invalid-feedback" />
                                        </c:set>
                                        <c:set var="errorEmail">
                                            <form:errors path="email" cssClass="invalid-feedback" />
                                        </c:set>
                                        <c:set var="errorPassword">
                                            <form:errors path="confirmPassword" cssClass="invalid-feedback" />
                                        </c:set>

                                        <div class="divider d-flex align-items-center my-4">
                                            <p style="font-size: 27px;" class="text-center fw-bold mx-3 mb-0">Đăng kí
                                                tài khoản - Laptopshop</p>
                                        </div>
                                        <!-- First Name input -->
                                        <div class="form-outline mb-4">
                                            <form:input type="text"
                                                class="form-control form-control-lg ${not empty errorFirstName ? 'is-invalid':''}"
                                                placeholder="First Name" path="firstName" />
                                            <label class="form-label" for="form3Example3">First
                                                Name</label>
                                            ${errorFirstName}
                                        </div>
                                        <!-- last Name input -->
                                        <div style="margin-top: 35px;" class="form-outline mb-4">
                                            <form:input type="text" class="form-control form-control-lg"
                                                placeholder="Last Name" path="lastName" />
                                            <label class="form-label" for="form3Example3">Last
                                                Name</label>
                                        </div>

                                        <!-- Email input -->
                                        <div style="margin-top: 35px;" class="form-outline mb-4">
                                            <form:input type="email"
                                                class="form-control form-control-lg ${not empty errorEmail ? 'is-invalid':''}"
                                                placeholder="Enter a valid email address" path="email" />
                                            <label class="form-label" for="form3Example3">Email
                                                address</label>
                                            ${errorEmail}
                                        </div>

                                        <!-- Password input -->
                                        <div style="margin-top: 35px;" class=" form-outline mb-3">
                                            <form:input type="password" class="form-control form-control-lg"
                                                placeholder="Enter password" path="password" />
                                            <label class="form-label" for="form3Example4">Password</label>
                                        </div>

                                        <!-- Confirm Password input -->
                                        <div style="margin-top: 35px;" class="form-outline mb-3">
                                            <form:input type="password"
                                                class="form-control form-control-lg ${not empty errorPassword ? 'is-invalid':''}"
                                                placeholder="Enter password" path="confirmPassword" />
                                            <label class="form-label" for="form3Example4">Confirm
                                                Password</label>
                                            ${errorPassword}
                                        </div>



                                        <div style="padding-top: 15px;"
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
                                            <button class="btn btn-primary btn-lg"
                                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Confirm</button>

                                        </div>

                                    </form:form>
                                    <p class="small fw-bold mt-2 pt-1 mb-0">Bạn đã có tài khoản ? <a href="/login"
                                            class="link-danger">Đăng nhập</a>
                                    </p>
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