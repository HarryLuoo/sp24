#set page("us-letter")


#set heading(numbering: "1.1")
#show heading: text.with(size: 11pt, weight: 1000, font: "Libre Baskerville")
#set text(11pt)
#set page(margin: (x: 3cm, y: 3cm),numbering: "1/1", columns: 1, flipped: false)
#set math.equation(numbering:"1")
#show math.equation: set text(11pt)
#set math.cases(gap: 0.2em)
#text(font: "Cambria",size: 12pt,weight: "black")[Brief Mechanics\ Notes from Physics 311]\
Harry Luo\ 
finalized on 5/7/2024
It's been a wild ride...
#line(length: 100%, stroke: (thickness: 2pt))
#outline(indent: auto)
#line(length: 100%)

//Exam notecard layout:
// #show heading: text.with(size: 6pt, weight: 990, font: "Libre Baskerville")
// #set text(5pt)
// #set page(margin: (x: 0.5cm, y: 0.5cm), columns: 4, flipped: true)
// #set math.equation(numbering:"[1")
// #show math.equation: set text(5pt)


//part1: covers lec 1 - 13, i.e. exam 1 content
#include "part1.typ"

//part2: exam 2 content
#include "part2.typ"

//part3: final content
#include "part3.typ"
//Appendix
//#pagebreak()
#include "apnd.typ"