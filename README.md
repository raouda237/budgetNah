# BudgetNah

![Flutter](https://img.shields.io/badge/Framework-Flutter-blue)
![Dart](https://img.shields.io/badge/Language-Dart-blue)
![Architecture](https://img.shields.io/badge/Architecture-MVVM-green)
![Database](https://img.shields.io/badge/Database-Local%20Storage-orange)
![License](https://img.shields.io/badge/License-MIT-lightgrey)

**BudgetNah** is a cross-platform mobile application developed with **Flutter and Dart**.
It helps families efficiently manage their income and expenses in their daily lives.

The application allows users to record, organize, and analyze financial transactions through a modern and intuitive dashboard. It also integrates smart features that use **smartphone sensors** to improve the user experience.

---

#  Overview

BudgetNah allows users to:

* Track income and expenses
* Analyze financial habits
* Plan a monthly budget
* Simplify transaction entry

---

#  Features

## Financial Management

* Add and manage **income**
* Add and manage **expenses**
* Categorize financial transactions

##  Dashboard

* Visualization of income and expenses
* Monthly financial statistics
* Budget analysis

## Receipt Scanner

The app uses the **smartphone camera** to scan receipts and invoices.

Using **OCR (Optical Character Recognition)**, the application can automatically extract:

* Amount
* Date
* Description

This helps automatically fill in expense information.

##  Smart Dark Mode

The application automatically activates **dark mode** using the smartphone’s **light sensor**, improving visual comfort for the user.

---

#  Technologies Used

* **Flutter**
* **Dart**
* **Provider / Riverpod (State Management)**
* **Local Database (Hive / SQLite / SharedPreferences)**
* **Camera Plugin**
* **ML Kit OCR**
* **Material Design 3**

---

#  Project Architecture

The project follows a clean and maintainable architecture inspired by the **MVVM pattern**.

```
BudgetNah
│
├── lib
│   ├── models
│   ├── services
│   ├── providers
│   ├── screens
│   ├── widgets
│   └── utils
│
└── assets
```

---

#  Installation

## Clone the repository

```bash
git clone https://github.com/raouda237/budgetNah.git
```

##  Install dependencies

```bash
flutter pub get
```

##  Run the application

```bash
flutter run
```

Compatible with:

*  Android
*  iOS
* Web (optional)
* Desktop (optional)

---

#  Future Improvements

* Cloud synchronization
* User authentication
* Multi-user (family management)
* PDF / Excel export
* Smart notifications
* Automatic data backup

---

# Contribution

1. Fork the project
2. Create a new branch

```
git checkout -b feature/new-feature
```

3. Commit your changes

```
git commit -m "Add new feature"
```

4. Push the branch

```
git push origin feature/new-feature
```

5. Open a **Pull Request**

---

#  License

This project is distributed under the **MIT License**.

---

#  Author

Project developed as part of learning **mobile application development with Flutter & Dart**.

---
