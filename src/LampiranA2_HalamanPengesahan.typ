// #set page(margin: (top: 20mm))
#import "../metadata.typ": *
#set text(font: "Times New Roman", lang: "id")

#align(center)[
  #text(size: 14pt, weight: "bold")[
    #v(8pt)
    LAMPIRAN A2
  ]
]

= HALAMAN PENGESAHAN

#v(1em)

#grid(columns: (55mm, 5mm, 1fr), stroke: none, rows: (auto, 13pt, 13pt, 13pt), align: (left, left, left),
[1. Judul Tugas Akhir],[:],[ 
  #set par(leading: 0.5em)
  #titleTA
  #v(5pt)],
[2. Bidang Tugas Akhir],[:],[asdf],
[#h(1.3em) (pilih salah satu)],[],[ ],
[3. Bidang Keahlian],[:],[ ],
[4. Pengusul],[],[ ],
[#h(1.3em) a. Nama Lengkap],[:],[ #name],
[#h(1.3em) b. NRP],[:],[ #nrp],
[#h(1.3em) c. Program Studi],[:],[ ],
[#h(1.3em) d. Jurusan], [:], [ ],
[#h(1.3em) e. Alamat Rumah],[:],[ ],
[#h(1.3em) f. No. Telp/HP],[:],[ ],
[#h(1.3em) g. Alamat Email],[:],[ ],
[5. Usulan Dosen Pembimbing],[],[ ],
[#h(1.3em) Dosen Pembimbing I],[], [ ],
[#h(1.3em)a. Nama Lengkap dan Gelar],[:], [ ],
[#h(1.3em)b. NIP],[:], [ asdf],
[#h(1.3em) Dosen Pembimbing II], [],[ ],
[#h(1.3em) a. Nama Lengkap dan Gelar], [:], [ ],
[#h(1.3em) b. NIP], [:], [],
[6. Jangka Waktu Pelaksanaan], [], [#h(9.4em)Bulan],
)

#grid(rows: (15pt), stroke: none, columns: (100mm,700mm), align: (left, left),
[Menyetujui],[Surabaya, tanggal bulan tahun],
[Ketua Jurusan],[Pengusul],
grid.cell(
  rowspan: 2,
  colspan: 2,
  text()[]
),
[#underline("Nama Terang")],[#underline("Nama Terang")],
[NIP.],[NRP.],
)

#align(center)[
  #set par(leading: 7pt)
  Koordinator Tugas AKhir,\
#v(3em)
#underline("Nama Terang")\
NIP.
]

#grid(
  columns: (100mm, 70mm),rows: 15pt, stroke: none,
  [Calon Dosen Pembimbing 1,], [Calon Dosen Pembimbing II,],
  grid.cell(
    rowspan: 2,
    colspan: 2,
    text()[]
  ),

  [#underline("Nama Terang")], [#underline("Nama Terang")],
  [NIP.], [NIP.],
)

#pagebreak()

#align(center + horizon)[
  _(Halaman ini sengaja dikosongkan)_
]