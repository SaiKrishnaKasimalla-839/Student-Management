import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/Reg")
@MultipartConfig
public class StudentServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter pw = resp.getWriter();

        try {
            String jdbcUrl = "jdbc:mysql://localhost:3306/register";
            String jdbcUser = "root";
            String jdbcPassword = "Sai@2004";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);
            String insert = "INSERT INTO registration (firstname, lastname, email, Pin, image) VALUES (?, ?, ?, ?, ?)";
            String firstname = req.getParameter("firstname");
            String lastname = req.getParameter("lastname");
            String email = req.getParameter("email");
            String pin = req.getParameter("Pin");
            Part filePart = req.getPart("Profile");
            InputStream profileImageInputStream = null;
            if (filePart != null) {
                profileImageInputStream = filePart.getInputStream();
            }
            PreparedStatement ps = conn.prepareStatement(insert);
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, email);
            ps.setString(4, pin);
            if (profileImageInputStream != null) {
                ps.setBlob(5, profileImageInputStream);
            } else {
                ps.setNull(5, java.sql.Types.BLOB);
            }
            int i = ps.executeUpdate();
            if (i > 0) {
                pw.println("<html><body>");
                pw.println("<h1>Registration successful!</h1>");
                pw.println("</body></html>");
            }

            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace(pw);
            pw.println("<html><body>");
            pw.println("<h1>Error: " + e.getMessage() + "</h1>");
            pw.println("</body></html>");
        } finally {
            pw.close();
        }
    }
}
