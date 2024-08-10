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

                </head>

                <body>
                    <div class="flex h-screen bg-gray-50 dark:bg-gray-900"
                        :class="{ 'overflow-hidden': isSideMenuOpen }">
                        <!-- Desktop sidebar -->
                        <aside
                            class="z-20 hidden w-64 overflow-y-auto bg-white dark:bg-gray-800 md:block flex-shrink-0">
                            <div class="py-4 text-gray-500 dark:text-gray-400">
                                <a class="ml-6 text-lg font-bold text-gray-800 dark:text-gray-200" href="/shipped">
                                    Shipped -laptopshop
                                </a>
                                <ul class="mt-6">
                                    <li class="relative px-6 py-3">
                                        <span
                                            class="absolute inset-y-0 left-0 w-1 bg-purple-600 rounded-tr-lg rounded-br-lg"
                                            aria-hidden="true"></span>
                                        <a class="inline-flex items-center w-full text-sm font-semibold text-gray-800 transition-colors duration-150 hover:text-gray-800 dark:hover:text-gray-200 dark:text-gray-100"
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
                                        Detail Order
                                    </h2>

                                    <div class="mt-5">
                                        <div class="row">
                                            <div class="col-12 mx-auto">
                                                <div class="d-flex ">
                                                    <h2>Người Nhận: </h2>
                                                    <h2 style="color: red; font-weight: 600; margin-left: 15px;">
                                                        ${currentOrder.receiverName}</h2>
                                                </div>

                                                <hr />

                                                <div class="table-responsive">
                                                    <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th scope="col">Sản phẩm</th>
                                                                <th scope="col">Tên</th>
                                                                <th scope="col">Giá cả</th>
                                                                <th scope="col">Số lượng</th>
                                                                <th scope="col">Thành tiền</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <c:if test="${ empty orderDetails}">
                                                                <tr>
                                                                    <td colspan="6">
                                                                        Không có sản phẩm trong giỏ hàng
                                                                    </td>
                                                                </tr>
                                                            </c:if>
                                                            <c:forEach var="orderDetail" items="${orderDetails}">
                                                                <tr>
                                                                    <th scope="row">
                                                                        <div class="d-flex align-items-center">
                                                                            <img src="/images/product/${orderDetail.product.image}"
                                                                                class="img-fluid me-5 rounded-circle"
                                                                                style="width: 80px; height: 80px; overflow: hidden;  display: flex;
                                                justify-content: center; align-items: center; object-fit: cover;"
                                                                                alt="">
                                                                        </div>
                                                                    </th>
                                                                    <td>
                                                                        <p class="mb-0 mt-4">
                                                                            <a href="/product/${orderDetail.product.id}"
                                                                                target="_blank">
                                                                                ${orderDetail.product.name}
                                                                            </a>
                                                                        </p>
                                                                    </td>
                                                                    <td>
                                                                        <p class="mb-0 mt-4">
                                                                            <fmt:formatNumber type="number"
                                                                                value="${orderDetail.price}" /> đ
                                                                        </p>
                                                                    </td>
                                                                    <td>
                                                                        <div class="input-group quantity mt-4"
                                                                            style="width: 100px;">
                                                                            <input type="text"
                                                                                class="form-control form-control-sm text-center border-0"
                                                                                value="${orderDetail.quantity}">
                                                                        </div>
                                                                    </td>
                                                                    <td>
                                                                        <p class="mb-0 mt-4"
                                                                            data-cart-detail-id="${orderDetail.id}">
                                                                            <fmt:formatNumber type="number"
                                                                                value="${orderDetail.price * orderDetail.quantity}" />
                                                                            đ
                                                                        </p>
                                                                    </td>
                                                                </tr>
                                                            </c:forEach>

                                                        </tbody>
                                                    </table>
                                                </div>
                                                <a href="/shipped" class="btn btn-success mt-3">Back</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </main>
                        </div>
                    </div>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                        crossorigin="anonymous"></script>
                </body>

                </html>