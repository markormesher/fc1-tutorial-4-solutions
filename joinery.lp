/* objective */
maximise: totalsale;

/* joinery (mins) */
totaljoinery = 120rect + 180circ;
totaljoinery <= 1800; /* 5 joiners * 6 hour days * 60 minutes */

/* sanding (mins) */
totalsanding = 40rect + 120circ;
totalsanding <= 960; /* 2 sanders * 8 hour days * 60 minutes */

/* polishing (mins) */
totalpolishing = 320rect + 240circ;
totalpolishing <= 3840; /* 8 polishers * 8 hour days * 60 minutes */

/* total sale */
totalsale = 120rect + 150circ;

/* variable types */
int rect, circ;

/*
Result:

totalsale = 1680
totaljoinery = 1800
totalsanding = 840
totalpolishing = 3840
rect = 9
circ = 4

Therefore 9 rectangular tables and 4 circular tables.
*/
