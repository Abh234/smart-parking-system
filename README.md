# Smart Parking Management System (ParkSmart)

ParkSmart is a comprehensive Smart Parking Management System designed to simplify the process of finding, booking, and managing parking spots. The system features dedicated portals for both regular users and administrators, offering real-time monitoring of slot availability, secure reservations, and streamlined payment processing.

---

## 🌟 Key Features

### For Users:
- **User Authentication:** Secure registration and login functionality.
- **Real-Time Availability:** View available and booked parking slots in real-time.
- **Slot Booking:** Select a parking spot and book it for a specific date and time duration.
- **Vehicle Management:** Add and manage vehicles (Car, Bike, etc.) associated with your account.
- **Booking History & Dashboard:** Track active bookings, recent expenditures, wallet balance, and past reservations.
- **Wallet Integration:** Keep track of balances and manage parking payments seamlessly.
- **Cancel Bookings:** Ability to cancel bookings and free up slots.

### For Administrators:
- **Admin Dashboard:** High-level overview of total users, slots, active bookings, cancellations, and total revenue.
- **Slot Management:** Add, update, and monitor the status of all parking slots.
- **User Management:** View registered users and their details.
- **Secure Admin Access:** Separate registration and login portal for admins.

---

## 🛠️ Technology Stack

### Frontend
- **HTML5 & CSS3**
- **Tailwind CSS:** For rapid UI styling (via CDN).
- **Alpine.js:** For lightweight frontend reactivity (via CDN).
- **Swiper.js:** For responsive carousels.
- **JavaScript (Vanilla):** For API integration and dynamic rendering.

### Backend
- **Python 3.x**
- **Flask:** Lightweight WSGI web application framework.
- **Flask-CORS:** To handle Cross-Origin Resource Sharing.
- **Flask-MySQLdb & mysql-connector-python:** For database connection and queries.

### Database
- **MySQL:** Relational database management system.

---

## 📂 Project Structure

```
Smart Parking System/
│
├── backend/                  # Python Flask Backend
│   ├── app.py                # Main application server & API routes
│   └── New Text Document.txt # Additional API notes/references
│
├── frontend/                 # Static HTML/JS Frontend
│   ├── index.html            # Landing Page
│   ├── login.html            # User Login
│   ├── register.html         # User Registration
│   ├── Contact.html          # Contact Us Page
│   ├── forgotpassword.html   # Password Reset
│   ├── User/                 # User Dashboard Pages
│   ├── admin/                # Admin Portal Pages
│   └── images/               # Image assets
│
├── Database/                 # MySQL Database Dumps
│   ├── parksmart_admins0.sql
│   ├── parksmart_bookings0.sql
│   ├── parksmart_slots0.sql
│   ├── parksmart_users0.sql
│   └── ... (other tables)
│
└── Smart Parking System.pptx # Project Presentation
```

---

## 🚀 Installation & Setup

### 1. Prerequisites
- Python 3.8+
- MySQL Server installed and running
- A web browser (Chrome, Edge, Firefox, etc.)

### 2. Database Setup
1. Open your MySQL client (e.g., MySQL Workbench, phpMyAdmin, or CLI).
2. Create a new database named `parksmart`:
   ```sql
   CREATE DATABASE parksmart;
   USE parksmart;
   ```
3. Import all the SQL dump files located in the `Database/` directory to create the required tables (`users`, `admins`, `slots`, `bookings`, `payments`, etc.).

### 3. Backend Setup
1. Navigate to the `backend/` directory:
   ```bash
   cd "Smart Parking System/backend"
   ```
2. Install the required Python packages:
   ```bash
   pip install flask flask-cors flask-mysqldb mysql-connector-python
   ```
3. Update Database Credentials (if necessary):
   Open `backend/app.py` and modify the following lines to match your local MySQL configuration:
   ```python
   app.config['MYSQL_HOST'] = 'localhost'
   app.config['MYSQL_USER'] = 'root'
   app.config['MYSQL_PASSWORD'] = 'your_mysql_password' # Update this
   app.config['MYSQL_DB'] = 'parksmart'
   ```
4. Start the Flask server:
   ```bash
   python app.py
   ```
   *The server will typically start on `http://127.0.0.1:5000/`.*

### 4. Frontend Setup
1. You don't need a dedicated server for the frontend. Simply navigate to the `frontend/` folder.
2. Open `index.html` in your web browser.
3. You can use the Live Server extension in VS Code for a better development experience.

