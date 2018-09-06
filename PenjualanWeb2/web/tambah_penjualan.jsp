<%-- 
    Document   : tambah_user
    Created on : Sep 5, 2018, 2:11:54 PM
    Author     : Lesari Atikahku
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Penjualan Sparepart</title>
    </head>
    <body>
    <center><h1>Tambah Barang </h1></center>
    <form action="penjualanController?data=penjualan&proses=input-penjualan" method="post">
        <table style="margin:20px auto;">

            <tr>
                <td>no faktur</td>
                <td><input type="text" name="no_faktur"></td>
            </tr>
            <tr>
                <td>Tgl Faktur</td>
                <td><input type="text" name="tgl_faktur"></td>
            </tr>
            <tr>
                <td>Nama Konsumen</td>
                <td><input type="text" name="nama_ksm"></td>
            </tr>
            <tr>
                <td>Kode Barang</td>
                <td><input type="text" name="kd_brg"></td>
            </tr>
            <tr>
                <td>Nama Barang</td>
                <td><input type="text" name="nama_brg"></td>
            </tr>
            <tr>
                <td>Stok</td>
                <td><input type="text" name="stok"></td>
            </tr>
            <tr>
                <td>Jumlah</td>
                <td><input type="text" name="jumlah"></td>
            </tr>
            <tr>
                <td>Harga Satuan</td>
                <td><input type="text" name="harga_satuan"></td>
            </tr>
            <tr>
                <td>Harga Total</td>
                <td><input type="text" name="harga_total"></td>
            </tr>

            <tr>
                <td></td>
                <td><input type="submit" value="Simpan"></td>
            </tr>

            <!--            <center>
                            <a class="tambah" href="barangController?proses=input-barang">Tambah</a>
                        </center>-->
        </table>
    </form> 

</body>
</html>
</body>
</html>
