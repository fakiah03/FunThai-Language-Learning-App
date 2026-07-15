# 🇹🇭 FunThai - Interactive Thai Language Learning App

An educational Android application developed using **MIT App Inventor**, integrated with a **PHP REST API** backend and a **MySQL (Laragon)** database for real-time progress tracking, vocabulary flashcards, and interactive audio quizzes.

## ✨ Features
* **User Authentication & Profiles:** Login/Register system with session persistence using TinyDB & MySQL.
* **Interactive Flashcards:** Vocabulary cards with real-time **Thai Audio Pronunciation** (Text-to-Speech & Server Audio streaming) and image integration.
* **Dynamic Quiz Module:** Randomized multiple-choice questions fetched directly from MySQL database with immediate feedback.
* **Progress Analytics:** Real-time tracking of learned words, total quizzes played, and high scores.

## 📁 Project Structure
* `FunThai.aia` - Source code file for MIT App Inventor.
* `FunThai.apk` - Ready-to-install Android application package.
* `/api_funthai/` - PHP backend scripts (`get_profile.php`, `get_all_vocab.php`, etc.), image assets, and audio files.
* `/api_funthai/funthai_db.sql` - MySQL database structure and sample vocabulary data.

## 🚀 How to Setup & Run (For Lecturers / Testers)

### 1. Backend Setup (Laragon / XAMPP)
1. Start Apache and MySQL on **Laragon**.
2. Copy the `/api_funthai` folder into your web server root (e.g., `C:\laragon\www\api_funthai`).
3. Open HeidiSQL/phpMyAdmin, create a database named `funthai_db`, and import the `funthai_db.sql` file.
4. *Note: Update the server IP address in the MIT App Inventor web blocks to match your local machine IP.*

### 2. App Installation
* **Option A (Quick Test):** Download `FunThai.apk` directly to an Android phone and install it.
* **Option B (Source Code):** Open MIT App Inventor, go to `Projects > Import project (.aia) from my computer`, and select `FunThai.aia`.

---
**Developed by:** SITI NORUFAKIAH BINTI ADNAN 2024406938  
**Course:** CSC264/ DIPLOMA IN COMPUTER SCIENCE

