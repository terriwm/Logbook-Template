#let Logbook(
  name: none,
  fan: none,
  domain: "flinders.edu.au",
  prac_number: none,
  prac_title: none,
  subject_code: none,
  subject_name: none,
  doc
) = {
  import "@preview/codly:1.3.0": *
  import "@preview/codly-languages:0.1.1": *
  show: codly-init.with()
  import "@preview/wavy:0.1.3"
  import "@preview/cetz:0.3.2": canvas, draw
  import "@preview/cetz-plot:0.1.1": plot

  set text(region: "AU")
  show figure: set block(breakable: true)

  show raw.where(lang: "wavy"): it => wavy.render(it.text)
  show link: underline

  set table(
    stroke: 0.5pt
  )

  show table.cell.where(y: 0): set text(weight: "bold")

  page(
    header: [
      #image("imgs/header art.png", width: 100%)
    ],
    margin: (x: 1cm, y: 5cm),
    footer: none,
  )[
    #align(right+horizon)[
      #text(
        fill: blue,
        weight: "bold",
        size: 30pt,
      )[
        #subject_code \
        #subject_name
      ] \ \
      #text(
        weight: "semibold",
      )[
        Practical #prac_number Logbook - #prac_title
      ]
    ]

    #align(right + bottom)[
      #name - #fan \
      #fan\@#domain
    ]
  ]

  pagebreak()

  counter(page).update(1)

  set page(
    margin: (left: 1cm, right: 1cm, top: 1.5cm, bottom: 1.5cm),
    footer: context [
      #line(length:100%) 
      #subject_name Logbook 
      #h(1fr) 
      #counter(page).display("1 of 1", both: true)
    ]
  )

  doc
}