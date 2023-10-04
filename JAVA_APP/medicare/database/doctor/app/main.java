import java.sql.*;

import java.util.ArrayList;

class EmailAndPassword {
    private String email;
    private String password;

    public EmailAndPassword(String email, String password) {
        this.email = email;
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    @Override
    public String toString() {
        return "Email: " + email + ", Password: " + password;
    }
}

public class Main {
    public static void auth(String[] args) {
        ArrayList<EmailAndPassword> emailPasswordList = new ArrayList<>();

        // Adding email and password pairs to the ArrayList
        emailPasswordList=(new EmailAndPassword("temp@mail.com", "12345"));
        emailPasswordList=(new EmailAndPassword("temp1@mail.com", "12345"));

        // Printing the ArrayList
        for (EmailAndPassword pair : emailPasswordList) {
            System.out.println(pair);
        }
    }
}


public class Main {
  public static void main(String[] args) throws Exception {
    // Load and register the JDBC driver
    Class.forName("com.mysql.cj.jdbc.Driver");

    // Create a Connection object
    Connection con = DriverManager.getConnection("localhost/phpmyadmin/doc_app", "root", "password");

    // Create a Statement object
    Statement stmt = con.createStatement();

    // Execute a SQL query
    ResultSet email = stmt.executeQuery("SELECT * FROM users");
    ResultSet password = stmt.executeQuery("SELECT * FROM password");


    // Process the ResultSet
    while (rs.next()) {
      System.out.println(rs.getString("email"));
    }

    // Close the Connection object
    con.close();
  }
}