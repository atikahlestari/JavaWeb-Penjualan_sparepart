<%-- 
    Document   : edit_barang
    Created on : Sep 5, 2018, 6:53:50 PM
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
        <title>Edit Barang</title>
    </head>
    <body>
    <center><h1>Edit Barang</h1></center>
    <form action="barangController?data=barang&proses=edit-barang" method="post">
        <table style="margin:20px auto;">
            <%
                String id = request.getParameter("id");
                barangModel km = new barangModel();
                km.setKd_brg(id);
                List<barangModel> data = new ArrayList<barangModel>();
                data = km.cariKDBRG();
                if (data.size() > 0) {

            %>
            <tr>
                <td>Kode Barang</td>
                <td><input type="text" name="kd_brg" value="<%=data.get(0).getKd_brg()%>"></td>
            </tr>
            <tr>
                <td>Nama Barang</td>
                <td><input type="text" name="nama_brg" value="<%=data.get(0).getNama_brg()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKd_brg()%>"></td>
            </tr>
            <tr>
                <td>Stok</td>
                <td><input type="text" name="stok" value="<%=data.get(0).getStok()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKd_brg()%>"></td>
            </tr>
            <tr>
                <td>Harga Jual</td>
                <td><input type="text" name="harga_jual" value="<%=data.get(0).getHarga_jual()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKd_brg()%>"></td>
            </tr>
            <tr>
                <td>Harga Beli</td>
                <td><input type="text" name="harga_beli" value="<%=data.get(0).getHarga_beli()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKd_brg()%>"></td>
            </tr>
            <tr>
                <td>Satuan</td>
                <td><input type="text" name="satuan" value="<%=data.get(0).getSatuan()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKd_brg()%>"></td>
            </tr>
            <tr>
                <td>Kategori</td>
                <td><input type="text" name="kategori" value="<%=data.get(0).getKategori()%>"></td>
                <td><input type="hidden" name="id" value="<%=data.get(0).getKd_brg()%>"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Edit"></td>
            </tr>
            <%}%>
        </table>

    </form> 

</body>
</html>
