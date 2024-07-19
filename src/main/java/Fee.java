import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Fee")
public class Fee extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter pw = resp.getWriter();

        Connection conn = null;
        PreparedStatement ps = null;

        try {
            String jdbcUrl = "jdbc:mysql://localhost:3306/register";
            String jdbcUser = "root";
            String jdbcPassword = "Sai@2004";
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);

            String str = "INSERT INTO Fees(pin, College_Fee, Management, Due) VALUES(?, ?, ?, ?)";
            String pin = req.getParameter("pin");
            int College_Fee = Integer.parseInt(req.getParameter("College_Fee"));
            int Management = Integer.parseInt(req.getParameter("Management"));
            int due = Integer.parseInt(req.getParameter("due"));

            ps = conn.prepareStatement(str);
            ps.setString(1, pin);
            ps.setInt(2, College_Fee);
            ps.setInt(3, Management);
            ps.setInt(4, due);

            int rowsAffected = ps.executeUpdate();

            if (rowsAffected > 0) {
                pw.println("<h2>Fee details inserted successfully!</h2>");
            } else {
                pw.println("<h2>Failed to insert fee details.</h2>");
            }
        } catch (Exception e) {
            e.printStackTrace();
            pw.println("<h2>Error: " + e.getMessage() + "</h2>");
        } finally {
            try {
                if (ps != null) ps.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        pw.close();
    }
}
