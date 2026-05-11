# 🇲🇾 OpenMAIC-Malaysia - Setup Guide

**Fork dari:** [THU-MAIC/OpenMAIC](https://github.com/THU-MAIC/OpenMAIC)  
**API Provider:** [Teras Integrasi](https://model.arasintegrasi.ai/)  
**Repo:** https://github.com/asrulmunir/OpenMAIC-Malaysia

---

## 🚀 Setup (10 minit)

### 1. Clone Repo
```bash
git clone https://github.com/asrulmunir/OpenMAIC-Malaysia.git
cd OpenMAIC-Malaysia
```

### 2. Install Dependencies
```bash
npm install -g pnpm
pnpm install
```

### 3. Setup Environment
```bash
cp .env.example .env.local
```

Edit `.env.local` dengan API key dari [Teras Integrasi](https://model.arasintegrasi.ai/):
```env
ARASINTEGRASI_API_KEY=sk-xxxxx
```

### 4. Run Server
```bash
pnpm dev
```

Buka: **http://localhost:3000**

---

## 🔧 Models yang Tersedia

| Model | Kegunaan |
|-------|----------|
| `moonshotai/Kimi-K2.5` | ✅ Disyorkan - reasoning terbaik |
| `Qwen/Qwen3.5-122B` | Coding & technical |
| `google/gemma-4-31B-it` | Lighter tasks |

---

## 📋 Requirements

- **Node.js** >= 20
- **pnpm** >= 10
- **API Key** dari Teras Integrasi

---

## 🎯 Features Malaysia

- ✅ i18n Bahasa Melayu (ms-MY)
- ✅ Integrasi Teras Integrasi
- ✅ Sokongan kurikulum Malaysia (KSSR, KSSM)
- ✅ Prompt untuk subjek tempatan

---

## ⚠️ Troubleshooting

**First compile lambat?**  
Next.js dev server ambil 2-3 minit untuk first compile. Tunggu saja.

**API error?**  
Check `.env.local` pastikan API key betul dan server Teras Integrasi berfungsi.

**Port busy?**  
Port 3000 dah occupied → `PORT=3001 pnpm dev`

---

Lesen: **AGPL-3.0** (fork dari THU-MAIC/OpenMAIC)
