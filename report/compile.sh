#soelim $1 | groff -K utf-8 -p -ms -e -R -t -Tpdf > "${1%%.*}.pdf"
groff $1 -U -s -K utf-8 -p -mpic -ms -e -R -t -Tps > "${1%%.*}.ps"
ps2pdf "${1%%.*}.ps" "${1%%.*}.pdf"
