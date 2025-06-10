#set text(size: 12pt, lang: "ms", font: "Times New Roman")
#set page(
    margin: (rest: 1in),
    footer: context[
        #set align(center)
        #counter(page).display("1")
    ]
)
#set par(
    justify: true,
    spacing: 2em,
    leading: 1.5em,
    first-line-indent: (amount: 0.5in, all: true)
)
#set heading(numbering: "1.1")

#show heading.where(level: 1): some => block(width: 100%)[
    #set align(center)
    #set text(size: 14pt)
    #set heading(numbering: "1.1")
    #some.body
]
#show heading.where(level: 2): some => [
    #set block(width: 100%, above: 3em, below: 1.5em)
    #set heading(numbering: "1.1")
    #some
]
#show heading.where(level: 3): some => block(height: 1.5em, above: 3em)[
    #set heading(numbering: none)
    #some.body
]

#show heading.where(level: 4): some => block(height: 1.5em, above: 3em)[
    #set heading(numbering: none)
    #some.body
]

#show heading.where(level: 5): some => block(height: 1.5em, above: 3em)[
    #set heading(numbering: none)
    #some.body
]

#show outline.entry.where(level: 1): set text(weight: "bold")

#outline(title: [ISI KANDUNGAN], depth: 2)
#pagebreak()

#heading(numbering: none, [PENGHARGAAN])
#block(height: 1em)[]
Saya ingin meluahkan perasaan kesyukuran kepada semua pihak yang telah membantu saya dalam melaksakan kerja kursus Sains Komputer ini.

Pertama sekali, saya ingin mengucapkan terima kasih yang tidak terhingga kepada guru mata pelajaran Sains Komputer saya, Puan Nik Nor Dalila binti Nooh kerana telah membimbing saya dalam melakukan projek ini dari mula hingga akhir. Dengan bimbingan beliau, saya dapat melaksanakan projek ini dengan mengikut skema bagi mendapat pemarkahan yang terbaik.

Seterusnya, saya amat syukur kepada bapa saya, Tuan Mohd Hafeez bin Yusof yang telah membekalkan saya dengan sumber yang diperlukan projek ini dengan lancar.

Akhir sekali, setinggi-tinggi penghargaan kepada rakan-rakan saya yang telah melaksanakan projek ini bersama-sama saya. Kami dapat membantu satu sama lain dalam memperbaiki kesilapan yang muncul dalam tempoh masa pelaksanaan projek masing-masing. Tanpa bantuan mereka, saya tidak dapat menyiapkan projek ini dengan begitu lancar.

Sekali lagi, saya mengucapkan terima kasih kepada semua pihak yang terlibat dalam bantuan ini.

#pagebreak()

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

#pagebreak()

= FASA 2
#heading(numbering: none, outlined: false, [ANALISIS MASALAH])

== Algoritma

== Gambar Rajah Hubungan (ERD)

== Penormalan

#show table: set text(size: 8pt)

==== 0NF

===== PESANAN

#table(
    columns: (auto,) + 8 * (1fr,) + (0.5fr, 1fr,),
    align: horizon,
    table.header(
        [#underline[no\_ \ telefon]],
        [#underline[nama\_ \ pelanggan]], 
        [#underline[password]], 
        [#underline[id\_ \ makanan]], 
        [#underline[nama\_ \ makanan]], 
        [#underline[harga]], 
        [#underline[id\_ \ pekerja]], 
        [#underline[nama\_ \ pekerja]], 
        [#underline[tarikh]],
        [#underline[bila \ ngan]],
        [#underline[jumlah]]
    ),
    table.cell(rowspan: 2)[0108982068],
    table.cell(rowspan: 2)[Thejendra],
    table.cell(rowspan: 2)[tchalla69],
    [mkn-01], [Salmon Sashimi], [RM8.00],
    [pkj-02], [Donald Trump],
    table.cell(rowspan: 2)[20241031], [3], [RM24.00],
    table.cell(rowspan: 2)[mkn-02],
    table.cell(rowspan: 2)[Udang],
    [RM9.00],
    table.cell(rowspan: 3)[pkj-01],
    table.cell(rowspan: 3)[Joe Biden],
    [1], [RM9.00],
    table.cell(rowspan: 4)[0196697201],
    table.cell(rowspan: 4)[Amir],
    table.cell(rowspan: 4)[nigga1488],
    [RM9.00],
    table.cell(rowspan: 4)[20241101],
    [4], [RM36.00], 
    [mkn-03], [Sup Miso], [RM13.50],
    [1], [RM13.50],
    [mnm-01], [Matcha Latte], [RM12.00],
    table.cell(rowspan: 2)[pkj-03],
    table.cell(rowspan: 2)[Bernie Sanders],
    [2], [RM24.00],
    [mnm-02], [Teh Hijau], [RM5.00],
    [1], [RM5.00],
    table.cell(rowspan: 3)[0189741311],
    table.cell(rowspan: 3)[Adam],
    table.cell(rowspan: 3)[adamdan \ ish092],
    [mkn-04], [Futomaki], [RM8.50],
    table.cell(rowspan: 2)[pkj-02],
    table.cell(rowspan: 2)[Donald Trump],
    table.cell(rowspan: 3)[20241102],
    [3], [RM 25.50],
    [mkn-01], [Salmon Sashimi], [RM8.00], [1], [RM8.00],
    [mnm-02], [Teh Hijau], [RM5.00], [pkj-03], [Bernie Sanders], [1], [RM5.00]
)

#pagebreak()

==== 1NF

===== PESANAN

#table(
    columns: (auto,) + 8 * (1fr,) + (0.5fr, 1fr,),
    align: horizon,
    table.header(
        [#underline[no\_ \ telefon]],
        [#underline[id\_ \ makanan]], 
        [#underline[nama\_ \ pelanggan]], 
        [#underline[password]], 
        [#underline[nama\_ \ makanan]], 
        [#underline[harga]], 
        [#underline[id\_ \ pekerja]], 
        [#underline[nama\_ \ pekerja]], 
        [#underline[tarikh]],
        [#underline[bila \ ngan]],
        [#underline[jumlah]]
    ),
    [0108982068], [mkn-01], [Thejendra], [tchalla69], [Salmon Sashimi], [RM8.00], [pkj-02], [Donald Trump], [20241031], [3], [RM24.00],
    [0108982068], [mkn-02], [Thejendra], [tchalla69], [Udang], [RM9.00], [pkj-01], [Joe Biden], [20241031], [1], [RM9.00]
)
