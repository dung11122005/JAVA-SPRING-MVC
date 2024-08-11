<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <!DOCTYPE html>
                <html :class="{ 'theme-dark': dark }" x-data="data()" lang="en">

                <head>
                    <meta charset="UTF-8" />
                    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                    <title>Shipped - laptopshop</title>
                    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap"
                        rel="stylesheet" />
                    <link rel="stylesheet" href="/client/css/tailwind.output.css" />
                    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>
                    <script src="/client/js/init-alpine.js"></script>
                    <link href="/css/styles.css" rel="stylesheet" />
                    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css" />
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js" defer></script>
                    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
                        crossorigin="anonymous"></script>
                    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
                    <script src="/client/js/charts-lines.js" defer></script>
                    <script src="/client/js/charts-pie.js" defer></script>
                    <script>
                        $(document).ready(() => {
                            const avatarFile = $("#avatarFile");
                            const orgImage = "${newOrder.image}";
                            if (orgImage) {
                                const urlImage = "/images/shipped/" + orgImage;
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
                </head>

                <body>
                    <div class="flex h-screen bg-gray-50 dark:bg-gray-900"
                        :class="{ 'overflow-hidden': isSideMenuOpen }">
                        <!-- Desktop sidebar -->
                        <aside
                            class="z-20 hidden w-64 overflow-y-auto bg-white dark:bg-gray-800 md:block flex-shrink-0">
                            <div class="py-4 text-gray-500 dark:text-gray-400">
                                <a style="text-decoration: none;"
                                    class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200" href="/shipped">
                                    Shipped -laptopshop
                                </a>
                                <ul class="mt-6">
                                    <li class="relative px-6 py-3">
                                        <span
                                            class="absolute inset-y-0 left-0 w-1 bg-purple-600 rounded-tr-lg rounded-br-lg"
                                            aria-hidden="true"></span>
                                        <a style="text-decoration: none;"
                                            class="inline-flex items-center w-full text-sm font-semibold text-gray-800 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200 dark:text-gray-100"
                                            href="/shipped">
                                            <svg class="w-5 h-5" aria-hidden="true" fill="none" stroke-linecap="round"
                                                stroke-linejoin="round" stroke-width="2" viewBox="0 0 24 24"
                                                stroke="currentColor">
                                                <path
                                                    d="M3 12l2-2m0 0l7-7 7 7M5 10v10a1 1 0 001 1h3m10-11l2 2m-2-2v10a1 1 0 01-1 1h-3m-6 0a1 1 0 001-1v-4a1 1 0 011-1h2a1 1 0 011 1v4a1 1 0 001 1m-6 0h6">
                                                </path>
                                            </svg>
                                            <span class="ml-4">Dashboard</span>
                                        </a>
                                    </li>
                                </ul>


                            </div>
                        </aside>



                        <div class="flex flex-col flex-1 w-full">
                            <jsp:include page="../layout/header.jsp" />
                            <main class="h-full overflow-y-auto">
                                <div class="container px-12 mx-auto grid">
                                    <h2 class="my-6 text-2xl font-semibold text-gray-700 dark:text-gray-200">
                                        View Order
                                    </h2>

                                    <div class="col-md-6 col-12 mx-auto">

                                        <form:form method="post" action="/shipped/update" class="row"
                                            modelAttribute="newOrder" enctype="multipart/form-data">

                                            <div class="mb-3" style="display: none;">
                                                <label class="form-label">Id:</label>
                                                <form:input type="text" class="form-control" path="id" />
                                            </div>
                                            <div class="mb-3">
                                                <label>Order id = ${newOrder.id} </label>
                                                &nbsp; &nbsp; &nbsp; &nbsp;
                                                <label class="form-label">Price:
                                                    <fmt:formatNumber type="number" value="${newOrder.totalPrice}" /> đ
                                                </label>
                                            </div>

                                            <div class="mb-3 col-12 col-md-6">
                                                <label class="form-label">User:</label>
                                                <form:input type="text" class="form-control" disabled="true"
                                                    path="user.fullName" />
                                            </div>
                                            <div class="mb-3 col-12 col-md-6">
                                                <label class="form-label">Name:</label>
                                                <form:input type="text" class="form-control" disabled="true"
                                                    path="receiverName" />
                                            </div>
                                            <div class="mb-3 col-12 col-md-6">
                                                <label class="form-label">Address:</label>
                                                <form:input type="text" class="form-control" disabled="true"
                                                    path="receiverAddress" />
                                            </div>
                                            <div class="mb-3 col-12 col-md-6">
                                                <label class="form-label">Phone:</label>
                                                <form:input type="text" class="form-control" disabled="true"
                                                    path="receiverPhone" />
                                            </div>
                                            <div class="mb-3 col-12 col-md-6">
                                                <label class="form-label">Status:</label>
                                                <form:select class="form-select" path="status">
                                                    <form:option value="SHIPPING">SHIPPING</form:option>
                                                    <form:option value="COMPLETE">COMPLETE</form:option>
                                                    <form:option value="CANCEL">CANCEL</form:option>
                                                </form:select>
                                            </div>
                                            <div class="mb-3 col-12 col-md-6">
                                                <label for="avatarFile" class="form-label">Image:</label>
                                                <input class="form-control" type="file" id="avatarFile"
                                                    accept=".png, .jpg, .jpeg" name="hoidanitFile" />
                                            </div>
                                            <div class="col-12 mb-3">
                                                <img style="max-height: 250px;display: none;" alt="avatar preview"
                                                    id="avatarPreview">
                                            </div>
                                            <div class="col-12 mb-5">
                                                <button type="submit" class="btn btn-warning">Update</button>
                                            </div>
                                        </form:form>

                                    </div>


                                </div>
                            </main>
                        </div>
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        crossorigin="anonymous"></script>
                </body>

                </html>