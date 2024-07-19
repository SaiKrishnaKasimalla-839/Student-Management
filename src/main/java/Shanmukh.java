import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Shanmukh {
    public static void main(String[] args) {
        try {
            // Load MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to the database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/yourDatabaseName", "root", "root");

            // Example SQL statement
            String sql = "INSERT INTO yourTableName (column1, column2) VALUES (?, ?)";

            // Prepare the SQL statement
            PreparedStatement pmst = conn.prepareStatement(sql);

            // Set parameters (example values)
            pmst.setString(1, "value1");
            pmst.setString(2, "value2");

            // Execute the update
            pmst.executeUpdate();

            // Close the resources
            pmst.close();
            conn.close();
        } catch (Exception exp) {
            exp.printStackTrace();
        }
    }
}
