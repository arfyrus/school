= 2.1 Algoritma
<algoritma>
#box(image("/media/image3.png", height: 7.79167in, width: 2.38944in))

= 2.2 Gambar Rajah Hubungan (ERD)
<gambar-rajah-hubungan-erd>
#box(image("/media/image5.png", height: 2.76384in, width: 6.1192in))

= 2.3 Penormalan
<penormalan>
== 0NF
<nf>
=== PESANAN
<pesanan>
#figure(
  align(center)[#table(
    columns: (10.7%, 11.93%, 9.41%, 9.38%, 10.83%, 8.51%, 7.23%, 9.67%, 9.41%, 4.3%, 8.65%),
    align: (center,center,center,center,center,center,center,center,center,center,center,),
    table.header(table.cell(align: center)[#strong[no\_telefon];], table.cell(align: center)[#strong[nama\_pelanggan];], table.cell(align: center)[#strong[password];], table.cell(align: center)[#strong[id\_makanan];], table.cell(align: center)[#strong[nama\_makanan];], table.cell(align: center)[#strong[harga];], table.cell(align: center)[#strong[id\_pekerja];], table.cell(align: center)[#strong[nama\_pekerja];], table.cell(align: center)[#strong[tarikh];], table.cell(align: center)[#strong[bilangan];], table.cell(align: center)[#strong[jumlah];],),
    table.hline(),
    table.cell(align: center, rowspan: 2)[0108982068], table.cell(align: center, rowspan: 2)[Thejendra], table.cell(align: center, rowspan: 2)[tchalla69], table.cell(align: center)[mkn-01], table.cell(align: center)[Salmon
    Sashimi], table.cell(align: center)[RM8.00], table.cell(align: center)[pkj-02], table.cell(align: center)[Donald
    Trump], table.cell(align: center, rowspan: 2)[20241031], table.cell(align: center)[3], table.cell(align: center)[RM24.00],
    table.cell(align: center, rowspan: 2)[mkn-02], table.cell(align: center, rowspan: 2)[Udang], table.cell(align: center)[RM9.00], table.cell(align: center, rowspan: 3)[pkj-01], table.cell(align: center, rowspan: 3)[Joe
    Biden], table.cell(align: center)[1], table.cell(align: center)[RM9.00],
    table.cell(align: center, rowspan: 4)[0196697201], table.cell(align: center, rowspan: 4)[Amir], table.cell(align: center, rowspan: 4)[nigga1488], table.cell(align: center)[RM9.00], table.cell(align: center, rowspan: 4)[20241101], table.cell(align: center)[4], table.cell(align: center)[RM36.00],
    table.cell(align: center)[mkn-03], table.cell(align: center)[Sup
    Miso], table.cell(align: center)[RM13.50], table.cell(align: center)[1], table.cell(align: center)[RM13.50],
    table.cell(align: center)[mnm-01], table.cell(align: center)[Matcha], table.cell(align: center)[RM12.00], table.cell(align: center, rowspan: 2)[pkj-03], table.cell(align: center, rowspan: 2)[Bernie
    Sanders], table.cell(align: center)[2], table.cell(align: center)[RM24.00],
    table.cell(align: center)[mnm-02], table.cell(align: center)[Teh
    Hijau], table.cell(align: center)[RM5.00], table.cell(align: center)[1], table.cell(align: center)[RM5.00],
    table.cell(align: center, rowspan: 3)[0189741311], table.cell(align: center, rowspan: 3)[Adam], table.cell(align: center, rowspan: 3)[adamdanish092], table.cell(align: center)[mkn-04], table.cell(align: center)[Futomaki], table.cell(align: center)[RM8.50], table.cell(align: center, rowspan: 2)[pkj-02], table.cell(align: center, rowspan: 2)[Donald
    Trump], table.cell(align: center, rowspan: 3)[20241102], table.cell(align: center)[3], table.cell(align: center)[RM25.50],
    table.cell(align: center)[mkn-01], table.cell(align: center)[Salmon
    Sashimi], table.cell(align: center)[RM8.00], table.cell(align: center)[1], table.cell(align: center)[RM8.00],
    table.cell(align: center)[mnm-02], table.cell(align: center)[Teh
    Hijau], table.cell(align: center)[RM5.00], table.cell(align: center)[pkj-03], table.cell(align: center)[Bernie
    Sanders], table.cell(align: center)[1], table.cell(align: center)[RM5.00],
  )]
  , kind: table
  )

