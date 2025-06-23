#align(center + top)[
    #image("images/image1.png", height: 7%)
]

#show grid.cell: set text(size: 10pt, weight: "bold")
#show grid.cell: set par(leading: 0.5em)
#set grid.cell(align: center + horizon)

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
    [NAMA CALON], [],
    [KAD PENGENALAN], [],
    [ANGKA GILIRAN], [],
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
    Borang ini mestilah ditandatangani oleh calon dan guru atau pentaksir yang mentaksir kerja projek calon, dan dilampirkan bersama dengan laporan kerja projek yang dihantar kepada guru atau pentaksir. Kegagalan calon menandatangani borang perakuan ini akan menyebabkan calon tidak diberikan sebarang markah untuk kerja projek yang dihasilkan.
]

#table(
    columns: (auto, 1fr),
    [Nama Calon], [],
    [No. Kad Pengenalan Calon], [],
    [Angka Giliran Calon], [],
    [Nombor Pusat Calon], [],
)

#par(first-line-indent: 0pt, spacing: 1em)[
    #text(weight: "bold", size: 14pt)[Makluman Kepada Calon:] \ 
    Kerja projek yang dihantar untuk dinilai mestilah merupakan hasil kerja calon sendiri. Kerja projek calon boleh dibatalkan sekiranya calon didapati meniru kerja projek calon lain atau membenarkan calon lain untuk meniru kerja projek yang dihasilkan calon sendiri, atau calon didapati menipu dalam apa cara sekalipun bagi menghasilkan kerja projek tersebut. Calon perlu berintegriti dan jujur, mengamalkan kesamarataan, adil dan menghormati maruah individu
]
