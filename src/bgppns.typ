#set page(paper: "a4", 
margin: (top: 5mm, left: 5mm, right: 5mm, bottom: 0mm)
)

#page(foreground: rect(fill: rgb(255, 255, 255, 75%), width: 100%, height: 100%))[
#grid(
  columns: 7,
  column-gutter: 5mm,
  row-gutter: 5mm,
  ..range(63).map(_ => 
  image("../Images/logoPpns.jpg", height: 9.5%)
  )
)
]
