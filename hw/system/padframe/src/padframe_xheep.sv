// File auto-generated by Padrick 0.3.1.post0.dev2+ge09286c
module padframe_xheep
  import pkg_padframe::*;
  import pkg_internal_padframe_xheep::*;
#(
  parameter type              req_t  = logic, // reg_interface request type
  parameter type             resp_t  = logic // reg_interface response type
) (
  input logic clk_i,
  input logic rst_ni,
  output pad_domain_xheep_static_connection_signals_pad2soc_t static_connection_signals_pad2soc,
  input pad_domain_xheep_static_connection_signals_soc2pad_t static_connection_signals_soc2pad,
  output pad_domain_xheep_ports_pad2soc_t port_signals_pad2soc_o,
  input pad_domain_xheep_ports_soc2pad_t port_signals_soc2pad_i,
  inout wire logic pad_pad_clk_pad,
  inout wire logic pad_pad_rst_pad,
  inout wire logic pad_pad_boot_select_pad,
  inout wire logic pad_pad_execute_from_flash_pad,
  inout wire logic pad_pad_jtag_tck_pad,
  inout wire logic pad_pad_jtag_tms_pad,
  inout wire logic pad_pad_jtag_trst_pad,
  inout wire logic pad_pad_jtag_tdi_pad,
  inout wire logic pad_pad_jtag_tdo_pad,
  inout wire logic pad_pad_exit_valid_pad,
  inout wire logic pad_pad_uart_rx_pad,
  inout wire logic pad_pad_uart_tx_pad,
  inout wire logic pad_pad_gpio_00_i_pad,
  inout wire logic pad_pad_gpio_01_i_pad,
  inout wire logic pad_pad_gpio_02_i_pad,
  inout wire logic pad_pad_gpio_03_i_pad,
  inout wire logic pad_pad_gpio_04_i_pad,
  inout wire logic pad_pad_gpio_05_i_pad,
  inout wire logic pad_pad_gpio_06_i_pad,
  inout wire logic pad_pad_gpio_07_i_pad,
  inout wire logic pad_pad_gpio_08_i_pad,
  inout wire logic pad_pad_gpio_09_i_pad,
  inout wire logic pad_pad_gpio_10_i_pad,
  inout wire logic pad_pad_gpio_11_i_pad,
  inout wire logic pad_pad_gpio_12_i_pad,
  inout wire logic pad_pad_gpio_13_i_pad,
  inout wire logic pad_pad_gpio_14_i_pad,
  inout wire logic pad_pad_gpio_15_i_pad,
  inout wire logic pad_pad_gpio_16_i_pad,
  inout wire logic pad_pad_gpio_17_i_pad,
  inout wire logic pad_pad_gpio_18_i_pad,
  inout wire logic pad_pad_gpio_19_i_pad,
  inout wire logic pad_pad_gpio_20_i_pad,
  inout wire logic pad_pad_gpio_21_i_pad,
  inout wire logic pad_pad_gpio_22_i_pad,
  inout wire logic pad_pad_spi_flash_sck_pad,
  inout wire logic pad_pad_spi_flash_cs_00_pad,
  inout wire logic pad_pad_spi_flash_cs_01_pad,
  inout wire logic pad_pad_spi_flash_sd_00_pad,
  inout wire logic pad_pad_spi_flash_sd_01_pad,
  inout wire logic pad_pad_spi_flash_sd_02_pad,
  inout wire logic pad_pad_spi_flash_sd_03_pad,
  inout wire logic pad_pad_spi_sck_pad,
  inout wire logic pad_pad_spi_cs_00_pad,
  inout wire logic pad_pad_spi_cs_01_pad,
  inout wire logic pad_pad_spi_sd_00_pad,
  inout wire logic pad_pad_spi_sd_01_pad,
  inout wire logic pad_pad_spi_sd_02_pad,
  inout wire logic pad_pad_spi_sd_03_pad,
  inout wire logic pad_pad_io_23_pad,
  inout wire logic pad_pad_io_24_pad,
  inout wire logic pad_pad_io_25_pad,
  inout wire logic pad_pad_io_26_pad,
  inout wire logic pad_pad_io_27_pad,
  inout wire logic pad_pad_io_28_pad,
  inout wire logic pad_pad_io_29_pad,
  inout wire logic pad_pad_io_30_pad,
  inout wire logic pad_pad_io_31_pad,
  input req_t config_req_i,
  output resp_t config_rsp_o
);

   mux_to_pads_t s_mux_to_pads;
   pads_to_mux_t s_pads_to_mux;

   padframe_xheep_pads i_xheep_pads (
     .static_connection_signals_pad2soc,
     .static_connection_signals_soc2pad,
     .mux_to_pads_i(s_mux_to_pads),
     .pads_to_mux_o(s_pads_to_mux),
     .pad_pad_clk_pad,
     .pad_pad_rst_pad,
     .pad_pad_boot_select_pad,
     .pad_pad_execute_from_flash_pad,
     .pad_pad_jtag_tck_pad,
     .pad_pad_jtag_tms_pad,
     .pad_pad_jtag_trst_pad,
     .pad_pad_jtag_tdi_pad,
     .pad_pad_jtag_tdo_pad,
     .pad_pad_exit_valid_pad,
     .pad_pad_uart_rx_pad,
     .pad_pad_uart_tx_pad,
     .pad_pad_gpio_00_i_pad,
     .pad_pad_gpio_01_i_pad,
     .pad_pad_gpio_02_i_pad,
     .pad_pad_gpio_03_i_pad,
     .pad_pad_gpio_04_i_pad,
     .pad_pad_gpio_05_i_pad,
     .pad_pad_gpio_06_i_pad,
     .pad_pad_gpio_07_i_pad,
     .pad_pad_gpio_08_i_pad,
     .pad_pad_gpio_09_i_pad,
     .pad_pad_gpio_10_i_pad,
     .pad_pad_gpio_11_i_pad,
     .pad_pad_gpio_12_i_pad,
     .pad_pad_gpio_13_i_pad,
     .pad_pad_gpio_14_i_pad,
     .pad_pad_gpio_15_i_pad,
     .pad_pad_gpio_16_i_pad,
     .pad_pad_gpio_17_i_pad,
     .pad_pad_gpio_18_i_pad,
     .pad_pad_gpio_19_i_pad,
     .pad_pad_gpio_20_i_pad,
     .pad_pad_gpio_21_i_pad,
     .pad_pad_gpio_22_i_pad,
     .pad_pad_spi_flash_sck_pad,
     .pad_pad_spi_flash_cs_00_pad,
     .pad_pad_spi_flash_cs_01_pad,
     .pad_pad_spi_flash_sd_00_pad,
     .pad_pad_spi_flash_sd_01_pad,
     .pad_pad_spi_flash_sd_02_pad,
     .pad_pad_spi_flash_sd_03_pad,
     .pad_pad_spi_sck_pad,
     .pad_pad_spi_cs_00_pad,
     .pad_pad_spi_cs_01_pad,
     .pad_pad_spi_sd_00_pad,
     .pad_pad_spi_sd_01_pad,
     .pad_pad_spi_sd_02_pad,
     .pad_pad_spi_sd_03_pad,
     .pad_pad_io_23_pad,
     .pad_pad_io_24_pad,
     .pad_pad_io_25_pad,
     .pad_pad_io_26_pad,
     .pad_pad_io_27_pad,
     .pad_pad_io_28_pad,
     .pad_pad_io_29_pad,
     .pad_pad_io_30_pad,
     .pad_pad_io_31_pad

  );

   padframe_xheep_muxer #(
     .req_t(req_t),
     .resp_t(resp_t)
   )i_xheep_muxer (
     .clk_i,
     .rst_ni,
     .port_signals_soc2pad_i,
     .port_signals_pad2soc_o,
     .mux_to_pads_o(s_mux_to_pads),
     .pads_to_mux_i(s_pads_to_mux),
     // Configuration interface using register_interface protocol
     .config_req_i,
     .config_rsp_o
   );

endmodule : padframe_xheep
