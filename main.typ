#import "metadata.typ": *
#import "template.typ": *

#show: templateTA.with(
  titleTA: titleTA,
  name: name,
  nrp: nrp,
  dosBing1: dosBing1,
  dosBing2: dosBing2,
)

#include "src/judul.typ"

#include "src/LampiranA2_HalamanPengesahan.typ"
#pagebreak(weak: true)

#include "src/lampiranA3_Ringkasan.typ"
#pagebreak(weak: true)

#include "src/daftarIsi.typ"
#pagebreak(weak: true)

#include "src/daftarTabel.typ"
#pagebreak(weak: true)

#include "src/daftarGambar.typ"
#pagebreak(weak: true)

#show: setupMainBody

#include "Bab1/bab1.typ"
#pagebreak(weak: true)

#include "Bab2/bab2.typ"
#pagebreak(weak: true)

#include "Bab3/bab3.typ"
#pagebreak(weak: true)

#bibliography("referensi.bib" , style: "ppns.csl", title: "DAFTAR PUSTAKA")
#pagebreak(weak: true)
