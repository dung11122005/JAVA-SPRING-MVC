package vn.hoidanit.laptopshop.controller.client;

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

import vn.hoidanit.laptopshop.domain.Cart;
import vn.hoidanit.laptopshop.domain.CartDetail;
import vn.hoidanit.laptopshop.domain.Comment;
import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.domain.Product_;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.domain.dto.ProductCriteriaDTO;
import vn.hoidanit.laptopshop.service.CommentService;
import vn.hoidanit.laptopshop.service.OrderService;
import vn.hoidanit.laptopshop.service.ProductService;
import vn.hoidanit.laptopshop.service.UserService;

import org.springframework.web.bind.annotation.PostMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ItemController {

    private final ProductService productService;
    private final OrderService orderService;
    private final UserService userService;
    private final CommentService commentService;

    public ItemController(ProductService productService,
            OrderService orderService,
            UserService userService,
            CommentService commentService) {
        this.productService = productService;
        this.orderService = orderService;
        this.userService = userService;
        this.commentService = commentService;
    }

    @GetMapping("/product/{id}")
    public String getProductPage(Model model, @PathVariable long id) {
        Optional<Product> OptionalPr = this.productService.fetchProductById(id);
        List<Product> ListProductBest = this.orderService.fetchBestSellingProductPage();
        List<Product> productCarousel = this.productService.fetchProducts();
        Product pr;
        Product prs = new Product();

        Optional optionalProduct = this.productService.fetchProductById(id);
        if (optionalProduct.isPresent()) {
            prs = (Product) optionalProduct.get();
        }
        List<Comment> comments = prs.getComments();

        if (OptionalPr.isPresent()) {
            pr = OptionalPr.get();
        } else {
            pr = null;
        }
        model.addAttribute("product", pr);
        model.addAttribute("products", ListProductBest);
        model.addAttribute("productCarousel", productCarousel);
        model.addAttribute("comments", comments);
        model.addAttribute("id", id);

        return "client/product/detail";
    }

    @PostMapping("/add-product-to-cart/{id}")
    public String addProductToCart(@PathVariable long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        long productId = id;
        String email = (String) session.getAttribute("email");
        this.productService.handleAddProductToCart(email, productId, session, 1);
        return "redirect:/";
    }

    @GetMapping("/cart")
    public String getCartPage(Model model, HttpServletRequest request) {
        User currenUser = new User();
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currenUser.setId(id);

        Cart cart = this.productService.fetchByUser(currenUser);

        List<CartDetail> cds = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
        List<CartDetail> cartDetails = new ArrayList<CartDetail>();
        double totalPrice = 0;

        for (CartDetail cd : cds) {
            cd.setCheckbox(0);
            this.productService.saveCartDetail(cd);
            totalPrice += cd.getPrice() * cd.getQuantity();
            cartDetails.add(cd);
        }

        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);
        model.addAttribute("cart", cart);
        return "client/cart/show";
    }

    @PostMapping("/delete-cart-product/{id}")
    public String deleteCartDetail(@PathVariable long id, HttpServletRequest request) {
        HttpSession session = request.getSession(false);

        long cartDetailId = id;
        this.productService.handleRemoveCartDetail(cartDetailId, session);
        return "redirect:/cart";
    }

    @GetMapping("/checkout")
    public String getCheckOutPage(Model model, HttpServletRequest request) {
        User currentUser = new User();// null
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);

        Cart cart = this.productService.fetchByUser(currentUser);

        List<CartDetail> cds = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
        List<CartDetail> cartDetails = new ArrayList<CartDetail>();
        for (CartDetail cd : cds) {
            if (cd.getCheckbox() != 0) {
                cartDetails.add(cd);
            }
        }

        double totalPrice = 0;
        for (CartDetail cd : cartDetails) {
            if (cd.getCheckbox() != 0) {
                totalPrice += cd.getPrice() * cd.getQuantity();
            }

        }

        model.addAttribute("cartDetails", cartDetails);
        model.addAttribute("totalPrice", totalPrice);

        return "client/cart/checkout";
    }

    @PostMapping("/confirm-checkout")
    public String getCheckOutPage(@ModelAttribute("cart") Cart cart) {
        List<CartDetail> cartDetails = cart == null ? new ArrayList<CartDetail>() : cart.getCartDetails();
        this.productService.handleUpdateCartBeforeCheckout(cartDetails);
        return "redirect:/checkout";
    }

    @GetMapping("/thanks")
    public String getThankYouPage(Model model) {
        return "client/cart/thanks";
    }

    @PostMapping("/place-order")
    public String handlePlaceOrder(
            HttpServletRequest request,
            @RequestParam("receiverName") String receiverName,
            @RequestParam("receiverAddress") String receiverAddress,
            @RequestParam("receiverPhone") String receiverPhone) {
        User currentUser = new User();// null
        HttpSession session = request.getSession(false);
        long id = (long) session.getAttribute("id");
        currentUser.setId(id);

        this.productService.handlePlaceOrder(currentUser, session, receiverName, receiverAddress, receiverPhone);

        return "redirect:/thanks";
    }

    @PostMapping("/add-product-from-view-detail")
    public String postMethodName(@RequestParam("id") long id,
            @RequestParam("quantity") long quantity,
            HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        String email = (String) session.getAttribute("email");
        this.productService.handleAddProductToCart(email, id, session, quantity);
        return "redirect:/product/" + id;
    }

    @GetMapping("/products")
    public String getProductPage(Model model, ProductCriteriaDTO productCriteriaDTO, HttpServletRequest request) {
        int page = 1;
        try {
            if (productCriteriaDTO.getPage().isPresent()) {
                page = Integer.parseInt(productCriteriaDTO.getPage().get());
            } else {

            }
        } catch (Exception e) {

        }

        Pageable pageable = PageRequest.of(page - 1, 30);
        if (productCriteriaDTO.getSort() != null && productCriteriaDTO.getSort().isPresent()) {
            String sort = productCriteriaDTO.getSort().get();
            if (sort.equals("gia-tang-dan")) {
                pageable = PageRequest.of(page - 1, 3, Sort.by(Product_.PRICE).ascending());
            } else if (sort.equals("gia-giam-dan")) {
                pageable = PageRequest.of(page - 1, 3, Sort.by(Product_.PRICE).descending());
            }
        }

        Page<Product> pr = this.productService.fetchProductPaginationWithSpec(pageable, productCriteriaDTO);

        List<Product> listproduct = pr.getContent().size() > 0 ? pr.getContent() : new ArrayList<Product>();

        String qs = request.getQueryString();
        if (qs != null && !qs.isBlank()) {
            // remove page
            qs = qs.replace("page=" + page, "");
        }

        model.addAttribute("products", listproduct);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", pr.getTotalPages());
        model.addAttribute("queryString", qs);
        return "client/product/show";
    }

    @PostMapping("/confirm-comment")
    public String postConfirmComment(HttpServletRequest request,
            @RequestParam("radio-sort") String star,
            @RequestParam("description") String description,
            @RequestParam("id") long idProduct) {
        HttpSession session = request.getSession(false);
        User currentUser = new User();// null
        long id = (long) session.getAttribute("id");
        currentUser = this.userService.getUserById(id);
        Product product = new Product();
        Optional optionalProduct = this.productService.fetchProductById(idProduct);
        if (optionalProduct.isPresent()) {
            product = (Product) optionalProduct.get();
        }
        int sta = Integer.parseInt(star);
        this.commentService.handleConfirmComment(sta, description, idProduct, currentUser, product);
        return "redirect:/product/" + idProduct;
    }

}
