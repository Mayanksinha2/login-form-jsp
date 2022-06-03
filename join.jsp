<%-- 
    Document   : join
    Created on : 30-May-2022, 3:37:26 pm
    Author     : mayan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="cyan">
    <center>
        <br><br><br><br><br>
        <%
            String uid=request.getParameter("uid").toString();
            String pswd=request.getParameter("pswd").toString();
             
            if(uid.equalsIgnoreCase("manku") & pswd.equalsIgnoreCase("monu"))
                response.sendRedirect("home.html");
            else
                 response.sendRedirect("LoginFail.html");
            
            
           %> 
           <table border="1">
               <thead>
                   <tr>
                       <th colspan="2">Data Posted to Server </th>
                      
                   </tr>
               </thead>
               <tbody>
                   <tr>
                       <td>User Id</td>
                       <td><%=uid%></td>
                   </tr>
                   <tr>
                       <td>Password </td>
                       <td><%= pswd %></td>
                   </tr>
               </tbody>
           </table>
