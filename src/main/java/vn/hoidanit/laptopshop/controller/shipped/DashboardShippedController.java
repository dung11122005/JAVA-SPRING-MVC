package vn.hoidanit.laptopshop.controller.shipped;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import vn.hoidanit.laptopshop.domain.Order;
import vn.hoidanit.laptopshop.domain.OrderDetail;
import vn.hoidanit.laptopshop.domain.Order_;
import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.domain.Product_;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.domain.dto.ProductCriteriaDTO;
import vn.hoidanit.laptopshop.repository.OrderRepository;
import vn.hoidanit.laptopshop.service.OrderService;
import vn.hoidanit.laptopshop.service.ProductService;
import vn.hoidanit.laptopshop.service.UploadService;
import vn.hoidanit.laptopshop.service.UserService;

@Controller
public class DashboardShippedController {

    private final OrderService orderService;
    private final UploadService uploadService;
    private final OrderRepository orderRepository;
    private final ProductService productService;
    private final UserService userService;

    public DashboardShippedController(OrderService orderService,
            UploadService uploadService,
            OrderRepository orderRepository,
            ProductService productService,
            UserService userService) {
        this.orderService = orderService;
        this.uploadService = uploadService;
        this.orderRepository = orderRepository;
        this.productService = productService;
        this.userService = userService;
    }

    @GetMapping("/shipped")
    public String getDashboard(Model model, ProductCriteriaDTO productCriteriaDTO, HttpServletRequest request) {

        List<Order> ods = this.orderService.fetchAllOrders();

        List<Order> orders = ods == null ? new ArrayList<Order>() : ods;
        double sum = 0;
        int totalClient = 0;
        if (orders != null) {
            for (Order order : orders) {
                if (order.getStatus().equals("3COMPLETE")) {
                    sum = sum + order.getTotalPrice();
                } else if (order.getStatus().equals("2SHIPPING")) {
                    totalClient++;
                }
            }
        }

        int page = 1;
        try {
            if (productCriteriaDTO.getPage().isPresent()) {
                page = Integer.parseInt(productCriteriaDTO.getPage().get());
            } else {

            }
        } catch (Exception e) {

        }

        Pageable pageable = PageRequest.of(page - 1, 10, Sort.by(Order_.STATUS).ascending());
        Page<Order> or = this.orderService.fetchShipProductPaginationWithSpec(pageable, productCriteriaDTO);

        List<Order> listOrders = or.getContent().size() > 0 ? or.getContent() : new ArrayList<Order>();
        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            // remove page
            qs = qs.replace("page=" + page, "");
        }
        model.addAttribute("shipPingOrders", listOrders);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", or.getTotalPages());
        model.addAttribute("sumPrice", sum);
        model.addAttribute("totalClient", totalClient);
        model.addAttribute("queryString", qs);
        return "shipped/dashboard/show";
    }

    @GetMapping("/shipped/update/{id}")
    public String getShippedUpdate(Model model, @PathVariable long id) {
        Order currentOrder = this.orderService.fetchOrderById(id).get();
        model.addAttribute("newOrder", currentOrder);
        return "shipped/dashboard/update";
    }

    @GetMapping("/shipped/detail/{id}")
    public String getShippedDetail(Model model, @PathVariable long id) {
        Order currentOrder = this.orderService.fetchOrderById(id).get();
        List<OrderDetail> orderDetails = currentOrder == null ? new ArrayList<OrderDetail>()
                : currentOrder.getOrderDetails();
        model.addAttribute("orderDetails", orderDetails);
        model.addAttribute("currentOrder", currentOrder);
        return "shipped/dashboard/detail";
    }

    @PostMapping("/shipped/update")
    public String handleShippedUpdate(@ModelAttribute("newOrder") Order order,
            @RequestParam("hoidanitFile") MultipartFile file, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (!file.isEmpty()) {
            this.orderService.updateOrder(order, file);
        } else {
            this.orderService.updateOrder(order);
        }
        long id = (long) session.getAttribute("id");
        User user = this.userService.getUserById(id);
        session.setAttribute("listOrder", user.getOrders());
        return "redirect:/shipped";
    }

}
