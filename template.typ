#let warnaProdi = rgb("fac814")

#let templateTA(
  titleTA: "",
  name: "",
  nrp: "",
  dosBing1: "",
  dosBing2: "",
  bodyContent,
) = {
  set page(
    margin: (right: 30mm, top: 30mm, bottom: 30mm, left: 30mm),
    paper: "a4",
  )

  set text(font: "Trebuchet MS", size: 12pt, lang: "id")

  set par(
    leading: 1em,
    justify: true,
  )

  set page(numbering: none)

  show heading.where(level: 1): chapterHeading => {
    set text(size: 14pt, weight: "bold", black)
    set align(center)
    chapterHeading
  }

  place(
    top + left,
    dy: -15mm,
  )[
#image("images/logoPpns.jpg", height: 50mm)
  ]

  place(
    dy: 50mm,
    dx: -30mm,
  )[
    #rect(fill: warnaProdi, height: 100%, width: 220mm)
  ]

  v(80mm)
  text(size: 14pt, weight: "bold", fill: white)[
    PROPOSAL TUGAS AKHIR
    #v(5em)
  ]

  text(fill: white, size: 16pt, weight: "bold", spacing: 16pt)[
    #titleTA\ \ \
  ]

  text(size: 14pt, white)[
    #name\
    #nrp\
  ]

  text(white, size: 12pt, place(
    bottom,
    dy: -5mm,
  )[
    PROGRAM STUDI D4 TEKNIK KELISTRIKAN KAPAL\
    JURUSAN TEKNIK KELISTRIKAN KAPAL\
    POLITEKNIK PERKAPALAN NEGERI SURABAYA\
    2026
  ])

  pagebreak()
  pagebreak()

  set page(numbering: "i")
  set page(footer: context {
    let page-number = counter(page).get().first()
    if calc.even(page-number) {
      align(left, counter(page).display())
    } else {
      align(right, counter(page).display())
    }
  })
  counter(page).update(1)

  set page(
    margin: (outside: 30mm, top: 35mm, bottom: 30mm, inside: 40mm),
    paper: "a4",
  )

  bodyContent
}



#let setupMainBody(
  body,
) = {
  set heading(numbering: (..numbers) => {
    if numbers.pos().len() == 1 {
      [BAB #numbering("1.1", ..numbers)]
    } else {
      numbering("1.1", ..numbers)
    }
  })
  set page(numbering: "1")
  set page(footer: context {
    let page-number = counter(page).get().first()
    if calc.even(page-number) {
      align(left, counter(page).display())
    } else {
      align(right, counter(page).display())
    }
  })
  counter(page).update(1)

  set text(font: "Times New Roman", size: 12pt, black, lang: "id", hyphenate: true)
  set par(leading: 1em, first-line-indent: 36pt, justify: true, linebreaks: "simple", spacing: 12pt)

  set figure(numbering: figureNumber => {
    let chapterNumber = counter(heading).get().first()
    numbering("1.1", chapterNumber, figureNumber)
  })
  set figure.caption(separator: [ ])
  show figure.caption.where(): it => {
    set par(spacing: 5pt, leading: 12pt)
    set text(font: "Times New Roman", bottom-edge: 0pt, top-edge: "baseline", size: 10pt)
    [\ #it]
  }

  show figure.where(kind: table): it => {
    set figure.caption(position: top)
    set align(left)
    set par(justify: false, leading: 0.8em)
    set text(size: 10pt)
    set block(above: 12pt, below: 0em)
    it
  }
  show figure.caption.where(kind: table): it => {
    set align(left)
    it
  }

  set table(
    align: (center + horizon),
  )

  show heading.where(level: 1): chapterHeading => {
    set text(size: 14pt, weight: "bold")
    set align(center)
    set par(leading: 12pt, spacing: 0pt)

    let isAppendix = chapterHeading.supplement == [Lampiran]

    if chapterHeading.numbering != none {
      let currentChapterNumber = counter(heading).display(chapterHeading.numbering)
      [#currentChapterNumber \ #chapterHeading.body \ ]
    } else {
      chapterHeading.body
    }
  }

  show heading.where(level: 2): subHeading => {
    set par(leading: 12pt)
    set text(size: 12pt, top-edge: "cap-height", bottom-edge: "descender")
    let currentSubHeadingNumber = counter(heading).display(subHeading.numbering)
    [ \ ]
    [#currentSubHeadingNumber #h(18pt) #subHeading.body]
  }

  show heading.where(level: 3): subHeading => {
    set par(leading: 12pt)
    let currentSubHeadingNumber = counter(heading).display(subHeading.numbering)
    [\ #currentSubHeadingNumber #h(10pt) #subHeading.body]
  }

  body
}


#let imgSource(source, kind: "image") = {
  let source-text = if kind == "table" {
    block()
    text(
      size: 10pt,
      font: "Times New Roman",
      top-edge: "baseline",
      bottom-edge: 0pt,
    )[ #source #v(8pt)]
  } else {
    text(
      size: 10pt,
      font: "Times New Roman",
      top-edge: 0pt,
      bottom-edge: 0pt,
    )[ (#source) ]
  }

  if kind == "table" {
    align(left)[#source-text]
  } else {
    align(center)[#source-text]
  }
}
