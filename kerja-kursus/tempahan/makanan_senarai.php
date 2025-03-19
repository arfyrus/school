<?php
    include("sambungan.php");
    include("jurujual_menu.php");
?>

<link rel="stylesheet" href="asenarai.css">
<link rel="stylesheet" href="abutton.css">

<table>
    <caption>Senarai Makanan</caption>
        <tr>
            <th>ID</th>
            <th>Nama</th>
            <th>Gambar</th>
            <th>Harga</th>
            <th colspan="3">Tindakan</th>
        </tr>
        <?php
            $sql = "SELECT * FROM makanan";
            $result = mysqli_query($sambungan, $sql);
            while($makanan = mysqli_fetch_array($result)) {
                $idmakanan = $makanan['idmakanan'];
    echo "
    <tr> <td>$makanan[idmakanan] </td>
    <td>$makanan[namamakanan] </td>
    <td>RM $makanan[harga] </td>
    <td>
    <a href='makanan_update.php?idmakanan=$idmakanan' title='update'>
    <img src='imej/update.png'>
    </a>
    </td>
    <td>
    <a href='javascript:padam(\"$idmakanan\");' title='delete'>
    <img src='imej/delete.png'>
    </a>
    </td>
    </tr>";
    }
?>
</table>

<script>
function padam(id) {
    if (confirm("Adakah anda ingin padam?") == true) {
        window.location = "makanan_delete.php?idmakanan=" + id;
    }
}
</script>
