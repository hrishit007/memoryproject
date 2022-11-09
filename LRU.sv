module LRU
#(
   input reg hitmiss,
   input reg[13:0] tagArrayInCache [7:0] [3:0];
   input integer set,
   input reg[4:0] tag,
   output reg[4:0] tagout,
);

integer counter[7:0][3:0];
integer missmaxcount=-1;
integer position=-1;
for(integer i=0;i<=3;i=i+1)
begin
   if(tagArrayInCache[set][i]==tag && hitmiss==1'b1)
   begin
      counter[set][i]=0;
   end
   else begin
      counter[set][i]=counter[set][i]+1;
      
   end
   if(hitmiss=1'b0)
   begin
     counter[set][i]=counter[set][i]+1;
     if(missmaxcount<counter[set][i])
     begin
     missmaxcount=counter[set][i];
     position=i;
     end
   end
end
if(position>0)begin
   //update in Memory
end
endmodule