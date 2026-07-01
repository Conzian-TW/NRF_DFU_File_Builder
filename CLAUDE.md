# NRF_DFU_File_Builder

KNEESUP/MetaSens **感測器的 DFU/OTA 打包工具**(Nordic nRF)。把 `KNEESUP-Firmware` 的 release hex 打包成**簽章 DFU `.zip`**,供裝置 OTA 更新。跨 repo 全貌見 sibling repo `KNEESUP-RehabApiLambda/doc/CROSS_REPO_GRAPH.md`(§4e)。

## 用途 / Build
- 需 **`nrfutil`** + **nRF Command Line Tools**(Nordic 官網下載)。
- `dfu_package.bat` 產 OTA `.zip`;主檔 `ble_app_uart_pca10040_s132.hex`(KNEESUP/MetaSens release 燒錄檔;SoftDevice `s132_nrf52_7.2.0`)。
- `Bootloader burning.bat` 燒 bootloader;裝置進 DFU 模式廣播 `DfuTarg`,用 nRF Connect 選 `.zip` 測試推送。
- **DFU/OTA 在韌體 1.0.7 之後才支援。**
- 韌體端 `KNEESUP-Firmware/build_dfu.sh` 引用本 repo 的 `private.key` 簽章(**跨 repo 檔案依賴**)。

## 內容
- 版本化 DFU 包:`KNEESUP_12bit10hz_*`、`KNEESUP_14bit10hz_v2.0.5s` 等(對應 preset 的 bit/Hz 變體)。
- `dfu/`、`dfu_file/`、`dfu private key backup/`:DFU 元件與簽章金鑰。

## 必踩雷區
- 🔐 **簽章私鑰已 commit 進 git**(`private.key`、`dfu/private.key`、`dfu private key backup/private.key`、`private_error.key`…)。**任何有 repo 存取權者可簽出 bootloader 會接受的韌體。**
  - remediation **卡在硬體**:Secure DFU public key 已 baked 進**數百顆已燒錄**裝置的 bootloader,輪替需現場重新 provision;一人統包團隊 → **已知風險、暫緩**,勿自行輪替(見 `CROSS_REPO_GRAPH.md` §4e)。
- 路徑/檔名要對(README:「找不到指令通常是路徑問題」)。
- 3 commits、2023 後低活躍;主要是 DFU 產出 + 金鑰保管。

## 跨 repo
- 📍 韌體工具層:消費 `KNEESUP-Firmware` 的 hex → 產 DFU `.zip` → 裝置 OTA。全貌見 `KNEESUP-RehabApiLambda/doc/CROSS_REPO_GRAPH.md` §4e。
