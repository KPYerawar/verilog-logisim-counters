module tb_3_bit_up_counter;

    reg clk;
    reg rst;
    wire [2:0] out;

    three_bit_up_counter uut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("counter.vcd");  
        $dumpvars(0, tb_3_bit_up_counter);

        clk = 0;
        rst = 1;  
        #10;

        rst = 0;  
        #100;

        $finish;  
    end

endmodule
