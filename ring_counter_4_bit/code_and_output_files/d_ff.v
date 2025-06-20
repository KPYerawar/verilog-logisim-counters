module d_ff(
    input d, clk, set, rst,
    output reg q,
    output q_bar
);

always @(posedge clk or posedge rst or posedge set) begin
    if (rst)
        q <= 0;
    else if (set)
        q <= 1;
    else
        q <= d;
end

assign q_bar = ~q;

endmodule