== 1NF
<nf-1>
=== PESANAN
<pesanan-1>
#figure(
  align(center)[#table(
    columns: (10.62%, 8.3%, 8.8%, 10.62%, 11.45%, 8.62%, 8.11%, 10.7%, 9.25%, 5.11%, 8.41%),
    align: (center,center,center,center,center,center,center,center,center,center,center,),
    table.header(table.cell(align: center)[#strong[#underline[no\_telefon];];], table.cell(align: center)[#strong[#underline[id\_makanan];];], table.cell(align: center)[#strong[nama\_pelanggan];], table.cell(align: center)[#strong[password];], table.cell(align: center)[#strong[nama\_makanan];], table.cell(align: center)[#strong[harga];], table.cell(align: center)[#strong[id\_pekerja];], table.cell(align: center)[#strong[nama\_pekerja];], table.cell(align: center)[#strong[tarikh];], table.cell(align: center)[#strong[bilangan];], table.cell(align: center)[#strong[jumlah];],),
    table.hline(),
    table.cell(align: center)[0108982068], table.cell(align: center)[mkn-01], table.cell(align: center)[Thejendra], table.cell(align: center)[tchalla69], table.cell(align: center)[Salmon
    Sashimi], table.cell(align: center)[RM8.00], table.cell(align: center)[pkj-02], table.cell(align: center)[Donald
    Trump], table.cell(align: center)[20241031], table.cell(align: center)[3], table.cell(align: center)[RM24.00],
    table.cell(align: center)[0108982068], table.cell(align: center)[mkn-02], table.cell(align: center)[Thejendra], table.cell(align: center)[tchalla69], table.cell(align: center)[Udang], table.cell(align: center)[RM9.00], table.cell(align: center)[pkj-01], table.cell(align: center)[Joe
    Biden], table.cell(align: center)[20241031], table.cell(align: center)[1], table.cell(align: center)[RM9.00],
    table.cell(align: center)[0196697201], table.cell(align: center)[mkn-02], table.cell(align: center)[Amir], table.cell(align: center)[nigga1488], table.cell(align: center)[Udang], table.cell(align: center)[RM9.00], table.cell(align: center)[pkj-01], table.cell(align: center)[Joe
    Biden], table.cell(align: center)[20241101], table.cell(align: center)[4], table.cell(align: center)[RM36.00],
    table.cell(align: center)[0196697201], table.cell(align: center)[mkn-03], table.cell(align: center)[Amir], table.cell(align: center)[nigga1488], table.cell(align: center)[Sup
    Miso], table.cell(align: center)[RM13.50], table.cell(align: center)[pkj-01], table.cell(align: center)[Joe
    Biden], table.cell(align: center)[20241101], table.cell(align: center)[1], table.cell(align: center)[RM13.50],
    table.cell(align: center)[0196697201], table.cell(align: center)[mnm-01], table.cell(align: center)[Amir], table.cell(align: center)[nigga1488], table.cell(align: center)[Matcha], table.cell(align: center)[RM12.00], table.cell(align: center)[pkj-03], table.cell(align: center)[Bernie
    Sanders], table.cell(align: center)[20241101], table.cell(align: center)[2], table.cell(align: center)[RM24.00],
    table.cell(align: center)[0196697201], table.cell(align: center)[mnm-02], table.cell(align: center)[Amir], table.cell(align: center)[nigga1488], table.cell(align: center)[Teh
    Hijau], table.cell(align: center)[RM5.00], table.cell(align: center)[pkj-03], table.cell(align: center)[Bernie
    Sanders], table.cell(align: center)[20241101], table.cell(align: center)[1], table.cell(align: center)[RM5.00],
    table.cell(align: center)[0189741311], table.cell(align: center)[mkn-04], table.cell(align: center)[Adam], table.cell(align: center)[adamdanish092], table.cell(align: center)[Futomaki], table.cell(align: center)[RM8.50], table.cell(align: center)[pkj-02], table.cell(align: center)[Donald
    Trump], table.cell(align: center)[20241102], table.cell(align: center)[3], table.cell(align: center)[RM25.50],
    table.cell(align: center)[0189741311], table.cell(align: center)[mkn-01], table.cell(align: center)[Adam], table.cell(align: center)[adamdanish092], table.cell(align: center)[Salmon
    Sashimi], table.cell(align: center)[RM8.00], table.cell(align: center)[pkj-02], table.cell(align: center)[Donald
    Trump], table.cell(align: center)[20241102], table.cell(align: center)[1], table.cell(align: center)[RM8.00],
    table.cell(align: center)[0189741311], table.cell(align: center)[mnm-02], table.cell(align: center)[Adam], table.cell(align: center)[adamdanish092], table.cell(align: center)[Teh
    Hijau], table.cell(align: center)[RM5.00], table.cell(align: center)[pkj-03], table.cell(align: center)[Bernie
    Sanders], table.cell(align: center)[20241102], table.cell(align: center)[1], table.cell(align: center)[RM5.00],
  )]
  , kind: table
  )

