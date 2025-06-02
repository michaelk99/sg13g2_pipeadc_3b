/*
#######################################################################################
* Title: onehot2binary
*    - Converts a one-hot encoded input vector into its binary index.
#######################################################################################
*/

module onehot2bin #(
    parameter WIDTH = 8  // Width of the one-hot input
)(
    input  wire [WIDTH-1:0]         onehot_i, // One-hot encoded input
    output wire [$clog2(WIDTH)-1:0] binary_o  // Binary output
);

    reg [$clog2(WIDTH)-1:0] binary;
    integer i;

    always @(*) begin
        binary = 0;
        for (i = 0; i < WIDTH; i = i + 1) begin
            if (onehot_i[i])
                binary = i[$clog2(WIDTH)-1:0];
        end
    end

    assign binary_o = binary; 

endmodule
