#!/data/data/com.termux/files/usr/bin/bash

# ============================================================
# DIGAI LAUNCHER
# ============================================================

set -u

# Colors
NC='\033[0m'
RED='\033[1;31m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
BLUE='\033[1;34m'
MAGENTA='\033[1;35m'
CYAN='\033[1;36m'
WHITE='\033[1;37m'

# Current time
current_time="$(date '+%H:%M:%S')"

# ============================================================
# OPEN INSTAGRAM
# ============================================================

echo -e "${YELLOW}[${current_time}]${NC} ${GREEN}[INFO]:${NC} Instagram Open..."

if command -v am >/dev/null 2>&1; then
    am start \
        -a android.intent.action.VIEW \
        -d "https://www.instagram.com/ur_.krishn._02/" \
        >/dev/null 2>&1 || {
            echo -e "${YELLOW}[${current_time}]${NC} ${RED}[WARNING]:${NC} Could not open Instagram."
        }
else
    echo -e "${YELLOW}[${current_time}]${NC} ${RED}[WARNING]:${NC} Android 'am' command not found."
fi

# ============================================================
# ONE AND ONLY DIGAI BANNER
# ============================================================

banner() {
    clear

    echo -e "${MAGENTA}"

    cat <<'BANNER'
   ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⡀
⠀⠀⠀⢀⣶⣦⡀⢀⣀⣤⣴⣶⣶⣿⣿⣶⣶⣤⣤⣀⠀⠀⠀⣠⣾⡿⢹⣇
⠀⠀⠀⢸⡀⢻⣿⣿⠟⠋⠉⠁⠀⠀⠀⠀⠈⠉⠙⠻⢿⣶⢾⣿⠟⠀⢰⡟
⠀⠀⠀⣸⣧⡀⠹⡜⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡾⣫⡾⠃⠀⣠⡿⠁
⠀⢀⣼⣿⣏⠻⣄⠘⣌⢃⠀⠀⠀⠀⠀⠀⠀⠀⣼⢋⣼⠋⢀⣴⠞⢻⠃⠀
⠀⣼⡿⠁⠙⢦⡘⢷⣌⢞⣆⠀⠀⣀⣀⣠⣄⣾⣷⠟⣡⡾⠋⢀⣴⣿⣧⠀
⢸⣿⠁⠀⠀⠀⠙⠷⣿⣿⣿⠶⢿⣿⣿⣿⣿⣿⣿⢟⣋⣤⣶⠟⠁⠘⣿⡇
⣿⡟⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠀⠀⠀⠀⣿⣧
⣿⣇⠀⠀⠀⠀⠀⣿⣿⣿⡿⠋⢹⡿⠿⢿⣿⣿⣿⡿⢃⣴⠀⠀⠀⠀⣽⣿
⢹⣿⠀⠀⠀⠀⠀⢹⣿⣟⣠⣤⡿⠁⠀⠘⿿⠟⠁⣠⣾⣿⠀⠀⠀⠀⣿⡇
⠘⣿⣆⠀⠀⠀⠀⢸⣿⠋⠉⠀⠀⠀⠀⠀⠸⠿⠿⠿⠿⠏⠀⠀⠀⣸⣿⠁
⠀⠘⣿⣆⠀⠀⠀⠸⠁⠀⠀⠀⠀⠀⠀⠀⢰⣿⣷⣶⠖⠀⠀⠀⣰⣿⠃
⠀⠀⠘⢿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠏⠀⠀⣀⣾⡿⠁
⠀⠀⠀⠀⠙⢿⣷⣄⡀⠀⠀⠀⠀⠀⠀⢀⣿⠟⠃⣀⣠⣾⡿⠋
⠀⠀⠀⠀⠀⠀⠉⠛⠿⣷⣶⣦⣤⣤⣤⣬⣴⣶⠾⠛⠁

        [*] </> NAME : DIGAI [✓]
        [*] </> BY   : KRISHN 🔱 [✓]
BANNER

    echo -e "${NC}"
    echo -e "${CYAN}[*] AI   </> NAME : IN DIGAI [✓]${NC}"
    echo -e "${RED}[*] </> BY : KRISHN🚀${NC}"
    echo -e "${BLUE}[*] </> INFO : __.l2l__${NC}"
    echo -e "${GREEN}[*] </> INSTAGRAM : ur_.krishn._02${NC}"
    echo -e "${YELLOW}[*] </> TELEGRAM  : @krishn18${NC}"
    echo
}

# ============================================================
# SHOW BANNER
# ============================================================

banner

# ============================================================
# DOWNLOAD DIGAI
# ============================================================

URL="https://github.com/krishn-145/DIGAI/raw/refs/heads/main/install.tar.gz"
ARCHIVE="install.tar.gz"

echo -e "${CYAN}[${current_time}]${NC} ${GREEN}[INFO]:${NC} Downloading DIGAI..."

if ! command -v wget >/dev/null 2>&1; then
    echo -e "${RED}[ERROR]:${NC} wget is not installed."
    echo -e "${YELLOW}Run:${NC} pkg install wget"
    exit 1
fi

if ! wget -q --show-progress -O "$ARCHIVE" "$URL"; then
    echo -e "${RED}[ERROR]:${NC} Failed to download DIGAI."
    rm -f "$ARCHIVE"
    exit 1
fi

# ============================================================
# EXTRACT
# ============================================================

echo -e "${CYAN}[${current_time}]${NC} ${GREEN}[INFO]:${NC} Extracting DIGAI..."

if ! tar -xzf "$ARCHIVE"; then
    echo -e "${RED}[ERROR]:${NC} Failed to extract $ARCHIVE"
    rm -f "$ARCHIVE"
    exit 1
fi

rm -f "$ARCHIVE"

# ============================================================
# START DIGAI
# ============================================================

if [ ! -f "digai.sh" ]; then
    echo -e "${RED}[ERROR]:${NC} digai.sh was not found after extraction."
    exit 1
fi

chmod +x digai.sh

echo -e "${GREEN}[${current_time}] [✓] DIGAI starting...${NC}"
echo

exec ./digai.sh
