template Num2Bits(n) {
    signal input in;
    signal output out;
    signal bits[n];
    var lc1=0;

    for (var i = 0; i<n; i++) {
        bits[i] <-- (in >> i) & 1;
        bits[i] * (bits[i] -1 ) === 0;
        lc1 += bits[i] * 2**i;
    }

    lc1 === in;
    out <== in * 2;
}

component main = Num2Bits(8);