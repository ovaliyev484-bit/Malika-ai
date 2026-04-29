# Malika AI Assistant

Bu loyiha Gemini AI bilan ishlaydigan mahalliy yordamchi. Kompyuterni boshqarish, qidirish, va boshqa ko'plab vazifalarni bajaradi.

## Tez Boshlash (Windows)

### 1-usul: Batch fayllar bilan (Eng oson)

1. **setup_malika.bat** faylini ikki marta bosing - bu barcha kerakli kutubxonalarni o'rnatadi
2. **run_malika.bat** faylini ikki marta bosing - bu Malika Assistant'ni ishga tushiradi

### 2-usul: Terminal orqali

```bash
python setup.py
```

Yoki Playwright o'rnatmasdan:

```bash
python setup.py --skip-playwright
```

Keyin alohida terminallarda ishga tushiring:

```bash
python ui.py
python main.py
```

Brauzerni oching:

`http://127.0.0.1:7860/web/index.html`

## API Kalit

Gemini API kalitini quyidagilardan birida sozlang:

1. Muhit o'zgaruvchisi: `GEMINI_API_KEY`
2. Fayl: `config/api_keys.json`

Fayl formati:
```json
{
  "gemini_api_key": "sizning-api-kalitingiz"
}
```

## Asosiy Fayllar

- `main.py`: AI asosiy dastur + barcha vositalar
- `ui.py`: Mahalliy veb server
- `setup_malika.bat`: Barcha dependencies o'rnatish (Windows)
- `run_malika.bat`: Dasturni ishga tushirish (Windows)
- `config/settings.json`: Sozlamalar
- `memory/`: Xotira va suhbatlar

## Imkoniyatlar

- 🎤 Ovozli muloqot (voice input/output)
- 🖥️ Kompyuterni boshqarish
- 🌐 Veb qidiruv
- 📁 Fayl boshqaruvi
- 🎵 Musiqa nazorati
- 📅 Taqvim va eslatmalar
- 🎮 O'yin rejimi
- 📝 Matn tarjima
- 🔍 OCR (rasm dan matn o'qish)
- Va boshqa ko'plab vositalar!

## Eslatmalar

- Windows + Python 3.10+ uchun mo'ljallangan
- `ui.py` ishlab turgan bo'lishi kerak (`main.py` bilan birga)
- API kalit sozlanmagan bo'lsa, dastur sizdan so'raydi
