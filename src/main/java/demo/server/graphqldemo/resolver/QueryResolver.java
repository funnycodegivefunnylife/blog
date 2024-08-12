package demo.server.graphqldemo.resolver;

import demo.server.graphqldemo.repository.Blog;
import demo.server.graphqldemo.repository.BlogRepository;
import demo.server.graphqldemo.repository.User;
import demo.server.graphqldemo.repository.UserRepository;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;

import java.util.List;
import java.util.Optional;

@Component
@Controller
public class QueryResolver {

    private final UserRepository userRepository;
    private final BlogRepository blogRepository;

    public QueryResolver(UserRepository userRepository, BlogRepository blogRepository) {
        this.userRepository = userRepository;
        this.blogRepository = blogRepository;
    }

    @QueryMapping
    public List<User> allUsers() {
        return userRepository.findAll();
    }

    @QueryMapping
    public List<Blog> allBlogs() {
        return blogRepository.findAll();
    }

    @QueryMapping
    public List<Blog> blogsByUserId(Integer userId) {
        return blogRepository.findAllByUserId(userId);
    }

    @QueryMapping
    public User userById(Integer userId) {
        return userRepository.findById(userId).orElse(null);
    }
}
