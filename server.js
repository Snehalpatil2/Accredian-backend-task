require("dotenv").config();
const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const { PrismaClient } = require("@prisma/client");
const nodemailer = require("nodemailer"); 

const app = express();
const prisma = new PrismaClient();

app.use(cors());
app.use(bodyParser.json());

//  API Route: Submit Referral
app.post("/api/referrals", async (req, res) => {
  const { referrerName, referrerEmail, refereeName, refereeEmail } = req.body;

  // Validate input fields
  if (!referrerName || !referrerEmail || !refereeName || !refereeEmail) {
    return res.status(400).json({ message: "All fields are required!" });
  }
  
  // Validate email format
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!emailRegex.test(referrerEmail) || !emailRegex.test(refereeEmail)) {
    return res.status(400).json({ message: "Invalid email format!" });
  }

  try {
    // Check if the same referrer has already referred the same referee
    const existingReferral = await prisma.referral.findFirst({
      where: { referrerEmail, refereeEmail },
    });

    if (existingReferral) {
      return res.status(409).json({ message: "You have already referred this person!" });
    }

    // Save referral in the database
    const referral = await prisma.referral.create({
      data: { referrerName, referrerEmail, refereeName, refereeEmail },
    });

    // Send referral email
    const transporter = nodemailer.createTransport({
      service: "gmail",
      auth: {
        user: process.env.EMAIL_USER,
        pass: process.env.EMAIL_PASS,
      },
    });

    const mailOptions = {
      from: process.env.EMAIL_USER,
      to: refereeEmail,
      subject: "You've Been Referred!",
      text: `Hi ${refereeName},\n\n${referrerName} has referred you to check out our awesome course! 🎉\n\nGet started today!`,
    };

    try {
      await transporter.sendMail(mailOptions);
      res.status(201).json({ message: "Referral submitted successfully!" });
    } catch (emailError) {
      console.error("Error sending email:", emailError);
      res.status(500).json({ message: "Referral saved, but email not sent", error: emailError.message });
    }
  } catch (error) {
    console.error("Error submitting referral:", error);
    res.status(500).json({ message: "Error submitting referral", error: error.message });
  }
});

//  API Route: Get All Referrals
app.get("/api/referrals", async (req, res) => {
  try {
    const referrals = await prisma.referral.findMany();
    res.json(referrals);
  } catch (error) {
    console.error("Error fetching referrals:", error);
    res.status(500).json({ message: "Error fetching referrals", error: error.message });
  }
});

// Start the Server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
