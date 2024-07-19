import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DataServlet")
public class DataServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve or prepare data
        List<String> dataList = new ArrayList<>();
        dataList.add("Data 1");
        dataList.add("Data 2");
        dataList.add("Data 3");

        // Add data to the request
        request.setAttribute("dataList", dataList);

        // Forward the request to the JSP
        RequestDispatcher dispatcher = request.getRequestDispatcher("data.jsp");
        dispatcher.forward(request, response);
    }
}