=== Penerangan:
<penerangan>
- Kumpulan berulang dihapuskan. Setiap lajur dalam jadual mempunyai
  atribut yang atomik.

- Kunci primer komposit dikenal pasti iaitu atribut ‘no\_telefon' dan
  atribut ‘id\_makanan'.

=== Skema Hubungan:
<skema-hubungan>
PESANAN (no\_telefon \<KP\> \<KA\>, kod\_makanan \<KP\> \<KA\>,
nama\_pelanggan, password, nama\_makanan, harga, id\_pekerja,
nama\_pekerja, tarikh, bilangan, jumlah)

== 2NF
<nf-2>
=== PELANGGAN
<pelanggan>
#figure(
  align(center)[#table(
    columns: (33.33%, 33.33%, 33.33%),
    align: (center,center,center,),
    table.header(table.cell(align: center)[#strong[#underline[no\_telefon];];], table.cell(align: center)[#strong[nama\_pelanggan];], table.cell(align: center)[#strong[password];],),
    table.hline(),
    table.cell(align: center)[0108982068], table.cell(align: center)[Thejendra], table.cell(align: center)[tchalla69],
    table.cell(align: center)[0196697201], table.cell(align: center)[Amir], table.cell(align: center)[nigga1488],
    table.cell(align: center)[0189741311], table.cell(align: center)[Adam], table.cell(align: center)[adamdanish092],
  )]
  , kind: table
  )

=== MAKANAN 
<makanan>
#figure(
  align(center)[#table(
    columns: (20%, 20%, 20%, 20%, 20%),
    align: (center,center,center,center,center,),
    table.header(table.cell(align: center)[#strong[#underline[id\_makanan];];], table.cell(align: center)[#strong[nama\_makanan];], table.cell(align: center)[#strong[harga];], table.cell(align: center)[#strong[id\_pekerja];], table.cell(align: center)[#strong[nama\_pekerja];],),
    table.hline(),
    table.cell(align: center)[mkn-01], table.cell(align: center)[Salmon
    Sashimi], table.cell(align: center)[RM8.00], table.cell(align: center)[pkj-02], table.cell(align: center)[Donald
    Trump],
    table.cell(align: center)[mkn-02], table.cell(align: center)[Udang], table.cell(align: center)[RM9.00], table.cell(align: center)[pkj-01], table.cell(align: center)[Joe
    Biden],
    table.cell(align: center)[mkn-03], table.cell(align: center)[Sup
    Miso], table.cell(align: center)[RM13.50], table.cell(align: center)[pkj-01], table.cell(align: center)[Joe
    Biden],
    table.cell(align: center)[mkn-04], table.cell(align: center)[Futomaki], table.cell(align: center)[RM8.50], table.cell(align: center)[pkj-02], table.cell(align: center)[Donald
    Trump],
    table.cell(align: center)[mnm-01], table.cell(align: center)[Matcha], table.cell(align: center)[RM12.00], table.cell(align: center)[pkj-03], table.cell(align: center)[Bernie
    Sanders],
    table.cell(align: center)[mnm-02], table.cell(align: center)[Teh
    Hijau], table.cell(align: center)[RM5.00], table.cell(align: center)[pkj-03], table.cell(align: center)[Bernie
    Sanders],
  )]
  , kind: table
  )

