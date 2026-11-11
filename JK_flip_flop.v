module JK_flip_flop(
input J,
input K,
input clock,
output reg Q,
output reg Qnot
);

wire D = (~K & Q) | (J & Qnot);

initial begin
Q <= 0;
Qnot <= 1;
end

always @(posedge clock) begin
Q <= D;
Qnot <= ~D;
end

endmodule
