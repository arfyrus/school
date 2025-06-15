= FASA 1
#heading(numbering: none, outlined: false, [ANALISIS MASALAH])

== Penyataan Masalah

Restoran _Hiroshima Sushi_ merupakan sebuah restoran yang menjual pelbagai jenis makanan, terutamanya makanan laut.
Apabila pelanggan hendak memesan makanan, dia akan memberi pesanan makanan kepada pelayan.
Pelayan pula menulis pesanannya pada kertas dan memberikannya kepada tukang masak.
Oleh demikian, beberapa masalah mungkin timbul dalam restoran ini.
Contohnya, tukang masak silap membaca pesanan pelanggan akibat tulisan yang tidak jelas.

== Objektif

- Merekod maklumat pelanggan dan pesanan supaya boleh dipesan semula lain kali mereka datang.
- Memaparkan maklumat pesanan pelanggan dan boleh dikemaskini.
- Memaparkan makanan dan minuman yang dijual dan yang tidak tersedia.

== Skop

- Sistem ini hanya menunjuk makanan dan minuman yang ditawarkan di Restoran _Hiroshima Sushi_.
- Sistem ini tidak memberi pilihan kepada pelanggan untuk membayar secara dalam talian.

== Kumpulan Sasaran

- Pelangga Restoran _Hiroshima Sushi_.
- Pengurus Restoran _Hiroshima Sushi_.

== Menilai Sistem Sedia Ada

=== Fungsi Sistem Sedia Ada

- Sistem sedia ada ialah pelanggan memberi pesanan makanan kepada pelayan. Pelayan menulis pesanan pelanggan pada kertas dan memberikannya kepada tukang masak.

=== Kekuatan

- Sistem ini membolehkan pelanggan meminta penjelasan tentang makanan dan minuman yang ingin dipesan.

- Tidak memerlukan kos yang tinggi kerana hanya menggunakan pensil dan kertas.

- Pelanggan tidak perlu mempunyai ilmu penggunaan komputer untuk membuat pesanan.

=== Kelemahan

- Pelanggan harus menunggu masa yang lama kerana pelayan melayan pelanggan yang ramai.

- Pelayan mungkin salah dengar pesanan pelanggan.

- Kebarangkalian terdapat maklumat tempahan yang bertindih.

=== Justifikasi Sistem Dibangunkan

- Membantu mencari maklumat pelanggan.

- Merekodkan tempahan dengan efisyen.

- Memaparkan tempahan mengikut pelanggan atau tarikh.

=== Nama Sistem

Sistem pesanan makanan _Shima Pesan_.

== Tempoh Projek

#show table: some => block()[
    #set par(justify: false, leading: 0.5em)
    #set align(center)
    #some
]
#set table.cell(align: left)
#show table: set text(size: 10pt)