=== PESANAN
<pesanan-2>
#figure(
  align(center)[#table(
    columns: (20%, 20%, 20%, 20%, 20%),
    align: (center,center,center,center,center,),
    table.header(table.cell(align: center)[#strong[#underline[no\_telefon];];], table.cell(align: center)[#strong[#underline[id\_makanan];];], table.cell(align: center)[#strong[tarikh];], table.cell(align: center)[#strong[bilangan];], table.cell(align: center)[#strong[jumlah];],),
    table.hline(),
    table.cell(align: center)[0108982068], table.cell(align: center)[mkn-01], table.cell(align: center)[20241031], table.cell(align: center)[3], table.cell(align: center)[RM24.00],
    table.cell(align: center)[0108982068], table.cell(align: center)[mkn-02], table.cell(align: center)[20241031], table.cell(align: center)[1], table.cell(align: center)[RM9.00],
    table.cell(align: center)[0196697201], table.cell(align: center)[mkn-03], table.cell(align: center)[20241101], table.cell(align: center)[4], table.cell(align: center)[RM36.00],
    table.cell(align: center)[0196697201], table.cell(align: center)[mkn-03], table.cell(align: center)[20241101], table.cell(align: center)[1], table.cell(align: center)[RM13.50],
    table.cell(align: center)[0196697201], table.cell(align: center)[mnm-01], table.cell(align: center)[20241101], table.cell(align: center)[2], table.cell(align: center)[RM24.00],
    table.cell(align: center)[0196697201], table.cell(align: center)[mnm-02], table.cell(align: center)[20241101], table.cell(align: center)[1], table.cell(align: center)[RM5.00],
    table.cell(align: center)[0189741311], table.cell(align: center)[mkn-04], table.cell(align: center)[20241102], table.cell(align: center)[3], table.cell(align: center)[RM25.50],
    table.cell(align: center)[0189741311], table.cell(align: center)[mkn-01], table.cell(align: center)[20241102], table.cell(align: center)[1], table.cell(align: center)[RM8.00],
    table.cell(align: center)[0189741311], table.cell(align: center)[mnm-02], table.cell(align: center)[20241102], table.cell(align: center)[1], table.cell(align: center)[RM5.00],
  )]
  , kind: table
  )

=== Penerangan:
<penerangan-1>
- Jadual ‘PESANAN' dipecahkan kepada tiga buah jadual, iaitu
  ‘PELANGGAN', ‘MAKANAN' dan ‘PESANAN'.

- Kebergantungan fungsi separa dikenal pasti dan dihapuskan.

- Setiap satu jadual mempunyai atribut kunci primer.

- Masih terdapat kebergantungan fungsi transitif di jadual ‘MAKANAN'
  iaitu ‘nama\_pekerja' bergantung secara transitif kepada
  ‘id\_pekerja'.

=== Skema hubungan:
<skema-hubungan-1>
PESANAN (no\_telefon\< KP\> \<KA\>, kod\_makanan \<KP\> \<KA\>, tarikh,
bilangan, jumlah)

PELANGGAN (no\_telefon \<KP\>, nama\_pelanggan, password)

MAKANAN (kod\_makanan \<KP\>, nama\_makanan, harga, id\_pekerja,
nama\_pekerja)

== 3NF
<nf-3>
=== PELANGGAN
<pelanggan-1>
#figure(
  align(center)[#table(
    columns: (33.33%, 33.33%, 33.33%),
    align: (center,center,center,),
    table.header(table.cell(align: center)[#strong[#underline[no\_telefon];];], table.cell(align: center)[#strong[nama\_pelanggan];], table.cell(align: center)[#strong[password];],),
    table.hline(),
    table.cell(align: center)[0108982068], table.cell(align: center)[Thejendra], table.cell(align: center)[tchalla69],
    table.cell(align: center)[0196697201], table.cell(align: center)[Amir], table.cell(align: center)[nigga1488],
    table.cell(align: center)[0189741311], table.cell(align: center)[Adam], table.cell(align: center)[adamdanish092],
  )]
  , kind: table
  )

=== MAKANAN
<makanan-1>
#figure(
  align(center)[#table(
    columns: (25%, 25%, 25%, 25%),
    align: (center,center,center,center,),
    table.header(table.cell(align: center)[#strong[#underline[id\_makanan];];], table.cell(align: center)[#strong[nama\_makanan];], table.cell(align: center)[#strong[harga];], table.cell(align: center)[#strong[id\_pekerja];],),
    table.hline(),
    table.cell(align: center)[mkn-01], table.cell(align: center)[Salmon
    Sashimi], table.cell(align: center)[RM8.00], table.cell(align: center)[pkj-02],
    table.cell(align: center)[mkn-02], table.cell(align: center)[Udang], table.cell(align: center)[RM9.00], table.cell(align: center)[pkj-01],
    table.cell(align: center)[mkn-03], table.cell(align: center)[Sup
    Miso], table.cell(align: center)[RM13.50], table.cell(align: center)[pkj-01],
    table.cell(align: center)[mkn-04], table.cell(align: center)[Futomaki], table.cell(align: center)[RM8.50], table.cell(align: center)[pkj-02],
    table.cell(align: center)[mnm-01], table.cell(align: center)[Matcha], table.cell(align: center)[RM12.00], table.cell(align: center)[pkj-03],
    table.cell(align: center)[mnm-02], table.cell(align: center)[Teh
    Hijau], table.cell(align: center)[RM5.00], table.cell(align: center)[pkj-03],
  )]
  , kind: table
  )

