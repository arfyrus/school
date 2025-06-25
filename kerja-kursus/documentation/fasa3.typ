#show raw.where(lang: "php"): some => {
    set text(size: 8pt, font: "JetBrainsMono NFM")
    set par(leading: 0.8em)
    some
}
= FASA 3
#heading(numbering: none, outlined: false, [MELAKSANAKAN PENYELESAIAN])

== Jadual

#pagebreak()

== Borang

#pagebreak()

== Query

```php
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
            $sql = "SELECT * FROM makanan";            $sql = "SELECT * FROM makanan";
            $result = mysqli_query($sambungan, $sql);
            while($makanan = mysqli_fetch_array($result)) {
                $id_makanan = $makanan['id_makanan'];
    echo "
    <tr> <td>$makanan[id_makanan] </td>
    <td>$makanan[nama_makanan] </td>
    <td>RM $makanan[harga] </td>
    <td>
    <a href='makanan_update.php?id_makanan=$id_makanan' title='update'>
    <img src='imej/update.png'>
    </a>
    </td>
    <td>
    <a href='javascript:padam(\"$id_makanan\");' title='delete'>
    <img src='imej/delete.png'>
    </a>
    </td>
    </tr>";
    }
?>
</table>
```

#pagebreak()

== Laporan

#pagebreak()

== Mengekod

=== Sign Up

```php
<body>
    <h3 class="panjang">SIGN UP</h3>
    <form class="panjang" action="signup.php" method="post">
        <table>
            <tr>
                <td>No. Telefon</td>
                <td><input required type="text" name="no_telefon"
                    placeholder="cth: 0123456789" pattern="[0-9]{10}"
                    oninvalid="this.setCustomValidity('Sila masukkan 10 digit')"
                    oninput="this.setCustomValidity('')"
                    <?php
                        $sql = "SELECT * FROM pelanggan ORDER BY no_telefon DESC LIMIT 1";
                        $result = mysqli_query($sambungan, $sql);
                        $bilrekod = mysqli_num_rows($result);
                        if ($bilrekod > 0) {
                            $pelanggan = mysqli_fetch_array($result);
                            $no_telefon = ++$pelanggan["no_telefon"];
                        }
                        else
                            $no_telefon = "0123456789";
                        echo "value='$no_telefon'";
                    ?>
                >
                </td>
            </tr>
            <tr>
                <td>Nama Pelanggan</td>
                <td><input required type="text" name="nama_pelanggan"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input required type="password" name="password"></td>
            </tr>
        </table>

        <button class="tambah" type="submit" name="submit">Daftar</button>
        <button class="batal" type="button" onclick="window.location='index.php'">Batal</button>
    </form>
</body>
```

#pagebreak()

=== Login

```php
<h3 class="pendek">LOG IN</h3>
<form class="pendek" action="login.php" method="post">
    <table>
        <tr>
            <td><img src="imej/user.png"></td>
            <td><input type="text" name="userid" placeholder="idpengguna"></td>
        </tr>
        <tr>
            <td><img src="imej/lock.png"></td>
            <td><input type="password" name="password" placeholder="katalaluan"></td>
        </tr>
    </table>
    <button class="login" type="submit" name="submit">Login</button>
    <button class="signup" type="button" onclick="window.location='signup.php'">Sign Up</button>
</form>
```

=== Import Fail

```php
<h3 class="panjang">IMPORT DATA</h3>
<form class="panjang" action="import.php" method="post" enctype="multipart/form-data">
     <table>
         <tr>
             <td>Jadual</td>
             <td>
             <select name="namajadual">
                  <option>Pelanggan</option>
                  <option>Jurujual</option>
             </select>
             </td>
         </tr>
         <tr>
             <td>Nama fail</td>
             <td><input required type="file" name="namafail" accept=".txt, .csv"></td>
         </tr>
     </table>
    <button class="import" type="submit" name="submit">Import</button>
</form>
```

#pagebreak()

=== Pop Up

==== Daftar Masuk

```php
<?php
// ...
    if ($jumpa == TRUE) {
        if ($_SESSION["status"] == "pelanggan") {
            header("Location: index.php");
        } else if ($_SESSION["status"] == "pekerja") {
            header("Location: pekerja_menu.php");
        }
    echo "<script>alert('ID pengguna atau kata laluan salah!');</script>";
    }
// ...
?>
```

==== Import Data

```php
<?php
// ...
    if ($berjaya == true)
        echo "<script>alert('Rekod berjaya di import');</script>";
    else
        echo "<script>alert('Rekod tidak berjaya di import');</script>";
// ...
?>
```
