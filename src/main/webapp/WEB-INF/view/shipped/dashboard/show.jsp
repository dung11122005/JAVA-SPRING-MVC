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
                                        Dashboard
                                    </h2>

                                    <!-- Cards -->
                                    <div class="grid gap-6 mb-8 md:grid-cols-2 xl:grid-cols-4">
                                        <!-- Card -->
                                        <div
                                            class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                                            <div
                                                class="p-3 mr-4 text-orange-500 bg-orange-100 rounded-full dark:text-orange-100 dark:bg-orange-500">
                                                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                                    <path
                                                        d="M13 6a3 3 0 11-6 0 3 3 0 016 0zM18 8a2 2 0 11-4 0 2 2 0 014 0zM14 15a4 4 0 00-8 0v3h8v-3zM6 8a2 2 0 11-4 0 2 2 0 014 0zM16 18v-3a5.972 5.972 0 00-.75-2.906A3.005 3.005 0 0119 15v3h-3zM4.75 12.094A5.973 5.973 0 004 15v3H1v-3a3 3 0 013.75-2.906z">
                                                    </path>
                                                </svg>
                                            </div>
                                            <div>
                                                <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
                                                    Total clients
                                                </p>
                                                <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
                                                    ${totalClient}
                                                </p>
                                            </div>
                                        </div>
                                        <!-- Card -->
                                        <div
                                            class="flex items-center p-4 bg-white rounded-lg shadow-xs dark:bg-gray-800">
                                            <div
                                                class="p-3 mr-4 text-green-500 bg-green-100 rounded-full dark:text-green-100 dark:bg-green-500">
                                                <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 20 20">
                                                    <path fill-rule="evenodd"
                                                        d="M4 4a2 2 0 00-2 2v4a2 2 0 002 2V6h10a2 2 0 00-2-2H4zm2 6a2 2 0 012-2h8a2 2 0 012 2v4a2 2 0 01-2 2H8a2 2 0 01-2-2v-4zm6 4a2 2 0 100-4 2 2 0 000 4z"
                                                        clip-rule="evenodd"></path>
                                                </svg>
                                            </div>
                                            <div>
                                                <p class="mb-2 text-sm font-medium text-gray-600 dark:text-gray-400">
                                                    total amount successfully delivered
                                                </p>
                                                <p class="text-lg font-semibold text-gray-700 dark:text-gray-200">
                                                    <fmt:formatNumber type="number" value="${sumPrice}" /> đ
                                                </p>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- New Table -->
                                    <div class="w-full overflow-hidden rounded-lg shadow-xs">
                                        <div class="w-full overflow-x-auto">
                                            <table class="w-full whitespace-no-wrap">
                                                <thead>
                                                    <tr
                                                        class="text-xs font-semibold tracking-wide text-left text-gray-500 uppercase border-b dark:border-gray-700 bg-gray-50 dark:text-gray-400 dark:bg-gray-800">
                                                        <th class="px-4 py-3">Client</th>
                                                        <th class="px-4 py-3">Phone</th>
                                                        <th class="px-4 py-3">Address</th>
                                                        <th class="px-4 py-3">Name</th>
                                                        <th class="px-4 py-3">Total Price</th>
                                                        <th class="px-4 py-3">Status</th>
                                                        <th class="px-4 py-3">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody class="bg-white divide-y dark:divide-gray-700 dark:bg-gray-800">
                                                    <c:forEach var="shipPingOrder" items="${shipPingOrders}">

                                                        <tr class="text-gray-700 dark:text-gray-400">
                                                            <td class="px-4 py-3">
                                                                <div class="flex items-center text-sm">
                                                                    <!-- Avatar with inset shadow -->
                                                                    <div
                                                                        class="relative hidden w-8 h-8 mr-3 rounded-full md:block">
                                                                        <img class="object-cover w-full h-full rounded-full"
                                                                            src="/images/avatar/${shipPingOrder.user.avatar}"
                                                                            alt="" loading="lazy" />
                                                                        <div class="absolute inset-0 rounded-full shadow-inner"
                                                                            aria-hidden="true"></div>
                                                                    </div>
                                                                    <div>
                                                                        <a href="/shipped/detail/${shipPingOrder.id}"
                                                                            style="font-size: 17px; text-decoration: none;"
                                                                            class="font-semibold">
                                                                            ${shipPingOrder.user.fullName}
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </td>
                                                            <td class="px-4 py-3 ">
                                                                <p style="font-size: 17px;">
                                                                    ${shipPingOrder.receiverPhone}
                                                                </p>
                                                            </td>
                                                            <td class="px-4 py-3 ">
                                                                <p style="font-size: 17px;">
                                                                    ${shipPingOrder.receiverAddress}
                                                                </p>
                                                            </td>
                                                            <td class="px-4 py-3 ">
                                                                <p style="font-size: 17px;">
                                                                    ${shipPingOrder.receiverName}
                                                                </p>
                                                            </td>
                                                            <td class="px-4 py-3 ">
                                                                <p style="font-size: 17px;">
                                                                    <fmt:formatNumber type="number"
                                                                        value=" ${shipPingOrder.totalPrice}" /> đ
                                                                </p>
                                                                </p>

                                                            </td>
                                                            <td class="px-4 py-3 ">
                                                                <c:if test="${shipPingOrder.status=='2SHIPPING'}">
                                                                    <span
                                                                        class="px-2 py-1 font-semibold leading-tight text-blue-700 bg-blue-100 rounded-full dark:bg-blue-700 dark:text-dark-100">
                                                                        SHIPPING
                                                                    </span>
                                                                </c:if>
                                                                <c:if test="${shipPingOrder.status=='3COMPLETE'}">
                                                                    <span
                                                                        class="px-2 py-1 font-semibold leading-tight text-green-700 bg-green-100 rounded-full dark:bg-green-700 dark:text-green-100">
                                                                        COMPLETE
                                                                    </span>
                                                                </c:if>
                                                                <c:if test="${shipPingOrder.status=='4CANCEL'}">
                                                                    <span
                                                                        class="px-2 py-1 font-semibold leading-tight text-red-700 bg-red-100 rounded-full dark:bg-red-700 dark:text-red-100">
                                                                        CANCEL
                                                                    </span>
                                                                </c:if>

                                                            </td>
                                                            <td class="px-4 py-3 ">
                                                                <a style="text-decoration: none;"
                                                                    href="/shipped/update/${shipPingOrder.id}"
                                                                    class="px-3 py-1 text-sm font-medium leading-5 text-white transition-colors duration-150 bg-purple-600 border border-transparent rounded-md active:bg-purple-600 hover:bg-purple-700 focus:outline-none focus:shadow-outline-purple">Update</a>
                                                            </td>
                                                        </tr>

                                                    </c:forEach>

                                                </tbody>
                                            </table>

                                            <nav aria-label="Table navigation justify-content-center">
                                                <ul class="pagination justify-content-center">
                                                    <li class="page-item">
                                                        <a class="${1 eq currentPage ? 'disabled page-link':'page-link'}"
                                                            href="/shipped?page=${currentPage - 1}"
                                                            aria-label="Previous">
                                                            <span aria-hidden="true">&laquo;</span>
                                                        </a>
                                                    </li>
                                                    <c:forEach begin="0" end="${totalPages -1}" varStatus="loop">
                                                        <li class="page-item">
                                                            <a class="${(loop.index + 1) eq currentPage ? 'active page-link':'page-link'}"
                                                                href="/shipped?page=${loop.index + 1}">
                                                                ${loop.index + 1}
                                                            </a>
                                                        </li>
                                                    </c:forEach>

                                                    <li class="page-item">
                                                        <a class="${totalPages eq currentPage ? 'disabled page-link':'page-link'}"
                                                            href="/shipped?page=${currentPage + 1}" aria-label="Next">
                                                            <span aria-hidden="true">&raquo;</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </nav>

                                        </div>

                                    </div>
                                </div>
                            </main>
                        </div>
                    </div>
                </body>

                </html>