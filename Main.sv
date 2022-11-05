

//for read


if(hitmiss==1'b1) begin
    integer a=//convert bit 6-4 to decimal
    integer b=//convert way to decimal
    integer c=//convert offset to decimal 
    data <= dataInCache[a][b][c];
end

else begin
    //in this case, we will replace a block
    //checking if dirty bit is 1
    integer a=//convert bit 6-4 to decimal
    integer b=//convert way to decimal
    reg[13:0] temp=tagArrayInCache[a][b]; //check if the bit at postion 12 is 1
    if(temp[12]==1'b1) begin //dirty bit is set
        integer a=//convert bit 6-4 to decimal
        integer b=//convert way to decimal
        integer[15:0] block;
        //get the block
        for(integer i=0;i<16;i++){
            block[i]=dataInCache[a][b][i];
        }
        integer amem= //convert 11-4 bit of address to integer
        Memory[amem]=//update the block in memory
    end
    

