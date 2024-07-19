import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/Marks")
public class StudentMarks extends HttpServlet {
    private static final long serialVersionUID = 1L;
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement ps = null;

        try {
            String jdbcUrl = "jdbc:mysql://localhost:3306/register";
            String jdbcUser = "root";
            String jdbcPassword = "Sai@2004";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);

            String marks = "INSERT INTO student_marks (pin, Cryptography, Big_Data_Analytics, Machine_Learning, Advanced_Data_Structures, Solid_Waste_Engineering) VALUES (?, ?, ?, ?, ?, ?)";
            
            String pin = req.getParameter("pin");
            int cryptography = Integer.parseInt(req.getParameter("Cryptography"));
            int bda = Integer.parseInt(req.getParameter("bda"));
            int ml = Integer.parseInt(req.getParameter("ml"));
            int ads = Integer.parseInt(req.getParameter("ads"));
            int swm = Integer.parseInt(req.getParameter("swm"));
            ps = conn.prepareStatement(marks);
            ps.setString(1, pin);
            ps.setInt(2, cryptography);
            ps.setInt(3, bda);
            ps.setInt(4, ml);
            ps.setInt(5, ads);
            ps.setInt(6, swm);

            int i = ps.executeUpdate();
            if (i > 0) {
                System.out.println("Inserted Successfully");
                resp.getWriter().write("Inserted Successfully");
            } else {
                System.out.println("Error In Inserting");
                resp.getWriter().write("Error In Inserting");
            }
        } catch (Exception e) {
            e.printStackTrace();
            resp.getWriter().write("Error: " + e.getMessage());
        } finally {
            try {
                if (ps != null) {
                    ps.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
