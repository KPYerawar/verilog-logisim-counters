module ring_counter_4_bit (
    input clk, rst,
    input set3,  
    output [3:0] out
);

wire q3, q2, q1, q0;
wire q3_bar, q2_bar, q1_bar, q0_bar;

wire set0 = 1'b0;
wire set1 = 1'b0;
wire set2 = 1'b0;

d_ff d0 (.d(q3), .clk(clk), .rst(rst), .set(set0), .q(q0), .q_bar(q0_bar));
d_ff d1 (.d(q0), .clk(clk), .rst(rst), .set(set1), .q(q1), .q_bar(q1_bar));
d_ff d2 (.d(q1), .clk(clk), .rst(rst), .set(set2), .q(q2), .q_bar(q2_bar));
d_ff d3 (.d(q2), .clk(clk), .rst(rst), .set(set3), .q(q3), .q_bar(q3_bar));

assign out = {q3, q2, q1, q0};

endmodule
