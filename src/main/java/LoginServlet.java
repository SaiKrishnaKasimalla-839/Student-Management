import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String email = request.getParameter("email");
        String pin = request.getParameter("pin");

        if ("saikrishnakasimalla@gmail.com".equals(email) && "21551A0593".equals(pin)) {
          
            RequestDispatcher dispatcher = request.getRequestDispatcher("21551A0593.jsp");
            dispatcher.forward(request, response);
        } else {
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
            dispatcher.forward(request, response);
        }
    }
}
