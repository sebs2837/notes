#let notes(
        title: [Paper Title],
        body
    ) = {

  set text(12pt, weight: 400)
  set heading(numbering: "1.")
  show heading: it => {

    // Level 1 headings are centered and smallcaps.
    // The other ones are run-in.
    set par(first-line-indent: 0em)

    if it.level == 1 {
      set text(size: 25pt, top-edge:"x-height")
      rect(inset: 0pt, 
           fill: rgb("#b4637a"), 
           outset: 0.5pt,
           radius: (
            left: 5pt,
            top-right:10pt,
            bottom-right: 1pt)
          )[#it.body]
    } else if it.level == 2 {
      set text(bottom-edge:"baseline")
      rect(inset: 0pt, fill: rgb("#b4637a"))[#it.body]
    }
  }

  set par(leading: 0.5em)


  body
}
