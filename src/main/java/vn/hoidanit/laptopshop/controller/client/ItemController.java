package vn.hoidanit.laptopshop.controller.client;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.service.ProductService;

@Controller
public class ItemController {

    private final ProductService productService;

    public ItemController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/product/{id}")
    public String getProductPage(Model model, @PathVariable long id) {
        Optional<Product> OptionalPr = this.productService.fetchProductById(id);
        List<Product> ListProduct = this.productService.fetchProducts();
        Product pr;
        if (OptionalPr.isPresent()) {
            pr = OptionalPr.get();
        } else {
            pr = null;
        }
        model.addAttribute("product", pr);
        model.addAttribute("products", ListProduct);
        model.addAttribute("id", id);

        return "client/product/detail";
    }

}
