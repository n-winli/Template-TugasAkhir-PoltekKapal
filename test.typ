#set par(first-line-indent: 2em)

#show figure.where(kind: table): it => {
  set figure.caption(position: top)
  set align(center)
  set par(justify: false)
  set block(above: 12pt, below: 0em)
  it
}

#figure(
  table(
    columns: (1fr, 2fr, 3fr, 4fr),
    table.header("No.", "Test1", "Test2", "Test3"),
    [1], [2], [3], [4],

  )
)\

good luck i wish you well 