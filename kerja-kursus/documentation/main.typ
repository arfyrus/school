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
    first-line-indent: (amount: 0.5in)
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

#align(center)[
    #image("images/flowchart.png", height: 80%)
]

== Gambar Rajah Hubungan (ERD)

#align(center)[
    #image("images/erd.png")
]

== Penormalan

#show table: set text(size: 8pt)
#set table(align: horizon)
#set table.cell(align: center)

==== 0NF

===== PESANAN

#table(
    columns: (auto,) + 8 * (1fr,) + (0.5fr, 1fr,),
    fill: (x, y) => {
      if y == 0 {
        black
      } else if x == 0 or x == 1 or x == 2 {
        yellow.lighten(45%)
      } else if x == 3 or x == 4 or x == 5 {
        green.lighten(45%)
      } else if x == 6 or x == 7 {
        aqua.lighten(45%)
      } else if x > 7 {
        red.lighten(45%)
      }
    },
    table.header(
        table.cell([#text(fill: white, weight: "bold")[no\_ \ telefon]]),
        table.cell([#text(fill: white, weight: "bold")[nama\_ \ pelanggan]]), 
        table.cell([#text(fill: white, weight: "bold")[password]]), 
        table.cell([#text(fill: white, weight: "bold")[id\_ \ makanan]]), 
        table.cell([#text(fill: white, weight: "bold")[nama\_ \ makanan]]), 
        table.cell([#text(fill: white, weight: "bold")[harga]]), 
        table.cell([#text(fill: white, weight: "bold")[id\_ \ pekerja]]), 
        table.cell([#text(fill: white, weight: "bold")[nama\_ \ pekerja]]), 
        table.cell([#text(fill: white, weight: "bold")[tarikh]]),
        table.cell([#text(fill: white, weight: "bold")[bila \ ngan]]),
        table.cell([#text(fill: white, weight: "bold")[jumlah]])
    ),
    table.cell(rowspan: 2)[0108982068],
    table.cell(rowspan: 2)[Thejendra],
    table.cell(rowspan: 2)[tchalla69],
    table.cell()[mkn-01],
    table.cell()[Salmon Sashimi],
    table.cell()[RM8.00],
    table.cell()[pkj-02],
    table.cell()[Donald Trump],
    table.cell(rowspan: 2)[20241031],
    table.cell()[3],
    table.cell()[RM24.00],
    table.cell(rowspan: 2)[mkn-02],
    table.cell(rowspan: 2)[Udang],
    table.cell()[RM9.00],
    table.cell(rowspan: 3)[pkj-01],
    table.cell(rowspan: 3)[Joe Biden],
    table.cell()[1],
    table.cell()[RM9.00],
    table.cell(rowspan: 4)[0196697201],
    table.cell(rowspan: 4)[Amir],
    table.cell(rowspan: 4)[nigga1488],
    table.cell()[RM9.00],
    table.cell(rowspan: 4)[20241101],
    table.cell()[4],
    table.cell()[RM36.00],
    table.cell()[mkn-03],
    table.cell()[Sup Miso],
    table.cell()[RM13.50],
    table.cell()[1],
    table.cell()[RM13.50],
    table.cell()[mnm-01],
    table.cell()[Matcha Latte],
    table.cell()[RM12.00],
    table.cell(rowspan: 2)[pkj-03],
    table.cell(rowspan: 2)[Bernie Sanders],
    table.cell()[2],
    table.cell()[RM24.00],
    table.cell()[mnm-02],
    table.cell()[Teh Hijau],
    table.cell()[RM5.00],
    table.cell()[1],
    table.cell()[RM5.00],
    table.cell(rowspan: 3)[0189741311],
    table.cell(rowspan: 3)[Adam],
    table.cell(rowspan: 3)[adamdan \ ish092],
    table.cell()[mkn-04],
    table.cell()[Futomaki],
    table.cell()[RM8.50],
    table.cell(rowspan: 2)[pkj-02],
    table.cell(rowspan: 2)[Donald Trump],
    table.cell(rowspan: 3)[20241102],
    table.cell()[3],
    table.cell()[RM 25.50],
    table.cell()[mkn-01],
    table.cell()[Salmon Sashimi],
    table.cell()[RM8.00],
    table.cell()[1],
    table.cell()[RM8.00],
    table.cell()[mnm-02],
    table.cell()[Teh Hijau],
    table.cell()[RM5.00],
    table.cell()[pkj-03],
    table.cell()[Bernie Sanders],
    table.cell()[1],
    table.cell()[RM5.00]
)

#pagebreak()

==== 1NF

===== PESANAN

#show table.cell: some => {
    set align(center)
    if some.y == 0 {
      text(fill: white, weight: "bold")[#some]
    } else {
      some
    }
}

#table(
    columns: (auto,) + 8 * (1fr,) + (0.5fr, 1fr,),
    fill: (x, y) => {
      if y == 0 {
        black
      } else if x == 0 or x == 2 or x == 3{
        yellow.lighten(45%)
      } else if x == 1 or x == 4 or x == 5 {
        green.lighten(45%)
      } else if x == 6 or x == 7 {
        aqua.lighten(45%)
      } else if x > 7 {
        red.lighten(45%)
      }
    },
    table.header(
        table.cell([#underline[no\_ \ telefon]]),
        table.cell([#underline[id\_ \ makanan]]), 
        table.cell([nama\_ \ pelanggan]), 
        table.cell([password]), 
        table.cell([nama\_ \ makanan]), 
        table.cell([harga]), 
        table.cell([id\_ \ pekerja]), 
        table.cell([nama\_ \ pekerja]), 
        table.cell([tarikh]),
        table.cell([bila \ ngan]),
        table.cell([jumlah])
    ),
    [0108982068], [mkn-01], [Thejendra], [tchalla69], [Salmon Sashimi], [RM8.00], [pkj-02], [Donald Trump], [20241031], [3], [RM24.00],
    [0108982068], [mkn-02], [Thejendra], [tchalla69], [Udang], [RM9.00], [pkj-01], [Joe Biden], [20241031], [1], [RM9.00],
    [0196697201], [mkn-02], [Amir], [nigga1488], [Udang], [RM9.00], [pkj-01], [Joe Biden], [20241101], [4], [RM36.00],
    [0196697201], [mkn-03], [Amir], [nigga1488], [Sup Miso], [RM13.50], [pkj-01], [Joe Biden], [20241101], [1], [RM13.50],
    [0196697201], [mnm-01], [Amir], [nigga1488], [Matcha], [12.00], [pkj-03], [Bernie Sanders], [20241101], [2], [RM24.00],
    [0196697201], [mnm-02], [Amir], [nigga1488], [Teh Hijau], [RM5.00], [pkj-03], [Bernie Sanders], [20241101], [1], [RM5.00],
    [0189741311], [mkn-04], [Adam], [adamdan \ ish092], [Futomaki], [RM8.50], [pkj-02], [Donald Trump], [20241102], [3], [RM25.50],
    [0189741311], [mkn-01], [Adam], [adamdan \ ish092], [Salmon Sashimi], [RM8.00], [pkj-02], [Donald Trump], [20241102], [1], [RM8.00],
    [0189741311], [mnm-02], [Adam], [adamdan \ ish092], [Teh Hijau], [RM5.00], [pkj-02], [Donald Trump], [20241102], [1], [RM5.00],
)

===== Penerangan:

- Kumpulan berulang dihapuskan. Setiap lajur dalam jadual mempunyai atribut yang atomik.
- Kunci primer komposit dikenal pasti iaitu atribut 'no\_telefon' dan atribut 'id\_makanan'.

===== Skema Hubungan:

PESANAN (no\_telefon\<KP\>\<KA\>, kod\_makanan\<KP\>\<KA\>, nama\_pelanggan, password, nama\_makanan, harga, id\_pekerja, nama\_pekerja, tarikh, bilangan, jumlah)

#pagebreak()

==== 2NF

#show table: set text(size: 10pt)

===== PELANGGAN

#table(
    columns: (auto,) * 3,
    fill: (x, y) => {
        if y == 0 {
            black
        } else {
            yellow.lighten(45%)
        }
    },
    table.header([#underline[no\_telefon]], [nama\_pelanggan], [password]),
    [0108982068], [Thejendra], [tchalla69],
    [0196697201], [Amir], [nigga1488],
    [0189741311], [Adam], [adamdanish092],
)

===== MAKANAN

#table(
    columns: (auto,) * 5,
    fill: (x, y) => {
        if y == 0 {
            black
        } else if x <= 2 {
            green.lighten(45%)
        } else if x > 2 {
            aqua.lighten(45%)
        }
    },
    table.header([#underline[id\_makanan]], [nama\_makanan], [harga], [id\_pekerja], [nama\_pekerja]),
    [mkn-01], [Salmon Sashimi], [RM8.00], [pkj-02], [Donald Trump],
    [mkn-02], [Udang], [RM9.00], [pkj-01], [Joe Biden],
    [mkn-03], [Sup Miso], [RM13.50], [pkj-01], [Joe Biden],
    [mkn-04], [Futomaki], [RM8.50], [pkj-02], [Donald Trump],
    [mnm-01], [Matcha], [RM12.00], [pkj-03], [Bernie Sanders],
    [mnm-02], [Teh Hijau], [RM5.00], [pkj-03], [Bernie Sanders],
)

===== PESANAN

#table(
    columns: (auto,) * 5,
    fill: (x, y) => {
        if y == 0 {
            black
        } else if x == 0 {
            yellow.lighten(45%)
        } else if x == 1 {
            green.lighten(45%)
        } else {
            red.lighten(45%)
        }
    },
    table.header([#underline[no\_telefon]], [#underline[id\_makanan]], [tarikh], [bilangan], [jumlah]),
    [0108982068], [mkn-01], [20241031], [3], [RM24.00],
    [0108982068], [mkn-02], [20241031], [1], [RM9.00],
    [0196697201], [mkn-02], [20241101], [4], [RM36.00],
    [0196697201], [mkn-03], [20241101], [1], [RM13.50],
    [0196697201], [mnm-01], [20241101], [2], [RM24.00],
    [0196697201], [mnm-02], [20241101], [1], [RM5.00],
    [0189741311], [mkn-04], [20241102], [3], [RM25.00],
    [0189741311], [mkn-01], [20241102], [1], [RM8.00],
    [0189741311], [mnm-02], [20241102], [1], [RM5.00],
)

===== Penerangan:

- Jadual 'PESANAN' dipecahkan kepada tiga buah jadual iaitu 'PELANGGAN', 'MAKANAN', dan 'PESANAN'.

- Kebergantungan fungsi separa dikenal pasti dan dihapuskan.

- Setiap satu jadual mempunyai atribut kunci primer.

- Masih terdapat kebergantungan fungsi transitif di jadual 'MAKANAN' iatu 'nama\_pekerja' bergantung secara transitif kepada 'id\_pekerja'.

===== Skema Hubungan:

#par(first-line-indent: 0pt)[
    PESANAN (no\_telefon\<KP\>\<KA\>, kod\_makanan\<KP\>\<KA\>, tarikh, bilangan, jumlah)
]

#par(first-line-indent: 0pt)[
    PELANGGAN (no\_telefon\<KP\>, nama\_pelanggan, password)
]

#par(first-line-indent: 0pt)[
    MAKANAN (kod\_makanan\<KP\>, nama\_makanan, harga, id\_pekerja, nama\_pekerja)
]

==== 3NF

===== PELANGGAN

#table(
    columns: (auto,) * 3,
    fill: (x, y) => {
        if y == 0 {
            black
        } else {
            yellow.lighten(45%)
        }
    },
    table.header([#underline[no\_telefon]], [nama\_pelanggan], [password]),
    [0108982068], [Thejendra], [tchalla69],
    [0196697201], [Amir], [nigga1488],
    [0189741311], [Adam], [adamdanish092],
)

===== MAKANAN

#table(
    columns: (auto,) * 4,
    fill: (x, y) => {
        if y == 0 {
            black
        } else if x <= 2 {
            green.lighten(45%)
        } else if x > 2 {
            aqua.lighten(45%)
        }
    },
    table.header([#underline[id\_makanan]], [nama\_makanan], [harga], [id\_pekerja]),
    [mkn-01], [Salmon Sashimi], [RM8.00], [pkj-02],
    [mkn-02], [Udang], [RM9.00], [pkj-01],
    [mkn-03], [Sup Miso], [RM13.50], [pkj-01],
    [mkn-04], [Futomaki], [RM8.50], [pkj-02],
    [mnm-01], [Matcha], [RM12.00], [pkj-03],
    [mnm-02], [Teh Hijau], [RM5.00], [pkj-03],
)

===== PEKERJA

#table(
    columns: (auto,) * 2,
    fill: (x, y) => {
        if y == 0 {
            black
        } else {
            aqua.lighten(45%)
        }
    },
    table.header([#underline[id\_pekerja]], [nama_pekerja]),
    [pkj-01], [Joe Biden],
    [pkj-02], [Donald Trump],
    [pkj-03], [Bernie Sanders],
)

===== PESANAN

#table(
    columns: (auto,) * 5,
    fill: (x, y) => {
        if y == 0 {
            black
        } else if x == 0 {
            yellow.lighten(45%)
        } else if x == 1 {
            green.lighten(45%)
        } else {
            red.lighten(45%)
        }
    },
    table.header([#underline[no\_telefon]], [#underline[id\_makanan]], [tarikh], [bilangan], [jumlah]),
    [0108982068], [mkn-01], [20241031], [3], [RM24.00],
    [0108982068], [mkn-02], [20241031], [1], [RM9.00],
    [0196697201], [mkn-02], [20241101], [4], [RM36.00],
    [0196697201], [mkn-03], [20241101], [1], [RM13.50],
    [0196697201], [mnm-01], [20241101], [2], [RM24.00],
    [0196697201], [mnm-02], [20241101], [1], [RM5.00],
    [0189741311], [mkn-04], [20241102], [3], [RM25.00],
    [0189741311], [mkn-01], [20241102], [1], [RM8.00],
    [0189741311], [mnm-02], [20241102], [1], [RM5.00],
)

===== Penerangan:

- Kebergantungan fungsi transitif dihapuskan dengan memecahkan jadual 'MAKANAN' kepada jadual 'MAKANAN' dan 'PEKERJA'.

===== Skema Hubungan:

#par(first-line-indent: 0pt)[
    PESANAN (no\_telefon\<KP\>\<KA\>, kod\_makanan\<KP\>\<KA\>, tarikh, bilangan, jumlah)
]

#par(first-line-indent: 0pt)[
    PELANGGAN (no\_telefon\<KP\>, nama\_pelanggan, password)
]

#par(first-line-indent: 0pt)[
    MAKANAN (kod\_makanan\<KP\>, nama\_makanan, harga, id\_pekerja\<KA\>)
]

#par(first-line-indent: 0pt)[
    PEKERJA (id\_pekerja\<KP\>, nama\_pekerja)
]

== Antara Muka Input/Output

=== MENU (SWITCHBOARD)

#align(center)[
    #image("images/home.jpg", height: 35%)
]

=== Borang Daftaran

#align(center)[
    #image("images/login.jpg", height: 35%)
]

=== Borang Tempahan

#align(center)[
    #image("images/order.jpg", height: 35%)
]

=== Laporan

#align(center)[
    #image("images/receipt.jpg", height: 35%)
]
