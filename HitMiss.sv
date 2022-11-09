module HitMiss
#(
reg[6:0] tagArrayInCache [7:0] [3:0],
)
(
input reg[11:0] memoryAddress,
output reg hitmiss, empty,hittag;
);
initial begin
  reg[4:0] tagNumber;
  tagNumber=memoryAddress[11:7];
  reg[4:0] hittag;
  integer set_number=memoryAddress[6]*4+memoryAddress[5]*2+memoryAddress[4];

  hitmiss=1'b0;  
  for(integer i=3;i>=0;i=i-1) begin
    if((tagNumber==tagArrayInCache[set_number][i] [4:0]) && (tagArrayInCache[set_number][i] [6]==1'b1)) begin
      hitmiss=1'b1;
      hittag=tagArrayInCache[set_number][i];//may be redundant
    end
    if(tagArrayInCache[set_number][i]==1'b0) begin
      empty=i;
    end
  end
end
endmodule