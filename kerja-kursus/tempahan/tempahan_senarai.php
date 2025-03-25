<?php
    include("keselamatan.php");
    include("sambungan.php");
	include("pelanggan_menu.php");

    $no_telefon = $_SESSION["idpengguna"];

    $sql = "select * from pelanggan where no_telefon = '$no_telefon'"; 
    $result = mysqli_query($sambungan, $sql);
    $pelanggan = mysqli_fetch_array($result);
    $namapelanggan = $pelanggan['namapelanggan'];

    date_default_timezone_set("Asia/Kuala_Lumpur");
    $today = date('Y-m-d');
?>

<link rel="stylesheet" href="asenarai.css">
<link rel="stylesheet" href="abutton.css">

<table>
    
    <tr>
        <th>ID</th>
        <th>Nama</th>
        <th colspan="2">Bilangan</th>
        <th>Harga</th>
        <th>Jumlah</th>
        <th>Tempahan</th>
    </tr>

    <?php
        $bayaran = 0;
         
        $sql = "select * from tempahan 
                join makanan on tempahan.idmakanan = makanan.idmakanan
                join pelanggan on tempahan.no_telefon = pelanggan.no_telefon
                where tempahan.no_telefon = '$no_telefon' and tarikh = '$today' ";
        $result = mysqli_query($sambungan, $sql);
    

        while($makanan = mysqli_fetch_array($result)) {
             $idmakanan = $makanan['idmakanan'];    
             $bilangan = $makanan['bilangan'];    
             $jumlah = $makanan['bilangan'] * $makanan['harga'];
             $jumlah_format = number_format($jumlah, 2);    
             echo "<tr> <td>$makanan[idmakanan]</td>
                        <td>$makanan[namamakanan]</td>
                        <td>$makanan[bilangan]</td>
                        <td>
                            <a href='javascript:kemaskini(\"$idmakanan\",\"$no_telefon\",\"$today\");'>
                                <img src='imej/update.png'>
                            </a>
                        </td>
                        <td>RM $makanan[harga]</td>
                        <td>RM $jumlah_format</td>
                        <td>
                            <a href='tempahan_delete.php?idmakanan=$idmakanan&&no_telefon=$no_telefon&&tarikh=$today'>
                                 <img src='imej/delete.png'>
                            </a>
                         </td> 
                   </tr>";
            $bayaran = $bayaran + $jumlah;
        }
    
        $bayaran_format = number_format($bayaran, 2);
        $tarikh = date_format(date_create($today), 'd-m-Y');
        echo "<td colspan = '5'>Jumlah Bayaran</td><td>RM $bayaran_format</td></tr>";
        echo "<caption>SENARAI TEMPAHAN<br><br>
                  Nama : $namapelanggan Tarikh : $tarikh</caption>"; 
    ?>
</table>

<script>
    function kemaskini(idm, idp, t) {
        var bil = prompt("Masukkan bilangan");
        window.location = "tempahan_update.php?idmakanan=" + idm + "&&no_telefon=" + idp + "&&tarikh=" + t + "&&bilangan=" + bil;
    }
</script>
