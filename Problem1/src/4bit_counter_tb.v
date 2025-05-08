`timescale 1ns/1ps
module counter_tb();

reg                   clk       ;
reg                   reset     ;
wire   [3:0]          qd        ;

counter counter_test(
    .clk            (clk    ),
    .reset          (reset ),
    .qd             (qd     )        
);

initial begin
    clk = 1'b0      ;
    reset = 1'b1    ;
    repeat(2) @(posedge clk) reset <= 1'b1;
    repeat(2) @(posedge clk) reset <= 1'b0;
    repeat(12) @(posedge clk) reset <= 1'b1;
    repeat(2) @(posedge clk) reset <= 1'b0;
end

always #10 clk = ~clk;


endmodule
