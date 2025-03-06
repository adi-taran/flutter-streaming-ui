## **Guest Premium Series 📺**  
A **Flutter** application for streaming premium series content.

### **📌 Features**
- 🎨 Modern UI with smooth navigation  
- 🖼️ High-quality **episode thumbnails**  
- 📺 Series **banner and episode previews**  
- 🚀 Fast and responsive

---

### **🛠️ Installation**
1. **Clone the repository**  
   ```sh
   git clone https://github.com/adi-taran/guest_premium_series.git
   cd guest_premium_series
   ```

2. **Install dependencies**  
   ```sh
   flutter pub get
   ```

3. **Run the app**  
   - **For Android/iOS**:  
     ```sh
     flutter run
     ```
   - **For Web**:  
     ```sh
     flutter run -d chrome --web-renderer html
     ```

---

### **📂 Folder Structure**
```
guest_premium_series/
│── assets/               # Images and other assets
│── lib/                  # Main source code
│   ├── main.dart         # Entry point of the app
│── pubspec.yaml          # Project dependencies and assets
│── README.md             # Project documentation
```

---

### **📌 Assets**
Make sure the following **assets** are placed in the `assets/` folder:

- `banner.jpg`
- `ep1.jpg`
- `ep2.jpg`
- `ep3.jpg`
- `ep4.jpg`
- `ep5.jpg`
- `ep6.jpg`

---

### **⚠️ Common Issues & Fixes**
**1️⃣ Assets not loading?**  
- Verify that the `assets/` folder contains the correct images.  
- Check `pubspec.yaml`:
  ```yaml
  flutter:
    uses-material-design: true
    assets:
      - assets/
  ```
- Run:
  ```sh
  flutter clean
  flutter pub get
  flutter run
  ```

**2️⃣ Web build issues?**  
Use:
```sh
flutter run -d chrome --web-renderer html
```

---

### **🛠️ Tech Stack**
- **Flutter** (Dart)  
- **Material UI**  
- **Responsive Design**  

---

### **📜 License**
This project is **open-source**. Feel free to modify and use it! 🚀  

