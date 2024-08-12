package demo.server.graphqldemo.resolver;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class HtmlController {

    @GetMapping("/leaderboard")
    public String showLeaderboardPage() {
        return "leaderboard.html"; // Return the name of the HTML file without the extension
    }

    @GetMapping("/index")
    public String blog() {
        return  "index.html"; // Return the name of the HTML file without the extension
    }
}

