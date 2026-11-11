module T_flip_flop(
    input T,
    input D,
    input clock,
    output reg Q, 
    output Qnot
);

assign D = (~T & Q) | (T & ~Q);
assign Qnot = ~Q;

initial begin
Q <= 0;
end

always @(posedge clock) begin
Q <= D;
end

endmodule