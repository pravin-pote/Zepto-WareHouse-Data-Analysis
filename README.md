# 🛒 Zepto Product Data Exploration using MySQL

This project focuses on exploring and analyzing a **Zepto product dataset** using **MySQL 8.2**.  
The aim is to clean, explore, and derive insights from real-world e-commerce data including pricing, discounts, and stock availability.

---

## 🚀 Project Overview

- Load and clean CSV data using MySQL
- Fix permission issues while importing datasets
- Perform exploratory data analysis (EDA) using SQL
- Generate insights about pricing, discounts, and categories

---

## ⚙️ MySQL Setup

**Path to open MySQL Command Line:**
```bash
C:\Program Files\MySQL\MySQL Server 8.2\bin\cmd
```

**Login Command:**
```bash
mysql -u root -p
Password: Root@123
```

**Create a new database:**
```sql
CREATE DATABASE zepto;
USE zepto;
```

---

## 🧩 Fixing File Permission Error

By default, MySQL doesn’t allow local file imports.  
Enable it using:
```sql
SHOW GLOBAL VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = 1;
```

Then load the CSV file into your table.

---

## 📊 Data Exploration Queries

(Refer to `zepto_queries.sql` file for all SQL queries.)

---

## 📈 Key Learnings

- Handling **file import permissions** in MySQL  
- Data cleaning and exploration using **SQL**  
- Performing **aggregations, grouping, and CASE analysis**  
- Gaining practical business insights from raw data

---

## 🧠 Tech Stack

| Tool | Purpose |
|------|----------|
| **MySQL 8.2** | Database |
| **Windows CMD** | Execution Environment |
| **CSV Dataset** | Source Data |

---

## 📁 Folder Structure
```
📦 Zepto-MySQL-Project
 ┣ 📄 README.md
 ┣ 📄 zepto_queries.sql
 ┣ 📊 zepto_dataset.csv
 ┗ 📁 screenshots
     ┣ mysql_setup.png
     ┣ data_exploration.png
     ┗ revenue_query.png
```

---

## 👤 Author

**Pravin P. Pote**  
🎓 Pursuing CDAC – Big Data Analytics  
💼 Experience: Data Operations, MIS, and SQL Projects  
🔗 [GitHub Profile](#)

---

## 🌟 Support

If you liked this project:  
⭐ Star the repo  
🔁 Fork it  
🗨️ Share your thoughts  
