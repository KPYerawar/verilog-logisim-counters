module three_bit_up_counter(
   input clk ,
   input rst ,
   output [2:0] out 
);
wire q0 , q1 , q2;
wire q0_bar , q1_bar , q2_bar;  
wire j , k , set;
assign j = 1'b1;
assign k = 1'b1;
assign set = 1'b0;

jk_ff ff2 ( .j(j) , .k(k) , .rst(rst) , .set(set) , .clk(clk) , .q(q2) , .q_bar(q2_bar));
jk_ff ff1 ( .j(j) , .k(k) , .rst(rst) , .set(set) , .clk ( q2_bar) , .q(q1) , .q_bar(q1_bar));
jk_ff ff0 ( .j(j) , .k(k) , .rst(rst) , .set(set) , .clk ( q1_bar) , .q(q0) , .q_bar(q0_bar));

assign out = {q2 , q1 , q0};
endmodule