#show grid.cell: set text(size: 10pt, weight: "bold")
#show grid.cell: set par(leading: 0.5em)
#show table: set block(above: 1.5em, below: 1.5em)
#show table.cell: set text(size: 10pt)

#set grid.cell(align: center + horizon)
#set page(margin: (top: 0.5in, rest: 1in))

#align(center)[
    #image("images/image1.png", height: 7%)
]

#grid(
    columns: (1fr),
    row-gutter: 1em,
    [SAINS KOMPUTER],
    [LEMBAGA PEPERIKSAAN \ KEMENTERIAN PENDIDIKAN MALAYSIA],
    [PELAPORAN KERJA PROJEK],
)

//#box(height: 1em)
#set grid.cell(align: left + horizon)

#grid(
    columns: (auto, 1fr),
    rows: (3em,) + (2em,) * 3 + (6.5em,) + (2em,),
    column-gutter: 30pt,
    row-gutter: 1.5em,
    inset: 5%,
    stroke: (x, y) => {
        if x == 1 {
            1pt + black
        } else {
            0pt
        }
    },
    [TAJUK], [],
    [NAMA CALON], [MUHAMMAD ARIF BIN MOHD HAFEEZ],
    [KAD PENGENALAN], [080328-14-0035],
    [ANGKA GILIRAN], [A019],
    [ALAMAT SEKOLAH], grid.cell(align: left + horizon)[SMK DAMANSARA UTAMA, \ JALAN SS 20/21, \ 47400 PETALING JAYA, \ SELANGOR DARUL EHSAN],
    [NAMA GURU], grid.cell(align: left + horizon)[PN. NIK NOR DALILA BINTI NOOH],
    [TANDATANGAN GURU], [],
    [TARIKH], [],
)

#pagebreak()

#align(center + top)[
    #image("images/image1.png", height: 7%)
]

#set align(center)
#set par(leading: .5em)

#stack(
    dir: ttb,
    spacing: 1em,
    text(size: 12pt, weight: "bold")[LEMBAGA PEPERIKSAAN \ KEMENTERIAN PENDIDIKAN MALAYSIA],
    text(size: 16pt, weight: "bold")[KERJA PROJEK SAINS KOMPUTER],
    text(size: 12pt, weight: "bold")[SIJIL PELAJARAN MALAYSIA],
    text(size: 12pt, weight: "bold")[BORANG PERAKUAN CALON],
)

#set align(left)
#par[
    Borang ini mestilah ditandatangani oleh calon dan guru atau pentaksir yang
    mentaksir kerja projek calon, dan dilampirkan bersama dengan laporan kerja
    projek yang dihantar kepada guru atau pentaksir. Kegagalan calon
    menandatangani borang perakuan ini akan menyebabkan calon tidak diberikan
    sebarang markah untuk kerja projek yang dihasilkan.
]

#table(
    columns: (auto, 1fr),
    [Nama Calon], [MUHAMMAD ARIF BIN MOHD HAFEEZ],
    [No. Kad Pengenalan Calon], [080328-14-0035],
    [Angka Giliran Calon], [A019],
    [Nombor Pusat Calon], [],
)

#par(first-line-indent: 0pt, spacing: 1em)[
    #text(weight: "bold", size: 12pt)[Makluman Kepada Calon:] \ 
    Kerja projek yang dihantar untuk dinilai mestilah merupakan hasil kerja
    calon sendiri. Kerja projek calon boleh dibatalkan sekiranya calon didapati
    meniru kerja projek calon lain atau membenarkan calon lain untuk meniru
    kerja projek yang dihasilkan calon sendiri, atau calon didapati menipu
    dalam apa cara sekalipun bagi menghasilkan kerja projek tersebut. Calon
    perlu berintegriti dan jujur, mengamalkan kesamarataan, adil dan
    menghormati maruah individu, kumpulan dan komuniti. Calon akan
    bertanggungjawab atas tindakan serta keputusan yang diambil.
]

#par(first-line-indent: 0pt, spacing: 1em)[
    #text(weight: "bold", size: 12pt)[Perakuan Keaslian Kerja Projek Calon:] \ 
    Saya telah mengaku kerja projek membaca dan memahami makluman atas. Saya
    telah menghasilkan kerja projek Sains Komputer tanpa bantuan daripada
    mana-mana pihak, kecuali dengan penerangan oleh pihak yang dibenarkan,
    iaitu guru mata pelajaran Sains Komputer di sekolah (untuk sekolah kerajaan
    dan calon sekolah bantuan kerajaan).
]

#table(
    columns: (auto, 1fr),
    [Tandatangan Calon], [],
    [Tarikh], [],
)

#par(first-line-indent: 0pt, spacing: 1em)[
    #text(weight: "bold", size: 12pt)[Perakuan oleh Guru atau Pentaksir:] \ 
    Saya mengesahkan bahawa kerja projek Sains Komputer telah dihasilkan
    mengikut spesifikasi yang telah ditetapkan. Saya telah memeriksa kerja
    projek calon dan saya berpuas hati bahawa sepanjang pengetahuan saya, kerja
    projek tersebut telah dihasilkan sendiri oleh calon.
]

#table(
    columns: (auto, 1fr),
    [Tandatangan Guru/Pentaksir], [],
    [Nama Guru/Pentaksir], [NIK NOR DALILA BINTI NOOH],
    [Tarikh], [],
    [Alamat], [SMK DAMANSARA UTAMA, 47400 PETALING JAYA, SELANGOR],
)
