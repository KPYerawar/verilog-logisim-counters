

module tb_johnson_counter;
reg clk;
reg rst;
wire [3:0]out ;
 johnson_counter uut
(
    .rst (rst),
    .clk (clk),
    .out(out)
);
always #10 clk = ~clk;


initial begin
    $dumpfile("tb_johnson_output.vcd");
    $dumpvars(0, tb_johnson_counter);
    rst = 1 ;
    clk = 0 ;
    #20 ;
    rst = 0;
    #200;
    $finish;

end

endmodule
