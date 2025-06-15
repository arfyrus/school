#align(center + top)[
    #image("images/image1.png", height: 5%)
]

#show grid.cell: set text(size: 10pt, weight: "bold")
#set grid.cell(align: center + horizon)

#grid(
    columns: (auto, 1fr),
    gutter: 10pt,
    [LEMBAGA PEPERIKSAAN \ KEMENTERIAN PENDIDIKAN MALAYSIA \ PELAPORAN KERJA PROJEK],
    [SAINS KOMPUTER],
)

#box(height: 1em)

#show grid.cell: set text(size: 10pt)
#show grid.cell: set par(leading: 1em)

#show grid.cell: some => {
    if some.x == 0 {
        set grid.cell(align: center + horizon)
    } else {
        set grid.cell(align: left + horizon)
    }
    some
}

#grid(
    columns: (auto, 1fr),
    rows: (1.5em,) * 4 + (6.5em,) + (1.5em,),
    column-gutter: 40pt,
    row-gutter: 1.5em,
    inset: 5%,
    stroke: (x, y) => {
        if x == 1 {
            1pt + black
        } else {
            0pt
        }
    },
    [KAD PENGENALAN], [],
    [TAJUK], [],
    [NAMA CALON], [],
    [ANGKA GILIRAN], [],
    [ALAMAT SEKOLAH], grid.cell(align: left + horizon)[SMK DAMANSARA UTAMA, \ JALAN SS 20/21, \ 47400 PETALING JAYA, \ SELANGOR DARUL EHSAN],
    [NAMA GURU], [],
    [TANDATANGAN GURU], [],
    [TARIKH], [],
    [NAMA GURU], [PN. NIK NOR DALILA BINTI NOOH]
)
