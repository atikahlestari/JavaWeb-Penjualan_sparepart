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
    <center><h1>Penjualan SparePart</h1></center>
    <table style="margin:20px auto;" border="1">
        <center>
            <a class="tambah" href="barangController?proses=input-barang">Tambah</a>
        </center>
        <tr>
            <th>Kode Barang</th>
            <th>Nama Barang</th>
            <th>Stok</th>
            <th>Harga Jual</th>
            <th>Harga Beli</th>
            <th>Satuan</th>
            <th>Kategori</th>
            <th>Action</th>
        </tr>
        <%
            barangModel km = new barangModel();
            List<barangModel> data = new ArrayList<barangModel>();
            String ket = request.getParameter("ket");
            if (ket == null) {
                data = km.tampil();
            }
            for (int x = 0; x < data.size(); x++) {
        %>
        <tr>

            <td><%=data.get(x).getKd_brg()%></td>
            <td><%=data.get(x).getNama_brg()%></td>
            <td><%=data.get(x).getStok()%></td>
            <td><%=data.get(x).getHarga_jual()%></td>
            <td><%=data.get(x).getHarga_beli()%></td>
            <td><%=data.get(x).getSatuan()%></td>
            <td><%=data.get(x).getKategori()%></td>
            <td>
                <a href="barangController?proses=edit-barang&id=<%=data.get(x).getKd_brg()%>">Edit</a>

                <a href="barangController?proses=hapus-barang&id=<%=data.get(x).getKd_brg()%>">Hapus</a>
            </td>
        </tr>
        <%}%>

    </table>
    <!--         <a href="penjualanController?proses=menuutama">data_penjual-->></a>-->
</body>
</html>
