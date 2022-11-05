module DataMem
(
    // input
    // output
);

integer Memory[255:0] [15:0];

initial begin
    for(integer i=0; i<256; i=i+1) begin
        for(integer j=0; j<16;j++) begin
            memory[i][j] <= 0;
        end
    end
end