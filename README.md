# 🧰 pi2w-cluster-tools

Raspberry Pi Zero 2W Cluster 管理工具套件  
用於快速建立、配置與維運多台 Pi Zero 2W 組成的輕量級叢集（Cluster）

---

## 📦 專案結構
pi2w-cluster-tools/
├── config/ # 儲存共用設定，如節點列表、環境變數等
├── setup/ # 初始設定腳本（如 SSH、hosts 同步）
├── network/ # 網路相關腳本（如 Wi-Fi 熱點）
├── cluster/ # 管理整個 cluster 的腳本（如 ping、reboot）
├── container/ # Container 化應用部署（如 Docker 安裝）
├── monitoring/ # 系統監控相關（如安裝 telegraf）
├── helper/ # 共用工具與函式（如 utils.sh）
└── scripts/ # 放置初始化或工具腳本（如 init_pi2w_cluster_tools.sh


---

## 🚀 快速開始

1️⃣ 執行初始化腳本建立目錄與樣板：

```bash
cd scripts
bash init_pi2w_cluster_tools.sh