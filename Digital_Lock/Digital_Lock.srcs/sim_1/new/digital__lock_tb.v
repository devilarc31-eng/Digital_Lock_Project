`timescale 1ns / 1ps

module digital_lock_tb;

    reg clk;
    reg reset;
    reg enter;
    reg [3:0] password;

    wire unlock;
    wire locked;
    wire [1:0] attempts;

    digital_lock uut (
        .clk(clk),
        .reset(reset),
        .enter(enter),
        .password(password),
        .unlock(unlock),
        .locked(locked),
        .attempts(attempts)
    );

    always #5 clk = ~clk;

    initial begin

        clk = 0;
        reset = 1;
        enter = 0;
        password = 4'b0000;

        #20;
        reset = 0;

        // First wrong attempt
        password = 4'b0001;
        enter = 1;
        #10;
        enter = 0;

        #20;

        // Second wrong attempt
        password = 4'b0011;
        enter = 1;
        #10;
        enter = 0;

        #20;

        // Third wrong attempt
        password = 4'b0111;
        enter = 1;
        #10;
        enter = 0;

        #20;

        // Correct password
        password = 4'b1010;
        enter = 1;
        #10;
        enter = 0;

        #30;

        $finish;

    end

endmodule