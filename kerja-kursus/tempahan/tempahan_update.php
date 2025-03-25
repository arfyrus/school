<?php
    include("sambungan.php");

    $idmakanan = $_GET["idmakanan"];
    $no_telefon = $_GET["no_telefon"];
    $tarikh = $_GET["tarikh"];
    $bilangan = $_GET["bilangan"];;

    $sql = "update tempahan set bilangan = $bilangan 
    where idmakanan = '$idmakanan' and no_telefon = '$no_telefon' and tarikh = '$tarikh' ";
    $result = mysqli_query($sambungan, $sql);

    echo "<script>window.location='tempahan_senarai.php'</script>";
?>
