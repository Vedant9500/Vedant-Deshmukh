package practical;

import java.util.*;
import java.sql.*; 

public class sql
{
	public static void main(String[] args) {
		
		try {
	        Scanner sc = new Scanner(System.in);
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studdemo", "root", "root");
            Statement stm = con.createStatement();
            //stm.executeUpdate("Create database studdemo");
            //System.out.println("Database created");
            //stm.executeUpdate("Create table students (stud_id int primary key AUTO_INCREMENT,name varchar(100),age int)");
            //System.out.println("table created");
            System.out.println("Enter the student id");
            int id=sc.nextInt();
            System.out.println("Enter the name of student :");
            String name = sc.next();
            System.out.println("Enter the age of student : ");
            int age = sc.nextInt();
            stm.executeUpdate("Insert into students values("+id+",'"+name+"',"+age+")");
            con.close();
            sc.close();
        	} catch (Exception e) {
        	System.out.println("Error: " + e.getMessage());
        }
	}

}
