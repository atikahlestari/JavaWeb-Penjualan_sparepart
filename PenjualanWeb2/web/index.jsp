<%-- 
    Document   : index
    Created on : Sep 5, 2018, 1:11:10 PM
    Author     : Lesari Atikahku
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.barangModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Penjualan Spare Part</title>
    </head>

    <body>
    <td> <center><h1>Website Penjualan SparePart</h1></center> </td>
    <td> <center><h1>MENU</h1></center> </td>

<ul style="list-style-type:circle">
    <li> <a href="barangController?proses=menuutama"><h2>Barang</h2></a></li>
    <li><a href="penjualanController?proses=menupenjualan"><h2>Penjualan</h2></li>
</ul>



</body>
</html>
