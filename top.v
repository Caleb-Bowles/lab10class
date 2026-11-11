module top(
input [3:0] sw,
input btnC,
output [5:0] led
);

    D_flip_flop Part1(
        .D(sw[0]),
        .clock(btnC),
        .Q(led[0]),
        .Qnot(led[1])
    );

    JK_flip_flop Part2(
        .J(sw[1]),
        .K(sw[2]),
        .clock(btnC),
        .Q(led[2]),
        .Qnot(led[3])
    );

    T_flip_flop Part3(
        .T(sw[3]),
        .clock(btnC),
        .Q(led[4]),
        .Qnot(led[5])
    );

    endmodule
