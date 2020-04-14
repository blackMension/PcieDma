`include "IP_BitSwizzleInclude.v"
function [31:0] byteSwizzle32;
input [31:0] din;
begin
  byteSwizzle32[31:24] = swizzle(din[31:24]);
  byteSwizzle32[23:16] = swizzle(din[23:16]);
  byteSwizzle32[15:8] = swizzle(din[15:8]);
  byteSwizzle32[7:0] = swizzle(din[7:0]);
end
endfunction

