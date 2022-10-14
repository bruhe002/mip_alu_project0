`timescale 1ns/1ns
`include "TrafficLite.v"

module TrafficLite_tb;

reg EWCar;
reg NSCar;
reg clock;
wire [2:0] EWLite;
wire [2:0] NSLite;

TrafficLite tb(EWCar, NSCar, EWLite, NSLite, clock);


initial begin
    $dumpfile("TrafficLite_tb.vcd");
    $dumpvars(0, TrafficLite_tb);

    

    $display("Test Complete");
end

endmodule