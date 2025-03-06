<?php
    include("sambungan.php");
    include("pelanggan_menu.php");

    if (isset($_POST["submit"])) {
        $idpelanggan = $_POST["idpelanggan"];
        $password = $_POST["password"];
        $namapelanggan = $_POST["namapelanggan"];

        $sql = "INSERT INTO pelanggan VALUES ('$idpelanggan', '$password', '$namapelanggan')";
        echo $sql;
        $result = mysqli_query($sambungan, $sql);
        if ($result)
            echo "<script>alert('Berjaya daftar pelanggan baru')</script>";
        else
            echo "<script>alert('Gagal daftar pelanggan baru')</script>";
        echo "<script>window.location='index.php'</script>";
    }
?>

<link rel="stylesheet" href="aborang.css">
<link rel="stylesheet" href="abutton.css">

<body>
    <h3 class="panjang">SIGN UP</h3>
    <form class="panjang" action="signup.php" method="post">
        <table>
            <tr>
                <td>ID Pelanggan</td>
                <td><input required type="text" name="idpelanggan"
                    placeholder="cth: P064" pattern="[A-Z0-9]{4}"
                    oninvalid="this.setCustomValidity('Sila masukkan 4 aksara')"
                    oninput="setCustomValidity('')"
                    <?php
                        $sql = "SELECT * FROM pelanggan ORDER BY idpelanggan DESC LIMIT 1";
                        $result = mysqli_query($sambungan, $sql);
                        $bilrekod = mysqli_num_rows($result);
                        if ($bilrekod > 0) {
                            $pelanggan = mysqli_fetch_array($result);
                            $idpelanggan = ++$pelanggan["idpelanggan"];
                        }
                        else
                            $idpelanggan = "P001";
                        echo "value='$idpelanggan'";
                    ?>
                >
                </td>
            </tr>
            <tr>
                <td>Nama Pelanggan</td>
                <td><input required type="text" name="namapelanggan"></td>
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
