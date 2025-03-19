<?php
include("sambungan.php");

$idmakanan = $_GET['idmakanan'];

$sql = "DELETE FROM makanan WHERE idmakanan='$idmakanan'";
$result = mysqli_query($sambungan, $sql);

echo "<script>window.location='makanan_senarai.php'</script>";
?>
