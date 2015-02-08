/* objective */
minimise: totalcost;

/* mix requirements */
orange >= 100; /* 20% of 500L */
grape >= 50; /* 10% of 500L */
cranberry >= 25; /* 5% of 500L */

orange = 0.4a + 0.05b + c;
grape = 0.4a + 0.1b + d;
cranberry = 0.2b;

/* stock */
a <= 200;
b <= 400;
c <= 100;
d <= 50;
e <= 800;

/* total production */
a + b + c + d + e = 500;

/* total cost */
totalcost = 1.5a + 0.75b + 2c + 1.75d + 0.25e;

/*
Result:

totalcost     403.125

orange        100.00
grape          50.00
cranberry      25.00

a              93.75
b             125.00
c              56.25
d               0.00
e             225.00

Therefore 93.75L of drink A, 125L of drink B,
56.25L of drink C and 225L of drink E.
*/
