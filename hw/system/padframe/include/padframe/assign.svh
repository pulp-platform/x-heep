// File auto-generated by Padrick 0.3.1.post0.dev2+ge09286c

// Assignment Macros
// Assigns all members of port struct to another struct with same names but potentially different order

`define ASSIGN_XHEEP_I2C_PAD2SOC(load, driver) \
  assign load.i2c_scl_o = driver.i2c_scl_o; \
  assign load.i2c_sda_o = driver.i2c_sda_o; \

`define ASSIGN_XHEEP_I2C_SOC2PAD(load, driver) \
  assign load.i2c_scl_i = driver.i2c_scl_i; \
  assign load.i2c_scl_oe_i = driver.i2c_scl_oe_i; \
  assign load.i2c_sda_i = driver.i2c_sda_i; \
  assign load.i2c_sda_oe_i = driver.i2c_sda_oe_i; \

`define ASSIGN_XHEEP_GPIO_PAD2SOC(load, driver) \
  assign load.gpio_30_o = driver.gpio_30_o; \
  assign load.gpio_31_o = driver.gpio_31_o; \

`define ASSIGN_XHEEP_GPIO_SOC2PAD(load, driver) \
  assign load.gpio_30_i = driver.gpio_30_i; \
  assign load.gpio_30_oe_i = driver.gpio_30_oe_i; \
  assign load.gpio_31_i = driver.gpio_31_i; \
  assign load.gpio_31_oe_i = driver.gpio_31_oe_i; \


