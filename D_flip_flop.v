module D_flip_flop(
input D,
input clock,
output reg Q,
output Qnot
);

assign Qnot = ~Q;
initial begin
Q <= 0;
end

always @(posedge clock) begin
Q <= D;
end

endmodule