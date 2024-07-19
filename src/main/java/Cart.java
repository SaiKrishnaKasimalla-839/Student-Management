import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.google.gson.Gson;

@WebServlet("/CartServlet")
public class Cart extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productId = request.getParameter("productId");
        HttpSession session = request.getSession();
        
        @SuppressWarnings("unchecked")
		List<String> cart = (List<String>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
        }
        
        switch (productId) {
            case "1":
                cart.add("Product 1");
                break;
            case "2":
                cart.add("Product 2");
                break;
            case "3":
                cart.add("Product 3");
                break;
            default:
                break;
        }
        
        session.setAttribute("cart", cart);
        
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(new Gson().toJson(new CartResponse(cart)));
    }

    private class CartResponse {
        private List<String> cartItems;

        public CartResponse(List<String> cartItems) {
            this.cartItems = cartItems;
        }

        public List<String> getCartItems() {
            return cartItems;
        }
    }
}
