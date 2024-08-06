package vn.hoidanit.laptopshop.service;

import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.Comment;
import vn.hoidanit.laptopshop.domain.Product;
import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.CommentRepository;

@Service
public class CommentService {

    private final CommentRepository commentRepository;

    public CommentService(CommentRepository commentRepository) {
        this.commentRepository = commentRepository;
    }

    public void handleConfirmComment(String star, String description, long idProduct, User currentUser,
            Product product) {
        Comment comment = new Comment();
        comment.setSta(star);
        comment.setDescription(description);
        comment.setUser(currentUser);
        comment.setProduct(product);
        this.commentRepository.save(comment);
    }

}
