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
                    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                    <title>Login - laptopshop</title>
                    <!-- MDB icon -->

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
                                    <img loading="lazy"
                                        src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                                        class="img-fluid" alt="Sample image">
                                </div>
                                <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                                    <div
                                        class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start mb-3">
                                        <a href="#!" class="btn btn-lg btn-primary">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                                <path
                                                    d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                            </svg>
                                            <span class="ms-2 fs-6">Sign in with Facebook</span>
                                        </a>
                                    </div>
                                    <div
                                        class="d-flex flex-row align-items-center justify-content-center justify-content-lg-start">
                                        <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/laptopshop/login&response_type=code&client_id=149764116472-at1e5po7mio5rlqsl9fu08a1evc3n8r0.apps.googleusercontent.com&approval_prompt=force"
                                            class="btn btn-lg btn-ligth" style="margin-right: 25px;">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                fill="currentColor" class="bi bi-google" viewBox="0 0 16 16">
                                                <path
                                                    d="M15.545 6.558a9.42 9.42 0 0 1 .139 1.626c0 2.434-.87 4.492-2.384 5.885h.002C11.978 15.292 10.158 16 8 16A8 8 0 1 1 8 0a7.689 7.689 0 0 1 5.352 2.082l-2.284 2.284A4.347 4.347 0 0 0 8 3.166c-2.087 0-3.86 1.408-4.492 3.304a4.792 4.792 0 0 0 0 3.063h.003c.635 1.893 2.405 3.301 4.492 3.301 1.078 0 2.004-.276 2.722-.764h-.003a3.702 3.702 0 0 0 1.599-2.431H8v-3.08h7.545z" />
                                            </svg>
                                            <span class="ms-2 fs-6">Sign in with Google</span>
                                        </a>
                                    </div>

                                    <form:form method="post" action="/laptopshop/login">


                                        <div class="divider d-flex align-items-center my-4">
                                            <p class="text-center fw-bold mx-3 mb-0">Or</p>
                                        </div>
                                        <c:if test="${param.error != null}">
                                            <div class="my-2" style="color: red;">Invalid email or password.</div>
                                        </c:if>
                                        <c:if test="${param.logout != null}">
                                            <div class="my-2" style="color: rgb(0, 171, 54);">Logout success.</div>
                                        </c:if>
                                        <!-- Email input -->
                                        <div class="form-outline mb-4">
                                            <input type="email" id="form3Example3" class="form-control form-control-lg"
                                                placeholder="Enter a valid email address" name="username" />
                                            <label class="form-label" for="form3Example3">Email address</label>
                                        </div>

                                        <!-- Password input -->
                                        <div style="margin-top: 35px;" class="form-outline mb-3">
                                            <input type="password" id="form3Example4"
                                                class="form-control form-control-lg" placeholder="Enter password"
                                                name="password" />
                                            <label class="form-label" for="form3Example4">Password</label>
                                        </div>
                                        <div>
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
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
                                            <button class="btn btn-primary btn-lg"
                                                style="padding-left: 2.5rem; padding-right: 2.5rem;">Login</button>

                                        </div>
                                        <p class="small fw-bold mt-2 pt-1 mb-0">Bạn chưa có tài khoản ? <a
                                                href="/register" class="link-danger">Đăng kí</a></p>
                                    </form:form>
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