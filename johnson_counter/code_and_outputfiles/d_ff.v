module d_ff(
    input d , clk , rst , set ,
    output reg q ,
    output q_bar 
);

always @ (posedge clk or posedge rst or posedge set )
begin 
    if (rst )begin 
        q <= 0 ;
    end 
    else if (set )
    begin 
        q<=0;
    end
    else begin 
        q <= d;
    end
end

assign q_bar = ~q;
endmodule 
