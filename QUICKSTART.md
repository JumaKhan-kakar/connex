# Quick Start Guide - Fuel Dispenser Chart Generator

## 🚀 Start in 30 Seconds

### Web Version (Easiest)
1. Open `index.html` in your browser
2. Enter price (default: 408.3)
3. Click "Generate Chart"
4. Download PNG or CSV

### Python CLI Version
```bash
python fuel_dispenser_generator.py
```

---

## 📋 Detailed Instructions

### For Windows Users

**Web Version:**
1. Double-click `index.html`
2. Browser opens automatically
3. Enter fuel price
4. Click buttons to download

**Python Version:**
1. Install Python: https://www.python.org/downloads/
2. Open Command Prompt
3. Navigate to folder: `cd path/to/folder`
4. Install Pillow: `pip install Pillow`
5. Run: `python fuel_dispenser_generator.py`

### For Mac/Linux Users

**Web Version:**
1. Open Terminal
2. `open index.html` (Mac) or `firefox index.html` (Linux)

**Python Version:**
```bash
# Install dependencies
pip3 install -r requirements.txt

# Run tests
python3 test.py

# Run generator
python3 fuel_dispenser_generator.py
```

### For Android Users

**Web Version (Easiest):**
1. Open Chrome or Firefox browser
2. Navigate to the HTML file location
3. Works perfectly on mobile!

**Online Python:**
1. Visit https://colab.research.google.com
2. Create new notebook
3. Paste `fuel_dispenser_generator.py` code
4. Run and download results

### For Online/No Installation

**Google Colab (Recommended):**
1. Go to https://colab.research.google.com
2. New notebook
3. Paste the Python code
4. Click "Run"
5. Download generated files

**Replit:**
1. Visit https://replit.com
2. New Python project
3. Paste code
4. Click "Run"

---

## 📊 Example Usage

### Web Version

```
Price: 408.3
Max Rupees: 10000
Step: 50
Rows: 14
Columns: 40

[Click Generate]

↓ Shows preview ↓

[Download PNG] [Download CSV] [Download TXT] [Print]
```

### Python Version

```bash
$ python fuel_dispenser_generator.py

Enter price per liter (default 408.3): 408.3
Enter max rupees (default 10000): 10000
Enter step amount (default 50): 50
Enter grid rows (default 14): 14
Enter grid columns (default 40): 40

✓ PNG saved: fuel_chart_rs408.3.png
✓ CSV saved: fuel_chart_rs408.3.csv
✓ TXT saved: fuel_chart_rs408.3.txt
```

---

## 🎨 Customization Examples

### Example 1: Standard Chart
- Price: 408.3
- Max: 10000
- Step: 50
- Result: 560 values in 14×40 grid

### Example 2: Extended Range
- Price: 408.3
- Max: 20000
- Step: 100
- Result: Extended chart for higher prices

### Example 3: Compact Chart
- Price: 408.3
- Max: 5000
- Step: 50
- Rows: 10
- Columns: 20
- Result: Smaller, more compact grid

### Example 4: High Price
- Price: 500
- Max: 10000
- Step: 50
- Result: Different conversion ratio

---

## 📥 Output Files

### PNG Image
- **Size:** 4000×3000+ pixels
- **DPI:** 300+
- **Format:** High-quality image
- **Use:** Printing, display, sharing
- **File:** `fuel_chart_rs408.3.png`

### CSV Spreadsheet
- **Format:** Excel/Sheets compatible
- **Layout:** 14×40 grid (2 grids total)
- **Use:** Analysis, editing, import
- **File:** `fuel_chart_rs408.3.csv`

### TXT Plain Text
- **Format:** Monospaced text
- **Width:** 280+ characters
- **Use:** Copy-paste, documentation
- **File:** `fuel_chart_rs408.3.txt`

---

## ✅ Verification

To verify the tool is working correctly, check these values:

| Rupees | Expected Code |
|--------|---------------|
| 50 | -1-I |
| 100 | -2-II |
| 408 | 1 |
| 817 | 2 |
| 1225 | 3 |

If your output matches these, the tool is working perfectly!

---

## 🐛 Troubleshooting

**Issue: "Python not found"**
- Solution: Install Python from python.org

**Issue: "Pillow module not found"**
- Solution: Run `pip install Pillow`

**Issue: PNG not generating**
- Solution: Check font installation, try web version instead

**Issue: Download not starting**
- Solution: Check browser settings, try different browser

**Issue: Grid looks wrong**
- Solution: Verify price is entered correctly, check grid dimensions

---

## 🌐 Browser Support

✓ Chrome/Chromium
✓ Firefox
✓ Safari
✓ Edge
✓ Opera
✓ Mobile browsers
✓ Android browsers
✓ iOS Safari

---

## 📦 System Requirements

### Web Version
- Modern browser (any OS)
- No installation needed
- Works offline

### Python Version
- Python 3.6+
- Pillow library
- ~5MB disk space
- Windows/Mac/Linux

### Online
- Internet connection
- Web browser
- No installation needed

---

## 🎯 Common Tasks

### Generate Default Chart
```bash
python fuel_dispenser_generator.py
# Press Enter 5 times to use defaults
```

### Generate Custom Price
```bash
python fuel_dispenser_generator.py
# Enter: 500 [Enter]
# Enter defaults for rest
```

### Print Chart
1. Web: Click "Print" button
2. Python: Open PNG file → Print
3. CSV: Open in Excel → Print

### Share Chart
1. Download PNG
2. Email, WhatsApp, or cloud share
3. Open on recipient's device

### Edit in Excel
1. Download CSV
2. Open in Excel/Sheets
3. Edit as needed
4. Print or export

---

## 🔧 Advanced Options

### Change Grid Size
Edit default values in config:
- `rows = 14` (default)
- `columns = 40` (default)
- Increase for more values per chart

### High DPI Output
PNG automatically generates at 300 DPI
- Suitable for professional printing
- Crystal clear text and borders

### RTL Layout
Charts automatically use right-to-left filling
- Highest values on right (visible first)
- Perfect for Urdu/Arabic reading

---

## 📞 Need Help?

1. **Check examples above** - most issues are covered
2. **Run test suite** - verify installation: `python test.py`
3. **Try web version** - simplest way to generate charts
4. **Check Python version** - ensure Python 3.6+

---

## ✨ Pro Tips

✓ Use web version for quick charts
✓ Use Python version for automation
✓ Save CSV for future edits
✓ Print PNG for physical reference
✓ Share PNG via WhatsApp/email
✓ Keep defaults unless you have specific needs

---

## 🎓 Understanding the Output

**Rupees Column:** Price in Pakistani Rupees
**Code Column:** Fuel quantity (Liters-Points-Isharas)

Example: Rs. 408 → 1
- Meaning: 408 rupees buys exactly 1 liter

Example: Rs. 450 → 1-1
- Meaning: 450 rupees buys 1 liter + 1 point

Example: Rs. 50 → -1-I
- Meaning: 50 rupees buys 1 point + 1 ishara

---

**Ready? Open `index.html` or run `python fuel_dispenser_generator.py`!** 🚀
