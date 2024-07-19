import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@WebServlet("/ProfileServlet")
@MultipartConfig(maxFileSize = 16177215) 
public class ProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String pin = request.getParameter("pin");

        Part filePart = request.getPart("Profile");

        InputStream inputStream = null;
        if (filePart != null) {
            inputStream = filePart.getInputStream();
        }

        request.setAttribute("email", email);
        request.setAttribute("pin", pin);
        request.setAttribute("profileImage", inputStream);

        request.getRequestDispatcher("21551A0593.jsp").forward(request, response);
    }
}
