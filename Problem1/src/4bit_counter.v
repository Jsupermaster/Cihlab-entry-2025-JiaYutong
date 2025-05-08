module counter(
    input       clk,
    input       reset,
    output [3:0] qd
);

reg [3:0] result_r = 4'b0;

always @(posedge clk) begin
    if (reset) begin
        result_r <= 4'd0;
    end
    else begin
        result_r <= result_r + 4'd1;
    end
end

assign qd = result_r;

endmodule