package vn.hoidanit.laptopshop.controller.shipped;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import vn.hoidanit.laptopshop.domain.Order;
import vn.hoidanit.laptopshop.domain.OrderDetail;
import vn.hoidanit.laptopshop.repository.OrderRepository;
import vn.hoidanit.laptopshop.service.OrderService;
import vn.hoidanit.laptopshop.service.UploadService;

@Controller
public class DashboardShippedController {

    private final OrderService orderService;
    private final UploadService uploadService;
    private final OrderRepository orderRepository;

    public DashboardShippedController(OrderService orderService,
            UploadService uploadService,
            OrderRepository orderRepository) {
        this.orderService = orderService;
        this.uploadService = uploadService;
        this.orderRepository = orderRepository;
    }

    @GetMapping("/shipped")
    public String getDashboard(Model model) {

        List<Order> ods = this.orderService.fetchAllOrders();

        List<Order> orders = ods == null ? new ArrayList<Order>() : ods;
        double sum = 0;
        int totalClient = 0;
        if (orders != null) {
            for (Order order : orders) {
                if (order.getStatus().equals("COMPLETE")) {
                    sum = sum + order.getTotalPrice();
                } else if (order.getStatus().equals("SHIPPING")) {
                    totalClient++;
                }
            }
        }

        model.addAttribute("shipPingOrders", orders);
        model.addAttribute("sumPrice", sum);
        model.addAttribute("totalClient", totalClient);
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
            @RequestParam("hoidanitFile") MultipartFile file) {
        if (!file.isEmpty()) {
            this.orderService.updateOrder(order, file);
        } else {
            this.orderService.updateOrder(order);
        }
        return "redirect:/shipped";
    }

}
