package demo.server.graphqldemo.resolver;

import demo.server.graphqldemo.repository.Blog;
import demo.server.graphqldemo.repository.BlogRepository;
import demo.server.graphqldemo.repository.User;
import demo.server.graphqldemo.repository.UserRepository;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.stereotype.Component;

@Component
public class MutationResolver {

    private final UserRepository userRepository;
    private final BlogRepository blogRepository;

    public MutationResolver(UserRepository userRepository, BlogRepository blogRepository) {
        this.userRepository = userRepository;
        this.blogRepository = blogRepository;
    }

    @MutationMapping
    public User createUser(String username, String email, String passwordHash) {
        User user = new User();
        user.setUsername(username);
        user.setEmail(email);
        user.setPasswordHash(passwordHash);
        return userRepository.save(user);
    }

    @MutationMapping
    public Blog createBlog(String title, String content, Integer userId) {
        Blog blog = new Blog();
        blog.setTitle(title);
        blog.setContent(content);

        User user = userRepository.findById(userId).orElseThrow(() -> new RuntimeException("User not found"));
        blog.setUser(user);

        return blogRepository.save(blog);
    }
}
