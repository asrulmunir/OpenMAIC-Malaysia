# OpenMAIC-Malaysia Deployment Guide

## 🌐 Production URLs

- **App**: https://maic.tetupai.com
- **API**: https://maic.tetupai.com/api

---

## 🚀 Deployment Methods

### Method 1: Manual Deployment

```bash
# SSH ke server
ssh azureuser@20.17.179.3

# Deploy
cd ~/OpenMAIC-Malaysia
./deploy.sh
```

### Method 2: Auto-Deploy (Git Push)

Push ke branch `main` akan auto-trigger deployment:

```bash
git add .
git commit -m "Your changes"
git push origin main
```

---

## 📋 Requirements

### Server Requirements
- Ubuntu 22.04+
- Node.js 20+
- pnpm 10+
- PM2 (`npm install -g pm2`)
- Caddy web server

### Environment Variables

Create `.env.local`:

```env
# Aras Integrasi (Teras Integrasi)
ARASINTEGRASI_API_KEY=your_api_key_here
ARASINTEGRASI_BASE_URL=https://model.arasintegrasi.ai/v1

# Optional: Other providers
OPENAI_API_KEY=optional
ANTHROPIC_API_KEY=optional
```

---

## 🔧 PM2 Commands

```bash
# Start
pm2 start ecosystem.config.js

# Restart
pm2 restart openmaic-malaysia

# View logs
pm2 logs openmaic-malaysia

# Monitor
pm2 monit

# Save config
pm2 save

# Startup script
pm2 startup
```

---

## 🔄 GitHub Actions Auto-Deploy

Setup GitHub secrets:

1. Go to GitHub → Settings → Secrets
2. Add `DEPLOY_SSH_KEY` (private key)
3. Add `DEPLOY_HOST` = `20.17.179.3`
4. Add `DEPLOY_USER` = `azureuser`

Push ke `main` → Auto deploy! 🎉

---

## 🐛 Troubleshooting

### Port conflict
```bash
lsof -i :3456
kill <PID>
```

### Out of memory
```bash
# Increase Node memory
export NODE_OPTIONS="--max-old-space-size=4096"
pnpm build
```

### PM2 not found
```bash
npm install -g pm2
pm2 startup
```

---

## 📊 Monitoring

- **PM2 Dashboard**: `pm2 monit`
- **Logs**: `pm2 logs openmaic-malaysia`
- **System status**: `systemctl status caddy`

---

Dibangunkan untuk pendidikan Malaysia 🇲🇾
