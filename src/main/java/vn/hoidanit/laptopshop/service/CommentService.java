package vn.hoidanit.laptopshop.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.Comment;
import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.CommentRepository;
import vn.hoidanit.laptopshop.repository.ProductRepository;

@Service
public class CommentService {

    private final CommentRepository commentRepository;
    private final ProductRepository productRepository;

    public CommentService(CommentRepository commentRepository, ProductRepository productRepository) {
        this.commentRepository = commentRepository;
        this.productRepository = productRepository;
    }

    public void handleConfirmComment(int star, String description, long idProduct, User currentUser,
            Product product) {

        try {
            List<Comment> cOptional = product.getComments();
            if (cOptional != null) {
                int dem = 0;
                int tong = 0;
                for (Comment cmt : cOptional) {
                    tong = cmt.getSta() + tong;
                    dem++;
                }
                float num = (float) (tong) / (float) dem;
                int starProduct = Math.round(num);
                product.setSta(starProduct);
                this.productRepository.save(product);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }

        Comment comment = new Comment();

        comment.setSta(star);
        comment.setDescription(description);
        comment.setUser(currentUser);
        comment.setProduct(product);
        this.commentRepository.save(comment);
    }

}
