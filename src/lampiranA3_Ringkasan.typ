#import "../metadata.typ": *

#set text(font: "Times New Roman")
#set par(leading: 1em)
// #set page(margin: (top: 20mm))
 
#align(center)[
  #text(size: 14pt, weight: "bold")[
    LAMPIRAN A3\
    Format Ringkasan Proposal TA
  ]
]

#v(2em)
#align(center)[
  *#titleTA*
  #v(2em)
]

#grid(
  columns: (10mm, 50mm, 700mm), stroke: none, align: (start, start), rows: 15pt,
  [], [Nama Mahasiswa], [: #name], 
  [], [NRP], [: #nrp],
  [], [Calon Dosen Pembimbing], [: #dosBing1]
)
#v(2em, weak: true)

= RINGKASAN

#v(1em)
// #text(font: "Times New Roman", size: 14pt, align(center)[RINGKASAN], weight: "bold")
a. Latar Belakang
#lorem(50) \ \
b. Rumusan Masalah
#lorem(55) \ \
c. Metode
#lorem(43)