#table(
    columns: (1fr,) + 16 * (auto,),
    align: center,
    table.header(
        table.cell(rowspan: 3, align: horizon, [*Perkara*]),
        table.cell(colspan: 16, align: center, [*Bulan*]),
        table.cell(colspan: 4, align: center, [*Ogos*]),
        table.cell(colspan: 4, align: center, [*September*]),
        table.cell(colspan: 4, align: center, [*November*]),
        table.cell(colspan: 4, align: center, [*Disember*]),
        [1], [2], [3], [4],
        [1], [2], [3], [4],
        [1], [2], [3], [4],
        [1], [2], [3], [4],
    ),
    [Pelajar menerima taklimat daripada guru.],
    table.cell(fill: lime, []),
    table.cell(fill: lime, []),
    [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    table.cell(colspan: 17, align: left, fill: black, [#text(fill: white, weight: "bold", "Fasa 1")]),
    [1.0 Menganalisis masalah],
    [], [], table.cell(fill: green, []), [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [1.1 Penyataan masalah],
    [], [], table.cell(fill: green, []), [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [1.2 Objektif],
    [], [], table.cell(fill: green, []), [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [1.3 Skop],
    [], [], table.cell(fill: green, []), [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [1.4 Kumpulan sasaran],
    [], [], table.cell(fill: green, []), [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [1.5 Menilai sistem sedia ada],
    [], [], table.cell(fill: green, []), [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [1.6 Tempoh projek],
    [], [], table.cell(fill: green, []), [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    table.cell(colspan: 17, align: left, fill: black, [#text(fill: white, weight: "bold", "Fasa 2")]),
    [2.0 Mereka bentuk penyelesaian],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [2.1 Algoritma],
    [], [], [], [],
    [], table.cell(fill: yellow, []), [], [],
    [], [], [], [],
    [], [], [], [],
    [2.2 Gamba rajah perhubungan entiti (ERD)],
    [], [], [], [],
    [], [], table.cell(fill: yellow, []), [],
    [], [], [], [],
    [], [], [], [],
    [2.3 Penormalan],
    [], [], [], [],
    [], [], [], table.cell(fill: yellow, []),
    [], [], [], [],
    [], [], [], [],
    [2.4 Antara muka input dan output],
    [], [], [], [],
    [], [], [], table.cell(fill: yellow, []),
    [], [], [], [],
    [], [], [], [],
    [Penyelesaran skor oleh pentaksir luar],
    [], [], [], [],
    [], [], [], [],
    table.cell(fill: yellow, []), [], [], [], 
    [], [], [], [],
    [Penyelesaran skor oleh pentaksir luar],
    [], [], [], [],
    [], [], [], [],
    [], table.cell(fill: yellow, []), [], [], 
    [], [], [], [],
)

#table(
    columns: (1fr,) + 24 * (auto,),
    align: center,
    table.header(
        table.cell(rowspan: 3, align: horizon, [*Perkara*]),
        table.cell(colspan: 24, align: center, [*Bulan*]),
        table.cell(colspan: 4, align: center, [*Januari*]),
        table.cell(colspan: 4, align: center, [*Februari*]),
        table.cell(colspan: 4, align: center, [*Mac*]),
        table.cell(colspan: 4, align: center, [*April*]),
        table.cell(colspan: 4, align: center, [*Mei*]),
        table.cell(colspan: 4, align: center, [*Jun*]),
        [1], [2], [3], [4],
        [1], [2], [3], [4],
        [1], [2], [3], [4],
        [1], [2], [3], [4],
        [1], [2], [3], [4],
        [1], [2], [3], [4],
    ),
    table.cell(colspan: 25, align: left, fill: black, [#text(fill: white, weight: "bold", "Fasa 3")]),
    [3.1 Jadual],
    table.cell(fill: orange, []), [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [3.2 Borang],
    [], table.cell(fill: orange, []), table.cell(fill: orange, []), [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [3.3 Query],
    [], [], table.cell(fill: orange, []), table.cell(fill: orange, []),
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [3.4 Laporan],
    [], [], [], [],
    table.cell(fill: orange, []), table.cell(fill: orange, []), [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [3.5 Mengekod],
    [], [], [], [],
    [], [], [], table.cell(fill: orange, []),
table.cell(fill: orange, []), table.cell(fill: orange, []), table.cell(fill: orange, []), table.cell(fill: orange, []),
table.cell(fill: orange, []), table.cell(fill: orange, []), table.cell(fill: orange, []), table.cell(fill: orange, []),
    [], [], [], [],
    [], [], [], [],
    table.cell(colspan: 25, align: left, fill: black, [#text(fill: white, weight: "bold", "Fasa 4")]),
    [4.1 ralat sintaks],
    [], [], [], [],
    [], [], [], [],
    [], [], table.cell(fill: red, []), table.cell(fill: red, []),
table.cell(fill: red, []), table.cell(fill: red, []), table.cell(fill: red, []), table.cell(fill: red, []), 
    [], [], [], [],
    [], [], [], [],
    [4.2 ralat logik],
    [], [], [], [],
    [], [], [], [],
    [], [], table.cell(fill: red, []), table.cell(fill: red, []),
table.cell(fill: red, []), table.cell(fill: red, []), table.cell(fill: red, []), table.cell(fill: red, []), 
    [], [], [], [],
    [], [], [], [],
    [4.3 ralat masa larian],
    [], [], [], [],
    [], [], [], [],
    [], [], table.cell(fill: red, []), table.cell(fill: red, []),
table.cell(fill: red, []), table.cell(fill: red, []), table.cell(fill: red, []), table.cell(fill: red, []), 
    [], [], [], [],
    [], [], [], [],
    table.cell(colspan: 25, align: left, fill: black, [#text(fill: white, weight: "bold", "Fasa 5")]),
    [5.1 Laporan setiap fasa],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], table.cell(fill: purple, []), table.cell(fill: purple, []),
    [], [], [], [],
    [5.2 Sumber rujukan],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], table.cell(fill: purple, []),
    table.cell(fill: purple, []), [], [], [],
    [5.3 Penghargaan],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    [], [], [], [],
    table.cell(fill: purple, []), table.cell(fill: purple, []), [], [],
)
