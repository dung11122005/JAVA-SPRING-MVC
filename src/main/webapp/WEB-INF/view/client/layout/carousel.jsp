<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
            <!-- Vesitable Shop Start-->
            <div class="container-fluid vesitable py-5">
                <div class="container py-5">
                    <h1 class="mb-0">Laptop Gaming - Macbook</h1>
                    <div class="owl-carousel vegetable-carousel justify-content-center">
                        <c:forEach var="product" items="${products}" end="6">
                            <div class="border border-primary rounded position-relative vesitable-item">
                                <div class="vesitable-img">
                                    <img src="/images/product/${product.image}" class="img-fluid w-100 rounded-top"
                                        alt="">
                                </div>
                                <div class="text-white bg-primary px-3 py-1 rounded position-absolute"
                                    style="top: 10px; right: 10px;">Laptop</div>
                                <div style="text-align: center; justify-items: center;" class="p-4 rounded-bottom">
                                    <h4 style="font-size: 15px;">
                                        <a href="/product/${product.id}">
                                            ${product.name}
                                        </a>
                                    </h4>
                                    <p style="font-size: 13px;">${product.shortDesc}</p>
                                    <div class="d-flex justify-content-between flex-lg-wrap">
                                        <p style="font-size: 15px; text-align: center; width: 100%;"
                                            class="text-dark  fw-bold mb-3">
                                            <fmt:formatNumber type="number" value="${product.price}" /> đ
                                        </p>
                                        <a href="#"
                                            class="btn border border-secondary rounded-pill px-3 text-primary"><i
                                                class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
            <!-- Vesitable Shop End -->