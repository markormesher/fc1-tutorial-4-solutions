/* objective */
min: totalcost;

/* fat restriction */
0.2goodmeat + 0.32cheapmeat <= 0.25;

/* total cost */
totalcost = 0.8goodmeat + 0.6cheapmeat;

/* force something to be produced */
goodmeat + cheapmeat = 1;

/*
Result:

totalcost   0.716667
goodmeat    0.583333
cheapmeat   0.416667

Therefore 58.33% good meat, 41.67% cheap meat.
*/
