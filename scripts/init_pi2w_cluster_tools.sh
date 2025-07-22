#!/bin/bash
# init_pi2w_cluster_tools.sh
# 功能：建立 Raspberry Pi Zero 2W Cluster 管理工具的資料夾與初始化腳本
# 用途：快速生成含有分類與說明的目錄結構與樣板腳本

PROJECT_DIR="$(dirname "$(pwd)")"

echo "🚀 建立專案資料夾：$PROJECT_DIR"
mkdir -p "$PROJECT_DIR"/{config,setup,network,cluster,container,monitoring,helper}

# ---------- config ----------
cat > "$PROJECT_DIR/config/cluster_nodes.txt" <<EOF
# 每行一個節點的 IP 或主機名稱
192.168.1.101
192.168.1.102
EOF

cat > "$PROJECT_DIR/config/env.sh" <<EOF
# env.sh
# 功能：儲存通用環境變數
# 用途：供所有腳本引用共用設定
export CLUSTER_USER="pi"
export CLUSTER_HOME="/home/pi"
EOF

# ---------- setup ----------
cat > "$PROJECT_DIR/setup/01_ssh_setup.sh" <<EOF
# 01_ssh_setup.sh
# 功能：設定 SSH 免密登入
# 用途：讓 cluster 中各節點互相通訊時不需密碼
#!/bin/bash
echo "尚未實作 SSH 設定邏輯"
EOF

cat > "$PROJECT_DIR/setup/02_hosts_sync.sh" <<EOF
# 02_hosts_sync.sh
# 功能：同步 /etc/hosts 設定
# 用途：讓各節點可以用主機名稱互相溝通
#!/bin/bash
echo "尚未實作 hosts 同步邏輯"
EOF

# ---------- network ----------
cat > "$PROJECT_DIR/network/ap_mode_setup.sh" <<EOF
# ap_mode_setup.sh
# 功能：將 Pi 設為 Wi-Fi 熱點
# 用途：提供學生或設備連接本地 Wi-Fi 使用
#!/bin/bash
echo "尚未實作 AP 模式設定"
EOF

# ---------- cluster ----------
cat > "$PROJECT_DIR/cluster/10_ping_all.sh" <<EOF
# 10_ping_all.sh
# 功能：ping 所有節點確認連線狀態
# 用途：快速檢查 cluster 中哪台 Pi 有問題
#!/bin/bash
echo "尚未實作 ping 邏輯"
EOF

cat > "$PROJECT_DIR/cluster/12_reboot_all.sh" <<EOF
# 12_reboot_all.sh
# 功能：一鍵重啟所有節點
# 用途：管理者快速重新啟動 cluster 所有裝置
#!/bin/bash
echo "尚未實作 reboot 邏輯"
EOF

# ---------- container ----------
cat > "$PROJECT_DIR/container/20_start_docker.sh" <<EOF
# 20_start_docker.sh
# 功能：安裝並啟動 Docker
# 用途：部署 container 化應用
#!/bin/bash
echo "尚未實作 Docker 安裝"
EOF

# ---------- monitoring ----------
cat > "$PROJECT_DIR/monitoring/30_install_telegraf.sh" <<EOF
# 30_install_telegraf.sh
# 功能：安裝 telegraf 監控 agent
# 用途：收集各台裝置的系統資訊供後端分析
#!/bin/bash
echo "尚未實作 telegraf 安裝"
EOF

# ---------- helper ----------
cat > "$PROJECT_DIR/helper/utils.sh" <<EOF
# utils.sh
# 功能：放置共用函式庫
# 用途：供各個腳本引用
#!/bin/bash
echo "function 尚未定義"
EOF

echo "✅ 專案初始化完成：$PROJECT_DIR"
