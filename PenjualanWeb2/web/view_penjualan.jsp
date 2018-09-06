<%-- 
    Document   : view_penjualan
    Created on : Sep 5, 2018, 9:02:14 PM
    Author     : Lesari Atikahku
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.penjualanModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaksi Penjualan</title>
    </head>

    <body>
    <center><h1> Transaksi Penjualan </h1></center>
    <center>
    <table style=""margin:20px auto;" border="1">
           <center>
            <a class="tambah" href="penjualanController?proses=input-penjualan">Tambah</a>
        </center>
        <tr>
            <th> Tanggal Faktur </th>
            <th> No Faktur</th>
            <th>Nama Konsumen</th>
            <th> Kode Barang </th>
            <th>Nama Barang</th>
            <th>Stok</th>
            <th> Jumlah </th>
            <th> Harga Satuan </th>
            <th> Harga Total </th>
            <th>Action</th>


        </tr>
        <%
            penjualanModel km = new penjualanModel();
            List<penjualanModel> data = new ArrayList<penjualanModel>();
            String ket = request.getParameter("ket");
            if (ket == null) {
                data = km.tampil();
            }
            for (int x = 0; x < data.size(); x++) {
        %>
        <tr>

            <td><%=data.get(x).getNo_faktur()%></td>
            <td><%=data.get(x).getTgl_faktur()%></td>
            <td><%=data.get(x).getNama_ksm()%></td>
            <td><%=data.get(x).getKd_brg()%></td>
            <td><%=data.get(x).getNama_brg()%></td>
            <td><%=data.get(x).getStok()%></td>
            <td><%=data.get(x).getJumlah()%></td>
            <td><%=data.get(x).getHarga_satuan()%></td>
            <td><%=data.get(x).getHarga_total()%></td>
            
            <td>
                <a href="penjualanController?proses=hapus-penjualan&id=<%=data.get(x).getKd_brg()%>">Hapus</a>
                
                
            </td>
        </tr>
        
        <%}%>
    

    </table>
</center>
</body>
</html>
