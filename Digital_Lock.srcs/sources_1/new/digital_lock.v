module digital_lock #(
    parameter PASSWORD = 4'b1010
)(
    input  wire       clk,
    input  wire       reset,
    input  wire       enter,
    input  wire [3:0] password,

    output reg        unlock,
    output reg        locked,
    output reg [1:0]  attempts
);

    // FSM states
    localparam IDLE    = 3'b000;
    localparam CHECK   = 3'b001;
    localparam SUCCESS = 3'b010;
    localparam FAIL    = 3'b011;
    localparam LOCKED  = 3'b100;

    reg [2:0] state;
    reg [2:0] next_state;

    // State and failed-attempt counter
    always @(posedge clk or posedge reset) begin

        if (reset) begin
            state    <= IDLE;
            attempts <= 2'b00;
        end

        else begin
            state <= next_state;

            // Correct password resets consecutive failures
            if (state == SUCCESS) begin
                attempts <= 2'b00;
            end

            // Increase failed-attempt counter
            else if (state == FAIL) begin
                if (attempts < 2'b11)
                    attempts <= attempts + 1'b1;
            end
        end
    end

    // Next-state logic
    always @(*) begin

        next_state = state;

        case (state)

            // Waiting for ENTER
            IDLE: begin
                if (enter)
                    next_state = CHECK;
            end

            // Compare password
            CHECK: begin

                if (password == PASSWORD)
                    next_state = SUCCESS;

                else if (attempts == 2'b10)
                    next_state = LOCKED;

                else
                    next_state = FAIL;

            end

            // Correct password
            SUCCESS: begin
                next_state = IDLE;
            end

            // Incorrect password
            FAIL: begin
                next_state = IDLE;
            end

            // Three failed attempts
            LOCKED: begin
                next_state = LOCKED;
            end

            default: begin
                next_state = IDLE;
            end

        endcase
    end

    // Output logic
    always @(*) begin

        unlock = 1'b0;
        locked = 1'b0;

        case (state)

            SUCCESS: begin
                unlock = 1'b1;
            end

            LOCKED: begin
                locked = 1'b1;
            end

            default: begin
                unlock = 1'b0;
                locked = 1'b0;
            end

        endcase

    end

endmodule