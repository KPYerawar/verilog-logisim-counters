module tb_ring;
    reg clk, rst, set3;
    wire [3:0] out;

    ring_counter_4_bit uut (
        .clk(clk),
        .rst(rst),
        .set3(set3),
        .out(out)
    );

    always #10 clk = ~clk;

    initial begin
        $dumpfile("ring.vcd");
        $dumpvars(0, tb_ring);

        clk = 0;
        rst = 1;
        set3 = 0;
        #30;

        rst = 0;     
        #10;

        set3 = 1;    
        #10;

        set3 = 0;    
        #100;

        $finish;
    end
endmodule
