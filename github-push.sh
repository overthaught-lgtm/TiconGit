#!/bin/bash
# ==============================================================================
# TICONDEROGA SYSTEMS HOLDINGS — GITHUB AUTOMATION DEPLOYMENT v8.0
# Built in Craig, Colorado · Securing the Code Core
# ==============================================================================

# Custom Amber Styling Elements
AMBER='\033[38;5;208m'
DIM='\033[38;5;130m'
WHITE='\033[1;37m'
NC='\033[0m'

# Check if a GitHub Repository URL was provided
if [ -z "$1" ]; then
    echo -e "${WHITE}[CRITICAL ERROR] Missing GitHub Repository URL.${NC}"
    echo -e "${DIM}Usage: ./github-push.sh https://github.com/YOUR_ACCOUNT/YOUR_REPO.git${NC}"
    exit 1
fi

REPO_URL=$1

echo -e "${AMBER}▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒${NC}"
echo -e "${WHITE}  TICONDEROGA CODE LEDGER — REPOSITORY INITIALIZATION${NC}"
echo -e "${AMBER}▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒${NC}"

# 1. Initialize Local Repository
if [ ! -d .git ]; then
    echo -e "\n${AMBER}[GIT]${NC} Initializing sovereign local repository..."
    git init -b main
else
    echo -e "\n${AMBER}[GIT]${NC} Local repository already active."
fi

# 2. Stage All Structural Code Files
echo -e "${AMBER}[GIT]${NC} Staging system blueprints..."
git add .

# 3. Lock Commit with Sovereign Audit Verification Tag
echo -e "${AMBER}[GIT]${NC} Writing commit block history (Quill)..."
COMMIT_MSG="Feat: Initialize TSH Layer 1 Dashboard Framework [Wagoneer Wood Panel Trim v8.0]"
git commit -m "$COMMIT_MSG"

# 4. Set Remote Pointer and Enforce Target Branch Finality
echo -e "${AMBER}[GIT]${NC} Mapping upstream remote pointer..."
# Check if remote origin already exists, if so remove it to avoid conflicts
git remote remove origin 2>/dev/null
git remote add origin "$REPO_URL"

# 5. Execute Core Upload Stream
echo -e "${AMBER}[GIT]${NC} Launching code manifest up-stream..."
git push -u origin main

echo -e "\n${WHITE}================================================================================${NC}"
echo -e " ${AMBER}● GITHUB CODE BASE ALIGNED${NC} // Ledger History Immutable."
echo -e " ${DIM}Your automated system repository is locked at:${NC} ${WHITE}$REPO_URL${NC}"
echo -e "${WHITE}================================================================================${NC}"
