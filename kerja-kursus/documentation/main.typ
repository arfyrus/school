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
    spacing: 2.5em,
    leading: 1.5em,
    first-line-indent: (amount: 0.5in)
)
#set heading(numbering: "1.1")
#set pagebreak(weak: true)

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

// Cover

#include "cover.typ"

#pagebreak()

// Isi Kandungan

#outline(title: [ISI KANDUNGAN], depth: 2)
#pagebreak()

// Penghargaan

#heading(numbering: none, [PENGHARGAAN])
#block(height: 1em)[]
Saya ingin meluahkan perasaan kesyukuran kepada semua pihak yang telah membantu saya dalam melaksakan kerja kursus Sains Komputer ini.

Pertama sekali, saya ingin mengucapkan terima kasih yang tidak terhingga kepada guru mata pelajaran Sains Komputer saya, Puan Nik Nor Dalila binti Nooh kerana telah membimbing saya dalam melakukan projek ini dari mula hingga akhir. Dengan bimbingan beliau, saya dapat melaksanakan projek ini dengan mengikut skema bagi mendapat pemarkahan yang terbaik.

Seterusnya, saya amat syukur kepada bapa saya, Tuan Mohd Hafeez bin Yusof yang telah membekalkan saya dengan sumber yang diperlukan projek ini dengan lancar.

Akhir sekali, setinggi-tinggi penghargaan kepada rakan-rakan saya yang telah melaksanakan projek ini bersama-sama saya. Kami dapat membantu satu sama lain dalam memperbaiki kesilapan yang muncul dalam tempoh masa pelaksanaan projek masing-masing. Tanpa bantuan mereka, saya tidak dapat menyiapkan projek ini dengan begitu lancar.

Sekali lagi, saya mengucapkan terima kasih kepada semua pihak yang terlibat dalam bantuan ini.

#pagebreak()

// Fasa 1

#include "fasa1.typ"

#pagebreak()

// Fasa 2

#include "fasa2.typ"

#pagebreak()

// Fasa 3

#include "fasa3.typ"
