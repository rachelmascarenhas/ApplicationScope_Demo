<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.LinkedHashSet"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product suggestions</title>
</head>
<body>
    <form action="" method="post">
       <table>
		<tr>
		<td>Product Name </td>
		<td><input type="text" name="txtName"></td><br> 
		</tr>
		<td><input type="submit" value="Print"></td>
		</table>
	</form>
    <%!String productName;
    Set <String> products = new LinkedHashSet<String>();%>
    
    <%
    if (request.getParameter("txtName") != null)
	{
			productName =  request.getParameter("txtName");
			products.add(productName);
			
	}
      
    %>
	<hr>
	<% for (int i=0; i<products.size(); i++) %>
				Suggestion :: <%= products %>
				
			
</body>
</html>
