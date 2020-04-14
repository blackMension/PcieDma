function [7:0] swizzle;
input [7:0] din;
begin

  swizzle[0] = din[7];
  swizzle[1] = din[6];
  swizzle[2] = din[5];
  swizzle[3] = din[4];
  swizzle[4] = din[3];
  swizzle[5] = din[2];
  swizzle[6] = din[1];
  swizzle[7] = din[0];
end
endfunction
