module led_blink(input wire clk,
output reg led);
reg [28:0] counter=0;

always@(posedge clk)begin
    counter<= counter + 1;
        if(counter == 100_000_000) begin
            counter<=0;
             led<=~led;//led toggle in  every 1sec
        end
end
endmodule
