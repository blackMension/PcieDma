//------------------------------------------------------------------------
// Generated By Pseudo-random Test Sequence Generator 1.0 , Yuan-Bohu 2012
//------------------------------------------------------------------------
// POLY       : x^16 + x^12 + x^3 + x + 1
// DATA_WIDTH : 16
//------------------------------------------------------------------------

module IP_Prbs16 (
    input  wire clk,
    input  wire rst_n,
    input  wire pn_en,
    output reg  pn_valid,
    output reg  [15:0] pn_data
);
    reg [15:0] p;

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n)
            pn_valid <= 1'b0;
        else
            pn_valid <= pn_en;
    end

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n)
            p <= 16'b1;
        else if (pn_en) begin
            p[15] <= p[0]^p[11]^p[15]^p[2];
            p[14] <= p[0]^p[10]^p[11]^p[14]^p[15]^p[1]^p[2];
            p[13] <= p[10]^p[11]^p[13]^p[14]^p[15]^p[1]^p[2]^p[9];
            p[12] <= p[0]^p[10]^p[12]^p[13]^p[14]^p[1]^p[8]^p[9];
            p[11] <= p[12]^p[13]^p[15]^p[2]^p[7]^p[8]^p[9];
            p[10] <= p[11]^p[12]^p[14]^p[1]^p[6]^p[7]^p[8];
            p[9] <= p[0]^p[10]^p[11]^p[13]^p[5]^p[6]^p[7];
            p[8] <= p[0]^p[10]^p[11]^p[12]^p[15]^p[2]^p[4]^p[5]^p[6]^p[9];
            p[7] <= p[0]^p[10]^p[14]^p[15]^p[1]^p[2]^p[3]^p[4]^p[5]^p[8]^p[9];
            p[6] <= p[11]^p[13]^p[14]^p[15]^p[1]^p[3]^p[4]^p[7]^p[8]^p[9];
            p[5] <= p[0]^p[10]^p[12]^p[13]^p[14]^p[2]^p[3]^p[6]^p[7]^p[8];
            p[4] <= p[0]^p[12]^p[13]^p[15]^p[1]^p[5]^p[6]^p[7]^p[9];
            p[3] <= p[12]^p[14]^p[15]^p[2]^p[4]^p[5]^p[6]^p[8];
            p[2] <= p[11]^p[13]^p[14]^p[1]^p[3]^p[4]^p[5]^p[7];
            p[1] <= p[0]^p[10]^p[12]^p[13]^p[2]^p[3]^p[4]^p[6];
            p[0] <= p[0]^p[12]^p[15]^p[1]^p[3]^p[5]^p[9];
        end
    end

    always @(posedge clk, negedge rst_n) begin
        if (!rst_n)
            pn_data <= {16{1'b1}};
        else if (pn_en) begin
            pn_data[15] <= !( p[15] );
            pn_data[14] <= !( p[14] );
            pn_data[13] <= !( p[13] );
            pn_data[12] <= !( p[12] );
            pn_data[11] <= !( p[11] );
            pn_data[10] <= !( p[10] );
            pn_data[9] <= !( p[9] );
            pn_data[8] <= !( p[8] );
            pn_data[7] <= !( p[7] );
            pn_data[6] <= !( p[6] );
            pn_data[5] <= !( p[5] );
            pn_data[4] <= !( p[4] );
            pn_data[3] <= !( p[3] );
            pn_data[2] <= !( p[2] );
            pn_data[1] <= !( p[1] );
            pn_data[0] <= !( p[0] );
        end
    end

endmodule
