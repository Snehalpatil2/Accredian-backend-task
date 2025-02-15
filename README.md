# Accredian Backend Task

This is the backend for the **Refer & Earn** landing page, built using Express.js and MySQL with Prisma ORM.

## 🚀 Features

- **REST API**: Handles referral form submissions.
- **MySQL Database**: Stores referral data.
- **Email Notification**: Sends referral confirmation emails via Gmail API.
- **Error Handling**: Validates input and prevents invalid submissions.

## 🛠 Tech Stack

- Node.js (Express.js)
- MySQL (Prisma ORM)
- Nodemailer (for email notifications)

## 📦 Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/Snehalpatil2/Accredian-backend-task.git
   ```
2. Navigate to the project directory:
   ```bash
   cd Accredian-backend-task
   ```
3. Install dependencies:
   ```bash
   npm install
   ```
4. Set up the database using Prisma:
   ```bash
   npx prisma migrate dev --name init
   ```
5. Start the server:
   ```bash
   npm start
   ```

## 🔥 Deployment

This project is deployed on **Render**.  
Live API URL: "https://accredian-backend-task-it93.onrender.com/api/referrals"

## 📄 Environment Variables

Create a `.env` file in the root directory and add the following:
```
DATABASE_URL="mysql://username:password@localhost:3306/refer_earn"
GMAIL_USER="your-email@gmail.com"
GMAIL_PASS="your-app-password"
```

## 📜 Auther
- Snehal Jitendra Patil
