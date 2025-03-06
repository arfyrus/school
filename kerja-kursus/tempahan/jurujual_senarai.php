<?php
    include("sambungan.php");
    include("jurujual_menu.php");
?>

<link rel="stylesheet" href="asenarai.css">
<table class="jurujual">
    <caption>SENARAI NAMA JURUJUAL</caption>
    <tr>
        <th>ID</th>
        <th>Nama</th>
        <th>Pasword</th>
        <th colspan="2">Tindakan</th>
    </tr>

<?php
$sql = "SELECT * FROM jurujual";
$result = mysqli_query($sambungan, $sql);
while ($jurujual = mysqli_fetch_array($result)) {
    $idjurujual = $jurujual['idjurujual'];
    echo "<tr> <td>$jurujual[idjurujual]</td>
    <td class='nama'>$jurujual[namajurujual]</td>
    <td>$jurujual[password]</td>
    <td>
    <a href='jurujual_update.php?idjurujual=$idjurujual'>
    <img src='imej/update.png'>
    </a>
    </td>
    <td>
    <a href='javascript:padam(\"$idjurujual\")'>
    <img src='imej/delete.png'>
    </a>
    </td>
    </tr>";
}
?>
</table>

<script>
    function padam(id) {
        if (confirm("Adakah anda ingin padam") == true) {
            window.location = "jurujual_delete.php?idjurujual=" + id;
        }
    }
</script>
