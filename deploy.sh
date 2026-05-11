#!/bin/bash
set -e

echo "🚀 OpenMAIC-Malaysia Deployment Script"
echo "========================================"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Configuration
APP_DIR="/home/azureuser/OpenMAIC-Malaysia"
PORT=3456

cd "$APP_DIR"

echo -e "${YELLOW}📦 Step 1: Pulling latest changes...${NC}"
git pull origin main

echo -e "${YELLOW}🔧 Step 2: Installing dependencies...${NC}"
pnpm install

echo -e "${YELLOW}🏗️  Step 3: Building production...${NC}"
export NODE_OPTIONS="--max-old-space-size=3072"
pnpm build

echo -e "${YELLOW}🔄 Step 4: Restarting service...${NC}"
if pm2 list | grep -q "openmaic-malaysia"; then
    pm2 restart openmaic-malaysia
else
    pm2 start --name openmaic-malaysia pnpm -- start
fi

echo -e "${YELLOW}💾 Step 5: Saving PM2 config...${NC}"
pm2 save

echo -e "${GREEN}✅ Deployment complete!${NC}"
echo -e "🌐 URL: https://maic.tetupai.com"
echo -e "📊 Logs: pm2 logs openmaic-malaysia"
