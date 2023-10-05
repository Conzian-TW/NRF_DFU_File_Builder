# NRF_DFU_File_Builder
 Use to build dfu/ota file for NRF device (KNEESUP/MetaSens)

可以使用 dfu_package.bat 製作 OTA 檔案，
主要使用 ble_app_uart_pca10040_s132.hex 的檔案是 KNEESUP/MetaSens 在 Release 的燒錄檔如下圖，
以 KNEESUP 為例請找 Release 在 KNEESUP_Firmware_1.0.7.hex 這個檔案，其對應的 softdevice 為 s132_nrf52_7.2.0_softdevice.hex
注意 DFU/OTA 的功能在 KNEESUP/MetaSens 1.0.7 之後才有支援，

<img width="529" alt="image" src="https://github.com/Conzian-TW/NRF_DFU_File_Builder/assets/26782673/f09c5300-ab24-4c2d-8229-cf7aefd8900f">

製作完成之後可以用 nrf connect 測試，使用流程如下圖
使用 Bootloader burning.bat，燒錄完成之後掃描找到 DfuTarg 的檔案，Connect 之後按下右上角的 dfu，選擇製作出來的 .zip，測試製作燒錄檔是否成功。
成功燒錄後會斷線，長按3秒即可出現燒錄的 KNEESUP/MetaSens 的閃爍LED特徵。
![1000000235](https://github.com/Conzian-TW/NRF_DFU_File_Builder/assets/26782673/c37dc5cc-2f19-4228-b532-04961b7e268a)
![1000000236](https://github.com/Conzian-TW/NRF_DFU_File_Builder/assets/26782673/3adc2d67-8654-45de-a9c0-3b33cd8e574b)
![1000000237](https://github.com/Conzian-TW/NRF_DFU_File_Builder/assets/26782673/d3cf20da-74d6-40be-b7f7-208be50dbe70)
![1000000239](https://github.com/Conzian-TW/NRF_DFU_File_Builder/assets/26782673/4e9537ea-0786-4e36-b5f4-679ccd61cfcd)
