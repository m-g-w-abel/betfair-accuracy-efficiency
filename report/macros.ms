.R1
database bib
move-punctuation
no-label-in-reference
accumulate
sort A
join-authors " & " ", "
label "(A.n|Q) ', ' (D.y|D)"
short-label "(D.y|D)"
bracket-label " (" ")" "; "
.R2
.EQ
delim @@
.EN
.de BP
. IP \[bu]
..
.de NHD
. NH \\$2
. XN \\$1
..
.de SHD
. SH \\$2
. XH 1 \\$1
..
.de GE
. IP "\fB\\$1\fP" 1i
\(em \\$2
..
.nr fig 0 1
.de FIGS
. KS
. PSPIC ../output/plots/\\$1.ps \\$2
. DS C
. B "Figure \\n+[fig]: \\$3"
. DE
. KE
..
.de FN
. nr *temp \\n[fig]\\$1
\\n[*temp]\\$2
..
