# 🇲🇾 OpenMAIC Malaysia

**Open Multi-Agent Interactive Classroom** — Versi Malaysia dengan integrasi AI tempatan.

> 🎓 Platform pembelajaran interaktif pelbagai-ejen (multi-agent) yang menjana bilik darjah maya lengkap dengan guru AI, rakan sekelas AI, kuiz, dan simulasi interaktif.

---

## ✨ Ciri-Ciri Khas Malaysia

- 🇲🇾 **Bahasa Melayu Penuh** — Antaramuka dalam Bahasa Malaysia
- 🤖 **AI Tempatan** — Integrasi dengan [Teras Integrasi](https://model.arasintegrasi.ai/)
- 📚 **Kurikulum Malaysia** — Sokongan untuk KSSR, KSSM, dan KPM
- 🎨 **Tema Jalur Gemilang** — Warna dan identiti Malaysia

---

## 🚀 Quick Start

### Prerequisites
- **Node.js** >= 20
- **pnpm** >= 10

### 1. Clone & Install
```bash
git clone https://github.com/asrulmunir/OpenMAIC-Malaysia.git
cd OpenMAIC-Malaysia
pnpm install
```

### 2. Configure Environment
```bash
cp .env.example .env.local
# Edit .env.local dengan API key anda
```

### 3. Run Development Server
```bash
pnpm dev
```

Akses di: http://localhost:3000

---

## 🔧 Konfigurasi AI Provider (Teras Integrasi)

Dalam `.env.local`, tetapkan:

```env
ARASINTEGRASI_API_KEY=sk-xxxx
ARASINTEGRASI_BASE_URL=https://model.arasintegrasi.ai/v1
ARASINTEGRASI_MODELS=moonshotai/Kimi-K2.5,Qwen/Qwen3.5-122B
```

Model yang disokong:
- `moonshotai/Kimi-K2.5` — Model reasoning terbaik
- `Qwen/Qwen3.5-122B` — Model coding yang kuat
- `google/gemma-4-31B-it` — Model efisien

---

## 📚 Lesen

Projek ini adalah fork dari [THU-MAIC/OpenMAIC](https://github.com/THU-MAIC/OpenMAIC).
Didistribusikan di bawah lesen **AGPL-3.0**.

---

Dibangunkan untuk komuniti pendidikan Malaysia 🇲🇾
