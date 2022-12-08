// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// Register Top module auto-generated by `reggen`


`include "common_cells/assertions.svh"

module padframe_xheep_config_reg_top #(
    parameter type reg_req_t = logic,
    parameter type reg_rsp_t = logic,
    parameter int AW = 5
) (
    input clk_i,
    input rst_ni,
    input reg_req_t reg_req_i,
    output reg_rsp_t reg_rsp_o,
    // To HW
    output padframe_xheep_config_reg_pkg::padframe_xheep_config_reg2hw_t reg2hw,  // Write


    // Config
    input devmode_i  // If 1, explicit error return for unmapped register access
);

  import padframe_xheep_config_reg_pkg::*;

  localparam int DW = 32;
  localparam int DBW = DW / 8;  // Byte Width

  // register signals
  logic           reg_we;
  logic           reg_re;
  logic [ AW-1:0] reg_addr;
  logic [ DW-1:0] reg_wdata;
  logic [DBW-1:0] reg_be;
  logic [ DW-1:0] reg_rdata;
  logic           reg_error;

  logic addrmiss, wr_err;

  logic [DW-1:0] reg_rdata_next;

  // Below register interface can be changed
  reg_req_t reg_intf_req;
  reg_rsp_t reg_intf_rsp;


  assign reg_intf_req = reg_req_i;
  assign reg_rsp_o = reg_intf_rsp;


  assign reg_we = reg_intf_req.valid & reg_intf_req.write;
  assign reg_re = reg_intf_req.valid & ~reg_intf_req.write;
  assign reg_addr = reg_intf_req.addr;
  assign reg_wdata = reg_intf_req.wdata;
  assign reg_be = reg_intf_req.wstrb;
  assign reg_intf_rsp.rdata = reg_rdata;
  assign reg_intf_rsp.error = reg_error;
  assign reg_intf_rsp.ready = 1'b1;

  assign reg_rdata = reg_rdata_next;
  assign reg_error = (devmode_i & addrmiss) | wr_err;


  // Define SW related signals
  // Format: <reg>_<field>_{wd|we|qs}
  //        or <reg>_{wd|we|qs} if field == 1 or 0
  logic [15:0] info_hw_version_qs;
  logic [15:0] info_padcount_qs;
  logic pad_io_30_cfg_chip2pad_qs;
  logic pad_io_30_cfg_chip2pad_wd;
  logic pad_io_30_cfg_chip2pad_we;
  logic pad_io_30_cfg_output_en_qs;
  logic pad_io_30_cfg_output_en_wd;
  logic pad_io_30_cfg_output_en_we;
  logic [1:0] pad_io_30_mux_sel_qs;
  logic [1:0] pad_io_30_mux_sel_wd;
  logic pad_io_30_mux_sel_we;
  logic pad_io_31_cfg_chip2pad_qs;
  logic pad_io_31_cfg_chip2pad_wd;
  logic pad_io_31_cfg_chip2pad_we;
  logic pad_io_31_cfg_output_en_qs;
  logic pad_io_31_cfg_output_en_wd;
  logic pad_io_31_cfg_output_en_we;
  logic [1:0] pad_io_31_mux_sel_qs;
  logic [1:0] pad_io_31_mux_sel_wd;
  logic pad_io_31_mux_sel_we;

  // Register instances
  // R[info]: V(False)

  //   F[hw_version]: 15:0
  prim_subreg #(
      .DW      (16),
      .SWACCESS("RO"),
      .RESVAL  (16'h2)
  ) u_info_hw_version (
      .clk_i (clk_i),
      .rst_ni(rst_ni),

      .we(1'b0),
      .wd('0),

      // from internal hardware
      .de(1'b0),
      .d ('0),

      // to internal hardware
      .qe(),
      .q (reg2hw.info.hw_version.q),

      // to register interface (read)
      .qs(info_hw_version_qs)
  );


  //   F[padcount]: 31:16
  prim_subreg #(
      .DW      (16),
      .SWACCESS("RO"),
      .RESVAL  (16'h2)
  ) u_info_padcount (
      .clk_i (clk_i),
      .rst_ni(rst_ni),

      .we(1'b0),
      .wd('0),

      // from internal hardware
      .de(1'b0),
      .d ('0),

      // to internal hardware
      .qe(),
      .q (reg2hw.info.padcount.q),

      // to register interface (read)
      .qs(info_padcount_qs)
  );


  // R[pad_io_30_cfg]: V(False)

  //   F[chip2pad]: 0:0
  prim_subreg #(
      .DW      (1),
      .SWACCESS("RW"),
      .RESVAL  (1'h0)
  ) u_pad_io_30_cfg_chip2pad (
      .clk_i (clk_i),
      .rst_ni(rst_ni),

      // from register interface
      .we(pad_io_30_cfg_chip2pad_we),
      .wd(pad_io_30_cfg_chip2pad_wd),

      // from internal hardware
      .de(1'b0),
      .d ('0),

      // to internal hardware
      .qe(),
      .q (reg2hw.pad_io_30_cfg.chip2pad.q),

      // to register interface (read)
      .qs(pad_io_30_cfg_chip2pad_qs)
  );


  //   F[output_en]: 1:1
  prim_subreg #(
      .DW      (1),
      .SWACCESS("RW"),
      .RESVAL  (1'h0)
  ) u_pad_io_30_cfg_output_en (
      .clk_i (clk_i),
      .rst_ni(rst_ni),

      // from register interface
      .we(pad_io_30_cfg_output_en_we),
      .wd(pad_io_30_cfg_output_en_wd),

      // from internal hardware
      .de(1'b0),
      .d ('0),

      // to internal hardware
      .qe(),
      .q (reg2hw.pad_io_30_cfg.output_en.q),

      // to register interface (read)
      .qs(pad_io_30_cfg_output_en_qs)
  );


  // R[pad_io_30_mux_sel]: V(False)

  prim_subreg #(
      .DW      (2),
      .SWACCESS("RW"),
      .RESVAL  (2'h2)
  ) u_pad_io_30_mux_sel (
      .clk_i (clk_i),
      .rst_ni(rst_ni),

      // from register interface
      .we(pad_io_30_mux_sel_we),
      .wd(pad_io_30_mux_sel_wd),

      // from internal hardware
      .de(1'b0),
      .d ('0),

      // to internal hardware
      .qe(),
      .q (reg2hw.pad_io_30_mux_sel.q),

      // to register interface (read)
      .qs(pad_io_30_mux_sel_qs)
  );


  // R[pad_io_31_cfg]: V(False)

  //   F[chip2pad]: 0:0
  prim_subreg #(
      .DW      (1),
      .SWACCESS("RW"),
      .RESVAL  (1'h0)
  ) u_pad_io_31_cfg_chip2pad (
      .clk_i (clk_i),
      .rst_ni(rst_ni),

      // from register interface
      .we(pad_io_31_cfg_chip2pad_we),
      .wd(pad_io_31_cfg_chip2pad_wd),

      // from internal hardware
      .de(1'b0),
      .d ('0),

      // to internal hardware
      .qe(),
      .q (reg2hw.pad_io_31_cfg.chip2pad.q),

      // to register interface (read)
      .qs(pad_io_31_cfg_chip2pad_qs)
  );


  //   F[output_en]: 1:1
  prim_subreg #(
      .DW      (1),
      .SWACCESS("RW"),
      .RESVAL  (1'h0)
  ) u_pad_io_31_cfg_output_en (
      .clk_i (clk_i),
      .rst_ni(rst_ni),

      // from register interface
      .we(pad_io_31_cfg_output_en_we),
      .wd(pad_io_31_cfg_output_en_wd),

      // from internal hardware
      .de(1'b0),
      .d ('0),

      // to internal hardware
      .qe(),
      .q (reg2hw.pad_io_31_cfg.output_en.q),

      // to register interface (read)
      .qs(pad_io_31_cfg_output_en_qs)
  );


  // R[pad_io_31_mux_sel]: V(False)

  prim_subreg #(
      .DW      (2),
      .SWACCESS("RW"),
      .RESVAL  (2'h2)
  ) u_pad_io_31_mux_sel (
      .clk_i (clk_i),
      .rst_ni(rst_ni),

      // from register interface
      .we(pad_io_31_mux_sel_we),
      .wd(pad_io_31_mux_sel_wd),

      // from internal hardware
      .de(1'b0),
      .d ('0),

      // to internal hardware
      .qe(),
      .q (reg2hw.pad_io_31_mux_sel.q),

      // to register interface (read)
      .qs(pad_io_31_mux_sel_qs)
  );




  logic [4:0] addr_hit;
  always_comb begin
    addr_hit = '0;
    addr_hit[0] = (reg_addr == PADFRAME_XHEEP_CONFIG_INFO_OFFSET);
    addr_hit[1] = (reg_addr == PADFRAME_XHEEP_CONFIG_PAD_IO_30_CFG_OFFSET);
    addr_hit[2] = (reg_addr == PADFRAME_XHEEP_CONFIG_PAD_IO_30_MUX_SEL_OFFSET);
    addr_hit[3] = (reg_addr == PADFRAME_XHEEP_CONFIG_PAD_IO_31_CFG_OFFSET);
    addr_hit[4] = (reg_addr == PADFRAME_XHEEP_CONFIG_PAD_IO_31_MUX_SEL_OFFSET);
  end

  assign addrmiss = (reg_re || reg_we) ? ~|addr_hit : 1'b0;

  // Check sub-word write is permitted
  always_comb begin
    wr_err = (reg_we &
              ((addr_hit[0] & (|(PADFRAME_XHEEP_CONFIG_PERMIT[0] & ~reg_be))) |
               (addr_hit[1] & (|(PADFRAME_XHEEP_CONFIG_PERMIT[1] & ~reg_be))) |
               (addr_hit[2] & (|(PADFRAME_XHEEP_CONFIG_PERMIT[2] & ~reg_be))) |
               (addr_hit[3] & (|(PADFRAME_XHEEP_CONFIG_PERMIT[3] & ~reg_be))) |
               (addr_hit[4] & (|(PADFRAME_XHEEP_CONFIG_PERMIT[4] & ~reg_be)))));
  end

  assign pad_io_30_cfg_chip2pad_we = addr_hit[1] & reg_we & !reg_error;
  assign pad_io_30_cfg_chip2pad_wd = reg_wdata[0];

  assign pad_io_30_cfg_output_en_we = addr_hit[1] & reg_we & !reg_error;
  assign pad_io_30_cfg_output_en_wd = reg_wdata[1];

  assign pad_io_30_mux_sel_we = addr_hit[2] & reg_we & !reg_error;
  assign pad_io_30_mux_sel_wd = reg_wdata[1:0];

  assign pad_io_31_cfg_chip2pad_we = addr_hit[3] & reg_we & !reg_error;
  assign pad_io_31_cfg_chip2pad_wd = reg_wdata[0];

  assign pad_io_31_cfg_output_en_we = addr_hit[3] & reg_we & !reg_error;
  assign pad_io_31_cfg_output_en_wd = reg_wdata[1];

  assign pad_io_31_mux_sel_we = addr_hit[4] & reg_we & !reg_error;
  assign pad_io_31_mux_sel_wd = reg_wdata[1:0];

  // Read data return
  always_comb begin
    reg_rdata_next = '0;
    unique case (1'b1)
      addr_hit[0]: begin
        reg_rdata_next[15:0]  = info_hw_version_qs;
        reg_rdata_next[31:16] = info_padcount_qs;
      end

      addr_hit[1]: begin
        reg_rdata_next[0] = pad_io_30_cfg_chip2pad_qs;
        reg_rdata_next[1] = pad_io_30_cfg_output_en_qs;
      end

      addr_hit[2]: begin
        reg_rdata_next[1:0] = pad_io_30_mux_sel_qs;
      end

      addr_hit[3]: begin
        reg_rdata_next[0] = pad_io_31_cfg_chip2pad_qs;
        reg_rdata_next[1] = pad_io_31_cfg_output_en_qs;
      end

      addr_hit[4]: begin
        reg_rdata_next[1:0] = pad_io_31_mux_sel_qs;
      end

      default: begin
        reg_rdata_next = '1;
      end
    endcase
  end

  // Unused signal tieoff

  // wdata / byte enable are not always fully used
  // add a blanket unused statement to handle lint waivers
  logic unused_wdata;
  logic unused_be;
  assign unused_wdata = ^reg_wdata;
  assign unused_be = ^reg_be;

  // Assertions for Register Interface
  `ASSERT(en2addrHit, (reg_we || reg_re) |-> $onehot0(addr_hit))

endmodule