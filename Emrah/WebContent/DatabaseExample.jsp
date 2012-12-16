<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 

<html>
<head>
	<title>Insert title here</title>
</head>
<body>

<% 
try
{
	//omogucavanje u eclipsu rad s mysql-om preko jdbc mysql connectora
	Class.forName("com.mysql.jdbc.Driver").newInstance();
	
	//spajanje na bazu, listen port za mysql:3306, ime baze:world, lozinka i korisnicko ime za mysql: meni root i root
	String connectionURL = "jdbc:mysql://localhost:3306/projekt";
	Connection connection = DriverManager.getConnection(connectionURL, "root", "vertrigo");

	//provjera dal je spojeno
	if(!connection.isClosed())
	out.println("Successfully connected to database Bravo");
	connection.close();
}

//ako bilo sto u funkciji try ne uspije (ukljucujuci krivu lozinku, nepostojecu bazu itd), izvrsava se funkcija catch
catch(Exception ex)
{
	out.println("Unable to connect to database.");

}
%>

</body>
</html>