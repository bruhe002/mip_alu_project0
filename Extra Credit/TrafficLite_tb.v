`timescale 1ns / 1ns
`include "TrafficLite.v"

module TrafficLite_tb;

reg EWCar;
reg NSCar;
reg clock;
wire EWLite;
wire NSLite;

TrafficLite uut(EWCar, NSCar, EWLite, NSLite, clock);


initial begin
    $dumpfile("TrafficLite_tb.vcd");
    $dumpvars(0, TrafficLite_tb);

    // Clock 1
    EWCar = 0;
    NSCar = 0;
    clock = 0;
    #10

    // Clock 2
    EWCar = 0;
    NSCar = 0;
    clock = 1;
    #10

    // Clock 3
    EWCar = 1;
    NSCar = 0;
    clock = 0;
    #10
    
    // Clock 4
    EWCar = 1;
    NSCar = 0;
    clock = 1;
    #10

    // Clock 5
    EWCar = 1;
    NSCar = 1;
    clock = 0;
    #10

    // Clock 6
    EWCar = 1;
    NSCar = 1;
    clock = 1;
    #10

    // Clock 7
    EWCar = 0;
    NSCar = 1;
    clock = 0;
    #10
    
    // Clock 8
    EWCar = 0;
    NSCar = 1;
    clock = 1;
    #10

    // Clock 9
    EWCar = 0;
    NSCar = 0;
    clock = 0;
    #10

    // Clock 10
    EWCar = 0;
    NSCar = 0;
    clock = 1;
    #10

    // Clock 11
    EWCar = 1;
    NSCar = 0;
    clock = 0;
    #10
    
    // Clock 12
    EWCar = 1;
    NSCar = 0;
    clock = 1;
    #10
    
    // Clock 12
    EWCar = 1;
    NSCar = 0;
    clock = 0;
    #10
    
    $display("Test Complete");
end

endmodule