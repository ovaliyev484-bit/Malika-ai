# 🌟 MALIKA AI ASSISTANT - BOSHLASH QO'LLANMASI 🌟

## 📋 NIMA QILISH KERAK? (3 QADAM)

### ✅ QADAM 1: Dependencies O'rnatish

**Eng oson usul:**
1. `setup_malika.bat` faylini ikki marta bosing
2. Kuting - barcha kerakli kutubxonalar avtomatik o'rnatiladi
3. Tamom!

**Yoki terminal orqali:**
```bash
python setup.py
```

---

### ✅ QADAM 2: Ishga Tushirish

**Eng oson usul:**
1. `run_malika.bat` faylini ikki marta bosing
2. Malika ishga tushadi!

**Yoki terminal orqali:**
Ikkita terminal oching:
```bash
# 1-terminalda:
python ui.py

# 2-terminalda:
python main.py
```

---

### ✅ QADAM 3: API Kalit Sozlash

Malika sizdan Gemini API kalitini so'raydi. Uni quyidagicha sozlang:

**Usul 1 - Fayl yaratish:**
1. `config` papkasiga boring
2. `api_keys.json` faylini yarating
3. Ichiga quyidagini yozing:

```json
{
  "gemini_api_key": "SIZNING_API_KALITINGIZ"
}
```

**Usul 2 - Muhit o'zgaruvchisi:**
```bash
set GEMINI_API_KEY=sizning-api-kalitingiz
```

👉 API kalit olish: https://ai.google.dev/gemini-api/docs/api-key

---

## 🎯 QISQA YO'L (SHORTCUTS) YARATISH

Desktopingizga qisqa yo'l ikonkalari qo'shish uchun:

1. `create_shortcuts.bat` faylini bosing
2. Desktopda paydo bo'ladi:
   - 📦 Malika - Setup.lnk (o'rnatish uchun)
   - 🚀 Malika - Run.lnk (ishga tushirish uchun)

---

## 🔧 MUAMMOLAR VA YECHIMLAR

### ❌ "Python topilmadi"
**Yechim:** Python 3.10+ o'rnating
👉 https://www.python.org/downloads/

### ❌ "ModuleNotFoundError"
**Yechim:** `setup_malika.bat` ni qayta ishga tushiring

### ❌ "API key not found"
**Yechim:** Yuqoridagi QADAM 3 ni bajaring

### ❌ Playwright xatosi
**Yechim:** 
```bash
python -m playwright install
```

---

## 📁 PAPKA TUZILMASI

```
New folder/
│
├── 🚀 run_malika.bat          ← Ishga tushirish
├── 📦 setup_malika.bat        ← Dependencies o'rnatish
├── 🔗 create_shortcuts.bat    ← Desktop shortcutlar
│
├── 📄 main.py                 ← Asosiy dastur
├── 🌐 ui.py                   ← Veb server
├── 📋 requirements.txt        ← Kerakli kutubxonalar
│
├── ⚙️ config/
│   ├── api_keys.json         ← API kalitlar
│   └── settings.json         ← Sozlamalar
│
├── 🧠 memory/                 ← Xotira va suhbatlar
└── 🛠️ actions/                ← Barcha vositalar
```

---

## 🎮 MALIKA NIMA QILA OLADI?

✅ Ovozli muloqot (gapiring, u javob beradi)
✅ Kompyuterni boshqarish (dasturlar, sozlamalar)
✅ Veb qidiruv (Google, ma'lumot qidirish)
✅ Fayl boshqaruvi (yaratish, o'chirish, ko'chirish)
✅ Musiqa nazorati (play, pause, skip)
✅ Taqvim va eslatmalar
✅ Matn tarjima (O'zbek, Rus, Ingliz va boshqalar)
✅ OCR (rasmdan matn o'qish)
✅ Ekran tahlili (vision AI)
✅ Kod yozish va tushuntirish
✅ Email yuborish
✅ Ob-havo ma'lumoti
✅ Va ko'p boshqa narsalar!

---

## 💡 FOYDALI MASLAHATLAR

1. **Birinchi marta:** `setup_malika.bat` ni ishga tushiring
2. **Har kuni:** `run_malika.bat` ni ishga tushiring
3. **API kalit:** Bir marta sozlasangiz, qayta kerak emas
4. **To'xtatish:** Terminalda `Ctrl+C` bosing

---

## 📞 YORDAM

Muammo bo'lsa:
1. `readme.md` faylini o'qing
2. `config/settings.json` ni tekshiring
3. Python versiyasini tekshiring: `python --version`
4. Dependencies qayta o'rnating: `setup_malika.bat`

---

## 🎉 TAMOM!

Endi Malika AI Assistant bilan ishlashga tayyorsiz!

**Omad tilaymiz! 🚀**

---
*Created with ❤️ for easy setup and use*
