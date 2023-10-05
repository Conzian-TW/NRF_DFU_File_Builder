nrfutil nrf5sdk-tools keys generate private.key

nrfutil nrf5sdk-tools keys display --key pk --format code .\private.key --out_file public_key.c

nrfutil pkg generate --hw-version 52 --application-version 1 --application .\KS01_01_Prod_V1.0.0.hex --sd-req 0x101 --key-file .\private.key app_dfu_package.zip



**注意版本號

 --sd-req TEXT                   The SoftDevice requirements. A comma-
                                  separated list of SoftDevice firmware IDs (1
                                  or more) of which one must be present on the
                                  target device. Each item on the list must be
                                  a two- or four-digit hex number prefixed
                                  with "0x" (e.g. "0x12", "0x1234"). A non-
                                  exhaustive list of well-known values to use
                                  with this option follows:
                                  |s112_nrf52_6.0.0|0xA7|
                                  |s112_nrf52_6.1.0|0xB0|
                                  |s112_nrf52_6.1.1|0xB8|
                                  |s112_nrf52_7.0.0|0xC4|
                                  |s112_nrf52_7.0.1|0xCD|
                                  |s112_nrf52_7.2.0|0x103|
                                  |s112_nrf52_7.3.0|0x126|
                                  |s113_nrf52_7.0.0|0xC3|
                                  |s113_nrf52_7.0.1|0xCC|
                                  |s113_nrf52_7.2.0|0x102|
                                  |s113_nrf52_7.3.0|0x125|
                                  |s122_nrf52_8.0.0|0xEA|
                                  |s122_nrf52_8.1.1|0x112|
                                  |s130_nrf51_1.0.0|0x67|
                                  |s130_nrf51_2.0.0|0x80|
                                  |s130_nrf51_2.0.1|0x87|
                                  |s132_nrf52_2.0.0|0x81|
                                  |s132_nrf52_2.0.1|0x88|
                                  |s132_nrf52_3.0.0|0x8C|
                                  |s132_nrf52_3.1.0|0x91|
                                  |s132_nrf52_4.0.0|0x95|
                                  |s132_nrf52_4.0.2|0x98|
                                  |s132_nrf52_4.0.3|0x99|
                                  |s132_nrf52_4.0.4|0x9E|
                                  |s132_nrf52_4.0.5|0x9F|
                                  |s132_nrf52_5.0.0|0x9D|
                                  |s132_nrf52_5.1.0|0xA5|
                                  |s132_nrf52_6.0.0|0xA8|
                                  |s132_nrf52_6.1.0|0xAF|
                                  |s132_nrf52_6.1.1|0xB7|
                                  |s132_nrf52_7.0.0|0xC2|
                                  |s132_nrf52_7.0.1|0xCB|
                                  |s132_nrf52_7.2.0|0x101|
                                  |s132_nrf52_7.3.0|0x124|
                                  |s140_nrf52_6.0.0|0xA9|
                                  |s140_nrf52_6.1.0|0xAE|
                                  |s140_nrf52_6.1.1|0xB6|
                                  |s140_nrf52_7.0.0|0xC1|
                                  |s140_nrf52_7.0.1|0xCA|
                                  |s140_nrf52_7.2.0|0x100|
                                  |s140_nrf52_7.3.0|0x123|
                                  |s212_nrf52_6.1.1|0xBC|
                                  |s332_nrf52_6.1.1|0xBA|
                                  |s340_nrf52_6.1.1|0xB9|