---

## 🔗 API Endpoints Overview

The backend exposes several RESTful APIs under `/api/*`:

- **Auth:**
  - `POST /api/register` - Register a new user
  - `POST /api/login` - User login
  - `POST /api/admin/register` - Admin registration
  - `POST /api/admin/login` - Admin login
- **Slots:**
  - `GET /api/slots` - Get all slots (User view)
  - `GET /api/admin/slots` - Get slots (Admin view)
  - `POST /api/admin/slots` - Add new slot
- **Bookings:**
  - `POST /api/book` - Book a slot
  - `GET /api/my-bookings` - Get user's active bookings
  - `GET /api/history` - Get user's booking history
  - `DELETE /api/cancel/<id>` - Cancel a booking
- **Dashboards:**
  - `GET /api/user-dashboard` - User metrics (wallet, total bookings)
  - `GET /api/dashboard` - Admin metrics (revenue, total users, available slots)

---

## 📞 Support & Contact

If you have any questions or run into issues during setup, feel free to submit an issue or reach out via the Contact page on the application.

---

# 🚀 Deployment Guide

This project is deployed using a modern full-stack approach:

* **Frontend (User + Admin UI):** Netlify
* **Backend (Flask API):** Render
* **Database:** MySQL (Railway / Local / Cloud)

---

## 🌐 1. Frontend Deployment (Netlify)

### 📌 Steps:
1. Go to 👉 https://netlify.com
2. Login / Sign up
3. Click **"Add New Site" → Deploy Manually**
4. Drag and drop the `frontend/` folder

### 📁 Important:
Make sure all frontend files are inside:
```text
frontend/
  ├── user/
  ├── admin/
  ├── index.html
  └── ...
```

### ⚙️ Configuration:
* No build command required
* Publish directory: `frontend/`

### 🔗 After Deployment:
Netlify will generate a live URL like:
```text
https://parksmart.netlify.app
```

---

## ⚠️ IMPORTANT (Frontend API Update)
Update all API URLs in your frontend files:
```javascript
// OLD
http://localhost:5000/api/...

// NEW (Render Backend URL)
https://your-backend.onrender.com/api/...
```

---

## ⚙️ 2. Backend Deployment (Render)

### 📌 Steps:
1. Go to 👉 https://render.com
2. Click **New → Web Service**
3. Connect your GitHub repository
4. Select your project repo

### ⚙️ Configuration:
* **Environment:** Python
* **Build Command:**
  ```bash
  pip install -r requirements.txt
  ```
* **Start Command:**
  ```bash
  python app.py
  ```
* **Port:**
  ```text
  5000
  ```

### 🔐 Environment Variables (IMPORTANT)
Add these in Render dashboard:
```env
DB_HOST=your_database_host
DB_USER=your_user
DB_PASSWORD=your_password
DB_NAME=parksmart

RAZORPAY_KEY_ID=your_key
RAZORPAY_SECRET=your_secret
```

### 🌍 After Deployment:
Render will give a backend URL like:
```text
https://parksmart-api.onrender.com
```

---

## 🗄️ 3. Database Setup

**Option 1: Local MySQL**
* Import `parksmart.sql` (or dumps in `Database/`)

**Option 2: Cloud DB (Recommended)**
Use:
* Railway
* PlanetScale
Update backend DB config (`app.py`) accordingly.

---

## 🔄 4. Full System Flow After Deployment
1. User opens Netlify frontend
2. Selects slot and fills booking form
3. Clicks **Pay Now**
4. Frontend calls Render backend
5. Backend creates Razorpay order
6. Payment popup opens
7. User completes payment
8. Backend verifies payment
9. Booking saved in database
10. Slot marked as booked
11. Redirect to success page

---

## 🔐 5. Security & Integrity
* Razorpay payment verified using signature
* Booking stored only after successful payment
* Environment variables protect sensitive data
* Prevents fake or unpaid bookings

---

## 🧪 6. Testing
Use Razorpay Test Mode:
* Test UPI: `success@razorpay`
* Test Card: `4111 1111 1111 1111`

---

## 📌 Final Deployment Output
* **Frontend:** Netlify (UI)
* **Backend:** Render (API)
* **Database:** MySQL
* **Payment:** Razorpay

---

## 🎯 Result
✔ Fully deployed Smart Parking System
✔ Real-time booking + payment
✔ Secure backend verification
✔ Scalable architecture
