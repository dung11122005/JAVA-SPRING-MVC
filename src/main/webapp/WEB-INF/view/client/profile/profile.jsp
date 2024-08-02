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
                            <div class="mb-3">
                                <nav aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="/">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Thông tin cá nhân</li>
                                    </ol>
                                </nav>
                            </div>
                            <section style="background-color: #eee;">
                                <div class="container py-5">


                                    <div class="row">
                                        <div class="col-lg-4">
                                            <div class="card mb-4">
                                                <div class="card-body text-center">
                                                    <img src="images/avatar/${sessionScope.avatar}" alt="avatar"
                                                        class="rounded-circle img-fluid"
                                                        style="width: 150px; height: 150px; object-fit: cover; ">
                                                    <h5 class="my-3">${sessionScope.fullName}</h5>
                                                    <p class="text-muted mb-1">Email:
                                                        <c:if test="${not empty sessionScope.email}">
                                                            ${sessionScope.email}
                                                        </c:if>
                                                    </p>
                                                    <p class="text-muted mb-1">Địa chỉ:
                                                        <c:if test="${not empty sessionScope.address}">
                                                            ${sessionScope.address}
                                                        </c:if>
                                                        <c:if test="${empty sessionScope.address}">
                                                            chưa cập nhật
                                                        </c:if>
                                                    </p>
                                                    <form:form method="post" action="/update-user-in-profile"
                                                        modelAttribute="newUser" id="formupdateuser"
                                                        style="display:none;" enctype="multipart/form-data">
                                                        <input type="hidden" name="${_csrf.parameterName}"
                                                            value="${_csrf.token}" />
                                                        <c:set var="errorFullName">
                                                            <form:errors path="fullName" cssClass="invalid-feedback" />
                                                        </c:set>
                                                        <div class="form-group mb-3">
                                                            <form:input type="text"
                                                                class="form-control ${not empty errorFullName ? 'is-invalid':''}"
                                                                placeholder="fullName" path="fullName"
                                                                disabled="true" />
                                                            ${errorFullName}
                                                        </div>
                                                        <div class="form-group mb-3">
                                                            <form:input type="text" class="form-control"
                                                                placeholder="address" path="address" />
                                                        </div>
                                                        <div class="form-group mb-3">
                                                            <form:input type="text" class="form-control"
                                                                placeholder="phone" path="phone" />
                                                        </div>
                                                        <div class="mb-3 col-12 col-md-6">
                                                            <label for="avatarFile" class="form-label">Image:</label>
                                                            <input class="form-control" type="file" id="avatarFile"
                                                                accept=".png, .jpg, .jpeg" name="hoidanitFile" />
                                                        </div>
                                                        <div class="col-12 mb-3">
                                                            <img style="max-height: 250px;display: none;"
                                                                alt="avatar preview" id="avatarPreview">
                                                        </div>
                                                        <button style="color: white;" class="btn btn-primary">Xác
                                                            nhận</button>
                                                    </form:form>

                                                </div>
                                            </div>
                                            <div class="card mb-4 mb-lg-0">
                                                <div class="card-body p-0">
                                                    <ul class="list-group list-group-flush rounded-3">
                                                        <li
                                                            class="list-group-item d-flex justify-content-between align-items-center p-3">
                                                            <i class="fas fa-globe fa-lg text-warning"></i>
                                                            <p class="mb-0">https://mdbootstrap.com</p>
                                                        </li>
                                                        <li
                                                            class="list-group-item d-flex justify-content-between align-items-center p-3">
                                                            <i class="fab fa-github fa-lg text-body"></i>
                                                            <p class="mb-0">github</p>
                                                        </li>
                                                        <li
                                                            class="list-group-item d-flex justify-content-between align-items-center p-3">
                                                            <i class="fab fa-twitter fa-lg" style="color: #55acee;"></i>
                                                            <p class="mb-0">twitter</p>
                                                        </li>
                                                        <li
                                                            class="list-group-item d-flex justify-content-between align-items-center p-3">
                                                            <i class="fab fa-instagram fa-lg"
                                                                style="color: #ac2bac;"></i>
                                                            <p class="mb-0">instagram</p>
                                                        </li>
                                                        <li
                                                            class="list-group-item d-flex justify-content-between align-items-center p-3">
                                                            <i class="fab fa-facebook-f fa-lg"
                                                                style="color: #3b5998;"></i>
                                                            <p class="mb-0">facebook</p>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="col-lg-8">
                                            <div class="d-flex mb-3">
                                                <button style="display: block; color: white;" class="btn btn-primary"
                                                    id="openbuttonUpdatedform">Cập nhật thông tin

                                                </button>
                                                <button style="display: none; color: white;" class="btn btn-primary"
                                                    id="closebuttonUpdatedform">Không cập nhật
                                                </button>
                                            </div>

                                            <div class="card mb-4">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <p class="mb-0">Full Name</p>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <p class="text-muted mb-0">${sessionScope.fullName}</p>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <p class="mb-0">Email</p>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <p class="text-muted mb-0">${sessionScope.email}</p>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <p class="mb-0">Phone</p>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <p class="text-muted mb-0">
                                                                <c:if test="${not empty  sessionScope.phone}">
                                                                    ${sessionScope.phone}
                                                                </c:if>
                                                                <c:if test="${empty sessionScope.phone}">
                                                                    chưa cập nhật
                                                                </c:if>
                                                            </p>
                                                        </div>
                                                    </div>
                                                    <hr>
                                                    <div class="row">
                                                        <div class="col-sm-3">
                                                            <p class="mb-0">Address</p>
                                                        </div>
                                                        <div class="col-sm-9">
                                                            <p class="text-muted mb-0">
                                                                <c:if test="${not empty sessionScope.address}">
                                                                    ${sessionScope.address}
                                                                </c:if>
                                                                <c:if test="${empty sessionScope.address}">
                                                                    chưa cập nhật
                                                                </c:if>
                                                            </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="card mb-4 mb-md-0">
                                                        <div class="card-body">
                                                            <p class="mb-4"><span
                                                                    class="text-primary font-italic me-1">assigment</span>
                                                                Project Status
                                                            </p>
                                                            <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                                                            <div class="progress rounded" style="height: 5px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                    style="width: 80%" aria-valuenow="80"
                                                                    aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                            <p class="mt-4 mb-1" style="font-size: .77rem;">Website
                                                                Markup</p>
                                                            <div class="progress rounded" style="height: 5px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                    style="width: 72%" aria-valuenow="72"
                                                                    aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                            <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                                                            <div class="progress rounded" style="height: 5px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                    style="width: 89%" aria-valuenow="89"
                                                                    aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                            <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile
                                                                Template</p>
                                                            <div class="progress rounded" style="height: 5px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                    style="width: 55%" aria-valuenow="55"
                                                                    aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                            <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API
                                                            </p>
                                                            <div class="progress rounded mb-2" style="height: 5px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                    style="width: 66%" aria-valuenow="66"
                                                                    aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="card mb-4 mb-md-0">
                                                        <div class="card-body">
                                                            <p class="mb-4"><span
                                                                    class="text-primary font-italic me-1">assigment</span>
                                                                Project Status
                                                            </p>
                                                            <p class="mb-1" style="font-size: .77rem;">Web Design</p>
                                                            <div class="progress rounded" style="height: 5px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                    style="width: 80%" aria-valuenow="80"
                                                                    aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                            <p class="mt-4 mb-1" style="font-size: .77rem;">Website
                                                                Markup</p>
                                                            <div class="progress rounded" style="height: 5px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                    style="width: 72%" aria-valuenow="72"
                                                                    aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                            <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>
                                                            <div class="progress rounded" style="height: 5px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                    style="width: 89%" aria-valuenow="89"
                                                                    aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                            <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile
                                                                Template</p>
                                                            <div class="progress rounded" style="height: 5px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                    style="width: 55%" aria-valuenow="55"
                                                                    aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                            <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API
                                                            </p>
                                                            <div class="progress rounded mb-2" style="height: 5px;">
                                                                <div class="progress-bar" role="progressbar"
                                                                    style="width: 66%" aria-valuenow="66"
                                                                    aria-valuemin="0" aria-valuemax="100"></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
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