# 565hw4-OpenMP
## hw4-1 histogram
### Files:
histo*.c files: C source files<br>
Makefile: makefile with serverl targets<br>
\*.sh: testing script<br>
uiuc*.pgm: input file for the code<br>
validation*.out: correct output for validation usage<br>
### Usage:
`make clean`<br>
`make all`<br>
test locks version: `./lock.sh`<br>
test atomic version: `./atomic.sh`<br>
test creative version: `./creative.sh`<br>

## hw4-2 AMG
### Files:
modified C source file: csr_matvec.c, relax.c, vector.c<br>
test.sh : testing script<br>
### Usage:
`make clean`<br>
`make all`<br>
`./test.sh`<br>
