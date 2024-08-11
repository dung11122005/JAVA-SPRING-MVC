<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
                <header class="z-10 py-4 bg-white shadow-md dark:bg-gray-800">
                    <div
                        class="container flex items-center justify-between h-full px-6 mx-auto text-purple-600 dark:text-purple-300">

                        <!-- Search input -->
                        <div class="flex justify-center flex-1 ">
                            <div class="col-12 col-md-9 text-center justify-content-center">
                                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                                <div class="position-relative mx-auto mb-5">
                                    <input name="shipSearchProduct"
                                        class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill"
                                        type="text" placeholder="Tìm kiếm">
                                    <button type="button" id="shipSearchButton"
                                        class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100"
                                        style="top: 0; right: 25%;">Xác nhận</button>
                                </div>
                            </div>
                        </div>
                        <ul class="flex items-center flex-shrink-0 space-x-6">


                            <li class="relative">
                                <button class="align-middle rounded-full focus:shadow-outline-purple focus:outline-none"
                                    @click="toggleProfileMenu" @keydown.escape="closeProfileMenu" aria-label="Account"
                                    aria-haspopup="true">
                                    <img class="object-cover w-8 h-8 rounded-full"
                                        src="/images/avatar/${sessionScope.avatar}" alt="" aria-hidden="true" />
                                </button>
                                <template x-if="isProfileMenuOpen">
                                    <ul x-transition:leave="transition ease-in duration-150"
                                        x-transition:leave-start="opacity-100" x-transition:leave-end="opacity-0"
                                        @click.away="closeProfileMenu" @keydown.escape="closeProfileMenu"
                                        class="absolute right-0 w-56 p-2 mt-2 space-y-2 text-gray-600 bg-white border border-gray-100 rounded-md shadow-md dark:border-gray-700 dark:text-gray-300 dark:bg-gray-700"
                                        aria-label="submenu">
                                        <li class="flex">
                                            <div
                                                class="inline-flex items-center w-full px-2 py-1 text-sm font-semibold transition-colors duration-150 rounded-md hover:bg-gray-100 hover:text-gray-800 dark:hover:bg-gray-800 dark:hover:text-gray-200">
                                                <svg class="w-4 h-4 mr-3" aria-hidden="true" fill="none"
                                                    stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                    viewBox="0 0 24 24" stroke="currentColor">
                                                    <path
                                                        d="M11 16l-4-4m0 0l4-4m-4 4h14m-5 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h7a3 3 0 013 3v1">
                                                    </path>
                                                </svg>
                                                <form method="post" action="/logout">
                                                    <input type="hidden" name="${_csrf.parameterName}"
                                                        value="${_csrf.token}" />
                                                    <button class="dropdown-item">Đăng xuất</button>
                                                </form>
                                            </div>
                                        </li>
                                    </ul>
                                </template>
                            </li>
                        </ul>
                    </div>
                </header>