=== PEKERJA
<pekerja>
#figure(
  align(center)[#table(
    columns: (48.5%, 51.5%),
    align: (center,center,),
    table.header(table.cell(align: center)[#strong[#underline[id\_pekerja];];], table.cell(align: center)[#strong[nama\_pekerja];],),
    table.hline(),
    table.cell(align: center)[pkj-01], table.cell(align: center)[Joe
    Biden],
    table.cell(align: center)[pkj-02], table.cell(align: center)[Donald
    Trump],
    table.cell(align: center)[pkj-03], table.cell(align: center)[Bernie
    Sanders],
  )]
  , kind: table
  )

=== PESANAN
<pesanan-3>
#figure(
  align(center)[#table(
    columns: (20%, 20%, 20%, 20%, 20%),
    align: (center,center,center,center,center,),
    table.header(table.cell(align: center)[#strong[#underline[no\_telefon];];], table.cell(align: center)[#strong[#underline[id\_makanan];];], table.cell(align: center)[#strong[tarikh];], table.cell(align: center)[#strong[bilangan];], table.cell(align: center)[#strong[jumlah];],),
    table.hline(),
    table.cell(align: center)[0108982068], table.cell(align: center)[mkn-01], table.cell(align: center)[20241031], table.cell(align: center)[3], table.cell(align: center)[RM24.00],
    table.cell(align: center)[0108982068], table.cell(align: center)[mkn-02], table.cell(align: center)[20241031], table.cell(align: center)[1], table.cell(align: center)[RM9.00],
    table.cell(align: center)[0196697201], table.cell(align: center)[mkn-03], table.cell(align: center)[20241101], table.cell(align: center)[4], table.cell(align: center)[RM36.00],
    table.cell(align: center)[0196697201], table.cell(align: center)[mkn-03], table.cell(align: center)[20241101], table.cell(align: center)[1], table.cell(align: center)[RM13.50],
    table.cell(align: center)[0196697201], table.cell(align: center)[mnm-01], table.cell(align: center)[20241101], table.cell(align: center)[2], table.cell(align: center)[RM24.00],
    table.cell(align: center)[0196697201], table.cell(align: center)[mnm-02], table.cell(align: center)[20241101], table.cell(align: center)[1], table.cell(align: center)[RM5.00],
    table.cell(align: center)[0189741311], table.cell(align: center)[mkn-04], table.cell(align: center)[20241102], table.cell(align: center)[3], table.cell(align: center)[RM25.50],
    table.cell(align: center)[0189741311], table.cell(align: center)[mkn-01], table.cell(align: center)[20241102], table.cell(align: center)[1], table.cell(align: center)[RM8.00],
    table.cell(align: center)[0189741311], table.cell(align: center)[mnm-02], table.cell(align: center)[20241102], table.cell(align: center)[1], table.cell(align: center)[RM5.00],
  )]
  , kind: table
  )

=== Penerangan:
<penerangan-2>
- Kebergantungan fungsi transitif dihapuskan dengan memecahkan jadual
  ‘MAKANAN' kepada jadual ‘MAKANAN' dan PEKERJA'.

=== Skema Hubungan:
<skema-hubungan-2>
PESANAN (no\_telefon \< KP\> \<KA\>, kod\_makanan \<KP\> \<KA\>, tarikh,
bilangan, jumlah)

PELANGGAN (no\_telefon \<KP\>, nama\_pelanggan, password)

MAKANAN (kod\_makanan \<KP\>, nama\_makanan, harga, id\_pekerja \<KA\>)

PEKERJA (id\_pekerja \<KP\>, nama\_pekerja)

= 2.4 Antara Muka Input/Output
<antara-muka-inputoutput>
== MENU (SWITCHBOARD)
<menu-switchboard>
#box(image("/media/image4.jpg", height: 3.82635in, width: 5.3766in))

== 
<section>
== Borang Daftaran
<borang-daftaran>
#box(image("/media/image5.jpg", height: 3.91759in, width: 5.50481in))

== Borang Tempahan
<borang-tempahan>
#box(image("/media/image6.jpg", height: 4.10007in, width: 5.76122in))

== Laporan
<laporan>
#box(image("/media/image7.jpg", height: 4.23381in, width: 5.94915in))
