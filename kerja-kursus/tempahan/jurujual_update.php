<?php
include("sambungan.php");
include("jurujual_menu.php");

if (isset($_POST['submit'])) {
    $idjurujual = $_POST['idjurujual'];
    $namajurujual = $_POST['namajurujual'];
    $password = $_POST['password'];

    $sql = "UPDATE jurujual SET namajurujual='$namajurujual', password='$password' WHERE idjurujual='$idjurujual'";
    $result = mysqli_query($sambungan, $sql);
    if ($result == true)
        echo "<h4>Berjaya kemaskini</h4>";
    else
        echo "<h4>Ralat: $sql<br>" . mysqli_error($sambungan) . "</h4>";
}

if (isset($_GET['idjurujual']))
    $idjurujual = $_GET['idjurujual'];

$sql = "SELECT * FROM jurujual WHERE idjurujual='$idjurujual'";
$result = mysqli_query($sambungan, $sql);

while ($jurujual = mysqli_fetch_array($result)) {
    $password = $jurujual['password'];
    $namajurujual = $jurujual['namajurujual'];
}
?>

<link rel="stylesheet" href="aborang.css">
<link rel="stylesheet" href="abutton.css">

<h3 class="panjang">KEMASKINI JURUJUAL</h3>
<form class="panjang" action="jurujual_update.php" method="post">
    <table>
        <tr>
            <td>ID Jurujual</td>
            <td><input type="text" name="idjurujual" value="<?php echo $idjurujual; ?>"></td>
        </tr>
        <tr>
            <td>Nama Jurujual</td>
            <td><input type="text" name="namajurujual" value="<?php echo $namajurujual; ?>"></td>
        </tr>
        <tr>
            <td>Password</td>
            <td><input type="text" name="password" value="<?php echo $password; ?>"></td>
        </tr>
    </table>
    <button class="update" type="submit" name="submit">Update</button>
</form>

