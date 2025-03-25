<?php
    include("sambungan.php");
	include("jurujual_menu.php");
?>

<link rel="stylesheet" href="asenarai.css">
<link rel="stylesheet" href="abutton.css">

<main>
    <div id="printarea">
    <?php
       if (isset($_POST['submit'])) {           
            $idpelanggan = $_POST['idpelanggan'];
            $tarikh = $_POST['tarikh'];
            $pilih = $_POST['pilih'];
           
            $sql = "select * from pelanggan where idpelanggan = '$idpelanggan' "; 
            $result = mysqli_query($sambungan, $sql);
            $pelanggan = mysqli_fetch_array($result);
            $namapelanggan = $pelanggan['namapelanggan'];
        
            if ($pilih == 1) {
                echo "<table>
                        <tr>
                            <th>ID</th>
                            <th>Nama</th>
                            <th>Bilangan</th>
                            <th>Harga</th>
                            <th>Jumlah</th>
                        </tr>";
                
                $bayaran = 0;
                
                $sql = "select * from tempahan 
                join makanan on tempahan.idmakanan = makanan.idmakanan
                where tempahan.idpelanggan = '$idpelanggan' and tempahan.tarikh = '$tarikh' ";

                $result = mysqli_query($sambungan, $sql);
                while($tempahan = mysqli_fetch_array($result)) {  
                     $jumlah = $tempahan['bilangan'] * $tempahan['harga'];
                     $jumlah_format = number_format($jumlah, 2);    
                     echo "<tr> <td>$tempahan[idmakanan]</td>
                                <td>$tempahan[namamakanan]</td>
                                <td>$tempahan[bilangan]</td>
                                <td>RM $tempahan[harga]</td>
                                <td>RM $jumlah_format</td>
                           </tr>";
                     $bayaran = $bayaran + $jumlah;
                }
                $bayaran_format = number_format($bayaran, 2);
                
                echo "<br><td colspan = 3><td>Jumlah Bayaran</td><td>RM $bayaran_format</td></tr>";
                echo "<caption><img class=logo src='imej/logo.jpg'><br><img src='imej/namakedai.png' width=400><br>
                          Nama : $namapelanggan Tarikh : $tarikh</caption>
                      </table>"; 
            }
           
            if ($pilih == 2) {             
                echo "<table>
                        <tr>
                            <th>Tarikh</th>
                            <th>ID</th>
                            <th>Makanan</th>
                            <th>Bilangan</th>
                        </tr>";
                            
                $sql = "select * from tempahan 
                join makanan on tempahan.idmakanan = makanan.idmakanan
                where tempahan.idpelanggan = '$idpelanggan' order by tarikh asc";

                $result = mysqli_query($sambungan, $sql);
                while($tempahan = mysqli_fetch_array($result)) {
                     echo "<tr> <td>$tempahan[tarikh]</td>
                                <td>$tempahan[idmakanan]</td>
                                <td>$tempahan[namamakanan]</td>
                                <td>$tempahan[bilangan]</td>
                           </tr>";
                }
                echo "<caption>SENARAI TEMPAHAN<br><br>
                         Nama : $namapelanggan</caption>
                      </table>"; 
            }
       }
    ?>
    </div>
    <center><button class="cetak" onclick="printPageArea()">Cetak</button></center>
</main>

<script>
    function printPageArea(){
        var printContent = document.getElementById("printarea").innerHTML;
        var originalContent = document.body.innerHTML;
        document.body.innerHTML = printContent;
        window.print();
        document.body.innerHTML = originalContent;
    }
</script>
