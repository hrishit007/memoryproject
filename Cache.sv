reg[13:0] tagArrayInCache [7:0] [3:0]; //12 bits for address + 1 dirty bit(12) + 1 valid bit(13)
// 8 rows for sets 4 columns for ways(each tag size is 14 bits(12+1+1)) 
integer dataInCache [7:0] [3:0] [15:0];
// 8 rows for sets 4 columns for ways and 16 for block size, so 16 bytes(integer)

initial begin
    for(integer i=0; i<8; i=i+1) begin
        for(integer j=0; j<4;j++) begin
            tagArrayInCache[i][j]=>14'b0;
        end
    end
end