<?php
include("sambungan.php");
include("jurujual_menu.php");

if (isset($_POST["submit"])) {
    $idmakanan = $_POST["idmakanan"];
    $namamakanan = $_POST["namamakanan"];
    $harga = $_POST["harga"];

    $namafail = $idmakanan."png";
    $sementara = $_FILES["namafail"]["tmp_name"];
    move_uploaded_file($sementara, "imej/".basename($namafail));

    $sql = "UPDATE makanan SET namamakanan = '$namamakanan', gambar = '$namafail', harga = $harga WHERE idmakanan = '$idmakanan'";
    $result = mysqli_query($sambungan, $sql);
    if ($result == true)
    echo "<h4>Berjaya kemaskini</h4>";
    else
    echo "<h4>Ralat : $sql<br>".mysqli_error($sambungan)."</h4>";
}

if (isset($_GET["idmakanan"])) $idmakanan = $_GET["idmakanan"];

$sql = "SELECT * FROM makanan WHERE idmakanan = '$idmakanan'";
$result = mysqli_query($sambungan, $sql);
while ($makanan = myswli_fetch_array($result)) {
    $namamakanan = $makanan["namamakanan"];
    $namafail = $idmakanan.".png";
    $harga = $makanan["harga"];
}

?>

<link rel="stylesheet" href="aborang.css">
<link rel="stylesheet" href="abutton.css">

<h3 class="panjang">KEMASKINI makanan</h3>
<form class="panjang" action="makanan_update.php" method="post" enctype="multipart/form-data">
    <table>
            <tr>
                <td>ID makanan</td>
                <td><input type="text" name="idmakanan" value="<?php echo $idmakanan; ?>"></td>
            </tr>
            <tr>
                <td>Nama makanan</td>
                <td><input type="text" name="namamakanan" value="<?php echo $namamakanan; ?>"></td>
            </tr>
            <tr>
                <td class="warna">Gambar 350x320</td>
                <td><input type="file" name="namafail" accept=".png, .jpg"><?php echo "<img width=100 src='imej/".$namafail."'>";?></td>
            </tr>
            <tr>
                <td>Harga</td>
                <td><input type="text" name="harga" value="<?php echo $harga; ?>"></td>
            </tr>
        </table>
    <button class="update" type="submit" name="submit">Update</button>
</form>
