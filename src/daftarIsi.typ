#set text(font: "Times New Roman")

= DAFTAR ISI
#v(2em)

#show outline.entry.where(level: 1): it => {
  strong(it)
}

#outline(
  title: none,
  depth: 3,
  indent: 1.5em,
)