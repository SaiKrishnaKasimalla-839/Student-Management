import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/FetchStudentDetails")
public class FetchDetails extends HttpServlet {
    private static final long serialVersionUID = 1L;

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
            String sql = "SELECT * FROM student_marks WHERE pin = ?";
            String pin = request.getParameter("pin");
            ps = conn.prepareStatement(sql);
            ps.setString(1, pin);
            rs = ps.executeQuery();
            out.println("<html><head>");
            out.println("<style>");
            out.println("body { font-family: 'Comic Sans MS', cursive, sans-serif; background: linear-gradient(to right, #f7cac9, #92a8d1); display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }");
            out.println(".container { background-color: white; padding: 20px; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); }");
            out.println("h2 { color: #333; text-align: center; }");
            out.println("table { width: 100%; border-collapse: collapse; margin-top: 20px; }");
            out.println("table, th, td { border: 1px solid #ddd; }");
            out.println("th, td { padding: 12px; text-align: center; }");
            out.println("th { background-color: #4CAF50; color: white; }");
            out.println("tr:nth-child(even) { background-color: #f2f2f2; }");
            out.println("tr:hover { background-color: #ddd; }");
            out.println("</style>");
            out.println("</head><body>");
            out.println("<div class='container'>");

            if (rs.next()) {
                out.println("<h2>Student Details</h2>");
                out.println("<h3>Sem Marks:</h3>");
                out.println("<table>");
                out.println("<tr><th>Field</th><th>Details</th></tr>");
                out.println("<tr><td>PIN</td><td>" + rs.getString("pin") + "</td></tr>");
                out.println("<tr><td>Cryptography</td><td>" + rs.getInt("Cryptography") + "</td></tr>");
                out.println("<tr><td>Big Data Analytics</td><td>" + rs.getInt("Big_Data_Analytics") + "</td></tr>");
                out.println("<tr><td>Machine Learning</td><td>" + rs.getInt("Machine_Learning") + "</td></tr>");
                out.println("<tr><td>Advanced Data Structures</td><td>" + rs.getInt("Advanced_Data_Structures") + "</td></tr>");
                out.println("<tr><td>Solid Waste Engineering</td><td>" + rs.getInt("Solid_Waste_Engineering") + "</td></tr>");
                
                // Calculate CGPA
                double totalMarks = rs.getInt("Cryptography") + rs.getInt("Big_Data_Analytics") +
                                    rs.getInt("Machine_Learning") + rs.getInt("Advanced_Data_Structures") +
                                    rs.getInt("Solid_Waste_Engineering");
                double cgpa = totalMarks / 5.0; 
                
                out.println("<tr><td>Percentage</td><td>" + cgpa + "</td></tr>");
                out.println("</table>");
            } else {
                out.println("<h2>No student found with PIN " + pin + "</h2>");
            }
            
            out.println("</div>");
            out.println("</body></html>");
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("<html><body><h2>Error: " + e.getMessage() + "</h2></body></html>");
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
