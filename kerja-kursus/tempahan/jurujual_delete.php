<?php
include("sambungan.php");
include("jurujual_menu.php");

$idjururjual = $_GET["idjurujual"];

$sql = "DELETE FROM jurujual WHERE idjurujual = $idjurujual";
$result = mysqli_query($sambungan, $sql);

echo "<script>window.location='jurujual_senarai.php'</script>";
?>
