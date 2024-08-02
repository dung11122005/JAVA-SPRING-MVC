package vn.hoidanit.laptopshop.controller.client;

import java.util.List;
import java.util.Optional;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import vn.hoidanit.laptopshop.domain.Order;
import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.domain.dto.RegisterDTO;
import vn.hoidanit.laptopshop.service.OrderService;
import vn.hoidanit.laptopshop.service.ProductService;
import vn.hoidanit.laptopshop.service.UploadService;
import vn.hoidanit.laptopshop.service.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class HomePageController {

    private final ProductService productService;
    private final UserService userService;
    private final PasswordEncoder passwordEncoder;
    private final OrderService orderService;
    private final UploadService uploadService;

    public HomePageController(
            ProductService productService,
            UserService userService,
            PasswordEncoder passwordEncoder,
            OrderService orderService,
            UploadService uploadService) {
        this.productService = productService;
        this.userService = userService;
        this.passwordEncoder = passwordEncoder;
        this.orderService = orderService;
        this.uploadService = uploadService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Product> products = this.productService.fetchProducts();
        model.addAttribute("products", products);
        return "client/homepage/show";
    }

    @GetMapping("/register")
    public String getRegisterPage(Model model) {
        model.addAttribute("registerUser", new RegisterDTO());
        return "client/auth/register";
    }

    @PostMapping("/register")
    public String handleRegister(
            @ModelAttribute("registerUser") @Valid RegisterDTO registerDTO,
            BindingResult registerUserBindingResult) {
        List<FieldError> errors = registerUserBindingResult.getFieldErrors();
        for (FieldError error : errors) {
            System.out.println(">>>>>         >>>>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        if (registerUserBindingResult.hasErrors()) {
            return "client/auth/register";
        }
        User user = this.userService.registerDTOtoUser(registerDTO);
        String hashPassword = this.passwordEncoder.encode(user.getPassword());

        user.setPassword(hashPassword);
        user.setAvatar("avatar_default.png");
        user.setRole(this.userService.getRoleByName("USER"));
        // Save
        this.userService.handleSaveUser(user);
        return "redirect:/login";
    }

    @GetMapping("/login")
    public String getLoginPage(Model model) {
        return "client/auth/login";
    }

    @GetMapping("/access-deny")
    public String getAccessDenyPage(Model model) {

        return "client/auth/accessDeny";
    }

    @GetMapping("/order-history")
    public String getOrderHistoryPage(Model model, HttpServletRequest request) {
        User currentUser = new User();// null
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);

        List<Order> orders = this.orderService.fetchOrderByUser(currentUser);
        model.addAttribute("orders", orders);

        return "client/cart/order-history";
    }

    @GetMapping("/user-profile")
    public String getUserProfilePage(Model model, HttpServletRequest request) {

        return "client/profile/profile";
    }

    @PostMapping("/update-user-in-profile")
    public String handleUpdateUserInProfilePage(
            HttpServletRequest request,
            @RequestParam("fullName") String fullName,
            @RequestParam("address") String address,
            @RequestParam("phone") String phone,
            @RequestParam("hoidanitFile") MultipartFile file) {

        if (fullName == "" && address == "" && phone == "") {
            return "redirect:/user-profile";
        }

        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        User currentUser = this.userService.getUserById(id);
        // if (!file.isEmpty()) {
        // String img = this.uploadService.handleSaveUploadFile(file, "avatar");
        // currentUser.setAvatar(img);
        // }
        if (fullName != "") {
            currentUser.setFullName(fullName);
        }
        if (address != "") {
            currentUser.setAddress(address);
        }
        if (phone != "") {
            currentUser.setPhone(phone);
        }

        this.userService.handleSaveUser(currentUser);

        session.setAttribute("fullName", currentUser.getFullName());
        session.setAttribute("address", currentUser.getAddress());
        session.setAttribute("phone", currentUser.getPhone());
        // session.setAttribute("avatar", currentUser.getAvatar());

        return "redirect:/user-profile";
    }
}
