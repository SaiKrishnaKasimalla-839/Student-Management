import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FeeFetch")
public class FeeFetch extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String jdbcUrl = "jdbc:mysql://localhost:3306/register";
        String jdbcUser = "root";
        String jdbcPassword = "Sai@2004";
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);
            String sql = "SELECT * FROM Fees WHERE pin = ?";
            String pin = request.getParameter("pin");
            ps = conn.prepareStatement(sql);
            ps.setString(1, pin);
            rs = ps.executeQuery();
            
            out.println("<html><head>");
            out.println("<style> "
            		+ "body {"
            		+ "background-image: url('https://img.freepik.com/premium-vector/man-standing-front-desk-with-light-bulb-analysis-business-project-preparation-simple-minimalist-flat-vector-illustration_538213-50365.jpg?ga=GA1.1.171440431.1708965654&semt=ais_user');"
            		+ "background-repeat: no-repeat;"
            		+ "background-size: cover;"
            		+ "}"
            		+ "table {width: 50%; border-collapse: collapse; margin: 50px auto;}"
            		+ "th, td {padding: 15px; text-align: left; border-bottom: 1px solid #ddd;}"
            		+ "tr:hover {background-color: #f5f5f5;}"
            		+ "th {background-color: #4CAF50; color: white;}"
            		+ "h2 {text-align: center;}"
            		+ "</style>");
            out.println("</head><body>");
            
            if (rs.next()) {
                out.println("<h2>Fee Details for PIN: " + pin + "</h2>");
                out.println("<table>");
                out.println("<tr><th>College Fee</th><th>Management Fee</th><th>Due</th></tr>");
                out.println("<tr>");
                out.println("<td>" + rs.getInt("College_Fee") + "</td>");
                out.println("<td>" + rs.getInt("Management") + "</td>");
                out.println("<td>" + rs.getInt("Due") + "</td>");
                out.println("</tr>");
                out.println("</table>");
            } else {
                out.println("<h2>No records found for PIN: " + pin + "</h2>");
            }
            out.println("</body></html>");
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        out.close();
    }
}
