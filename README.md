# ParkSmart

ParkSmart is a static HTML/CSS/JavaScript frontend with a Flask API and MySQL database for parking-slot management, bookings, admin views, and payment-record workflows.

## Project layout

- `frontend/`: user and admin pages; configure the API URL in `frontend/api-config.js`.
- `backend/`: Flask application and Python dependencies.
- `Database/schema.sql`: empty, privacy-safe MySQL schema for a fresh database.
- `Database/parksmart_*.sql`: local exports are intentionally excluded from Git because they contain personal data and plaintext credentials. Do not publish them.
- `DEPLOYMENT.md`: GitHub push, local run, and cloud deployment steps.

## Local development

1. Create a MySQL database using `Database/schema.sql`.
2. In PowerShell, set backend environment variables and run the Flask app from `backend/`:
   ```powershell
   $env:DB_HOST = "127.0.0.1"
   $env:DB_USER = "your_mysql_user"
   $env:DB_PASSWORD = "your_mysql_password"
   $env:DB_NAME = "parksmart"
   python app.py
   ```
3. Open `http://127.0.0.1:5000/test` to check the API, then serve `frontend/` with VS Code Live Server or another static server.
4. For local use, `frontend/api-config.js` defaults to `http://127.0.0.1:5000`.

## Important security status

This codebase is a development/demo project, not production-ready for real accounts or payments. Current authentication stores/compares passwords as plaintext, many API routes lack authorization, and the manual UPI confirmation endpoint trusts the browser's claim that payment happened. Do not use real customer data, credentials, or money until authentication, authorization, password hashing/reset, and server-verified payment processing are implemented and reviewed.

See [DEPLOYMENT.md](DEPLOYMENT.md) for deployment and GitHub instructions.
