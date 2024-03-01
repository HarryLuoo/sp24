#set heading(numbering: "1.1")
#show heading: text.with(size: 11pt, weight: 900, font: "Libre Baskerville")
#set text(11pt)
#set page(margin: (x: 0.5cm, y: 0.5cm),numbering: "1/1", columns: 1, flipped: false)
#set math.equation(numbering:"(1)")
#show math.equation: set text(11pt)
#set math.cases(gap: 0.5em)

//Exam notecard layout:
// #show heading: text.with(size: 9pt, weight: 900, font: "Libre Baskerville")
// #set text(8pt)
// #set page(margin: (x: 0.3cm, y: 0.2cm),numbering: "1/1", columns: 3, flipped: true)
// #set math.equation(numbering:"(1)")
// #show math.equation: set text(8.2pt)

#text(font: "Cambria",size: 12pt,weight: "black")[Brief Mechanics\ Notes from Physics 311]\
Harry Luo\ 
work in progress...
#line(length: 100%, stroke: (thickness: 2pt))

//part1: covers lec 1 - 13, i.e. exam 1 content
#include "part1.typ"

//part2: exam 2 content


//Appendix
#include "apnd.typ"