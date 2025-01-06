<%@ page import="project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
try 
{
    Connection con = project.ConnectionProvider.getCon();
    Statement st = con.createStatement();
    String q1 = "CREATE TABLE user ("
                + "name VARCHAR(100),"
                + "email VARCHAR(100) PRIMARY KEY,"
                + "mobileNumber BIGINT,"
                + "securityQuestion VARCHAR(200),"
                + "answer VARCHAR(200),"
                + "password VARCHAR(100),"
                + "address VARCHAR(500),"
                + "city VARCHAR(100),"
                + "state VARCHAR(100),"
                + "country VARCHAR(100)"
                + ")";
    System.out.println(q1);
    st.execute(q1);
    System.out.println("Table Created");
    con.close();
}
catch(Exception e)
{
    e.printStackTrace(); // Print the exception for debugging
}
%>
