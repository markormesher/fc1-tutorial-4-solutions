/* objective */
minimise: totalcost;

/* production capacity */
madeAtA <= 7500;
madeAtB <= 10000;
madeAtC <= 8100;

/* directions */
madeAtA = fromAtoI + fromAtoII + fromAtoIII + fromAtoIV;
madeAtB = fromBtoI + fromBtoII + fromBtoIII + fromBtoIV;
madeAtC = fromCtoI + fromCtoII + fromCtoIII + fromCtoIV;

soldToI = fromAtoI + fromBtoI + fromCtoI;
soldToII = fromAtoII + fromBtoII + fromCtoII;
soldToIII = fromAtoIII + fromBtoIII + fromCtoIII;
soldToIV = fromAtoIV + fromBtoIV + fromCtoIV;

/* demand */
soldToI = 4200;
soldToII = 8300;
soldToIII = 6300;
soldToIV = 2700;

/* production cost */
plantACosts = 1.10madeAtA;
plantBCosts = 0.95madeAtB;
plantCCosts = 1.03madeAtC;

/* shipping costs*/
shippingACosts = 0.11fromAtoI + 0.13fromAtoII + 0.09fromAtoIII + 0.19fromAtoIV;
shippingBCosts = 0.12fromBtoI + 0.16fromBtoII + 0.10fromBtoIII + 0.13fromBtoIV;
shippingCCosts = 0.14fromCtoI + 0.12fromCtoII + 0.12fromCtoIII + 0.15fromCtoIV;

/* total cost */
totalcost = plantACosts + plantBCosts + plantCCosts + shippingACosts + shippingBCosts + shippingCCosts;

/* variable types */
int madeAtA, madeAtB, madeAtC, fromAtoI, fromAtoII, fromAtoIII, fromAtoIV;

/*
Result:

totalcost                   24034

madeAtA                      3400
madeAtB                     10000
madeAtC                      8100

fromAtoI                        0
fromAtoII                     200
fromAtoIII                   3200
fromAtoIV                       0

fromBtoI                     4200
fromBtoII                       0
fromBtoIII                   3100
fromBtoIV                    2700

fromCtoI                        0
fromCtoII                    8100
fromCtoIII                      0
fromCtoIV                       0

soldToI                      4200
soldToII                     8300
soldToIII                    6300
soldToIV                     2700

plantACosts                  3740
plantBCosts                  9500
plantCCosts                  8343

shippingACosts                314
shippingBCosts               1165
shippingCCosts                972

Schedule:
   |  I   | II   | III  | IV
---|------|------|------|------
 A |    0 |  200 | 3200 |    0
 B | 4200 |    0 | 3100 | 2700
 C |    0 | 8100 |    0 |    0
*/
