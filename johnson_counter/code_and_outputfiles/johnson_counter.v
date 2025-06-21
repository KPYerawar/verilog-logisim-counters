module johnson_counter  (
    input clk , rst ,
    output [3:0 ] out 
);

wire q3 , q2 , q1 , q0 ;
wire q3_bar , q2_bar , q1_bar , q0_bar ;
wire d , set ;
assign d = 1 ;
assign set =  0 ;

d_ff d3 ( .clk(clk ), .rst(rst), .set(set), .d(q0_bar), .q(q3), .q_bar(q3_bar));
d_ff d2 ( .clk(clk ), .rst(rst), .set(set), .d(q3), .q(q2), .q_bar(q2_bar));

d_ff d1 ( .clk(clk ), .rst(rst), .set(set), .d(q2), .q(q1), .q_bar(q1_bar));

d_ff d0 ( .clk(clk ), .rst(rst), .set(set), .d(q1), .q(q0), .q_bar(q0_bar));

assign out = {q3 , q2 , q1 , q0 };

    
endmodule