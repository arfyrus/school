<?php
include("sambungan.php");
include("jurujual_menu.php");

if (isset($_POST["submit"])) {
    $idjurujual = $_POST["idjurujual"];
    $password = $_POST["password"];
    $namajurujual = $_POST["namajurujual"];

    $sql = "INSERT INTO jurujual VALUES ('$idjurujual', '$password', '$namajurujual')";
    $result = mysqli_query($sambungan, $sql);
    if ($result == true)
        echo "<h4>Berjaya tambah</h4>";
    else 
        echo "<h4>Ralat: $sql<br>" . mysqli_error($sambungan) . "</h4>";
    }
?>

<link rel="stylesheet" href="aborang.css">
<link rel="stylesheet" href="abutton.css">

<h3 class="panjang">BORANG TAMBAH JURUJUAL</h3>
<form class="panjang" action="jurujual_insert.php" method="post">
    <table>
        <tr>
            <td>ID Jurujual</td>
            <td><input required type="text" name="idjurujual"></td>
        </tr>
        <tr>
            <td>Nama Jurujual</td>
            <td><input type="text" name="namajurujual"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="text" name="password" placeholder="max: 8 char"></td>
        </tr>
    </table>
    <button class="tambah" type="submit" name="submit">Tambah</button>
</form>
