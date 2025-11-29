# 🎯 SQL Murder Mystery – IDC 21 Days SQL Challenge
🕵️‍♀️ A Real-World Data Investigation Using SQL & Logical Reasoning




------------------------------------------------------------------------------------------------------------------------------------------------------------------

📌 Project Overview

This project is the capstone assignment of the Indian Data Club (IDC) – 21 Days SQL Challenge, where I solved a fictional murder case using only SQL queries.

The CEO of TechNova Inc. was found dead at 9 PM on October 15, 2025.
All digital clues were hidden inside multiple tables — and my job was to uncover the killer.

This project showcases:

✔ SQL Joins

✔ Filtering & Time Analysis

✔ Cross-table investigation

✔ Logical thinking

✔ Analytical storytelling through SQL

----------------------------------------------------------------------------------------------------------------------------------------------------------------

🗃 Dataset Overview

The dataset contains 5 major tables:

Table	                                  Contents
employees	                              Employee details
keycard_logs	                          Room entry/exit times
calls	                                  Phone logs
alibis	                                Claimed locations by employees
evidence	                              Clues found at crime scenes

-----------------------------------------------------------------------------------------------------------------------------------------------------------------

🧭 Investigation Steps

Step 1 — Identify Crime Scene

Used evidence table to locate room + timeline.

Step 2 — Who Entered CEO Office Around 9 PM?

Filtered keycard logs between 20:50–21:10.

Step 3 — Who Lied in Their Alibi?

Compared claimed location vs keycard logs.

Step 4 — Suspicious Phone Calls

Checked for calls during the murder window.

Step 5 — Combine All Evidence

Cross-referenced all conditions using CTEs.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

🟥 Final Killer Identified: David Kumar

David Kumar:

✔ Entered CEO Office in the murder window

✔ Lied about his location

✔ Made a suspicious call at 20:55

✔ Evidence supported his presence

🔎 All SQL analysis pointed to him as the murderer.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

🐘 Tech Stack

PostgreSQL

pgAdmin 4

SQL (Joins, CTEs, Aggregates, Filters)

------------------------------------------------------------------------------------------------------------------------------------------------------------------

🛠 How to Run This Project

Clone this repository:

git clone https://github.com/yourusername/IDC-s-SQL-Mystery-Challenge.git


Open pgAdmin → Create a database:

CREATE DATABASE murder_mystery;


Run:

SQL_Murder_Mystery.sql


Execute investigation queries step-by-step.

------------------------------------------------------------------------------------------------------------------------------------------------------------------

📸 Screenshots

(Add your screenshots here)

------------------------------------------------------------------------------------------------------------------------------------------------------------------

🤝 Credits

Thanks to:

Indian Data Club

DPDZero

for designing this engaging SQL investigation challenge.
