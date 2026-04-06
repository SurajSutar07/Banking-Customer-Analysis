# 🏦 Banking Customer Analysis Dashboard

---

## 📌 Project Overview

This project focuses on analyzing banking customer data to uncover actionable insights into customer behavior, engagement, and financial performance.  
By leveraging **SQL, Python, and Power BI**, the project delivers an end-to-end data analytics solution — from data cleaning and transformation to interactive dashboard visualization.

It helps financial institutions **identify high-value customers, improve engagement strategies, and make data-driven business decisions**.

---

## 🎯 Project Objectives
- Analyze customer financial behavior and demographic patterns  
- Identify **high-value and engaged customers**  
- Perform customer segmentation based on age, gender, and activity  
- Measure customer engagement using business-driven logic  
- Discover relationships between deposits and credit card usage  
- Build an interactive dashboard for stakeholders  

---

## 🛠️ Tools & Technologies
- **SQL (MySQL)** – Data extraction, transformation, and querying  
- **Python (Pandas, Matplotlib)** – Data cleaning and EDA  
- **Power BI** – Data visualization and dashboard development  
- **Jupyter Notebook** – Analysis environment  

---

## 📂 Dataset

The dataset contains **3000+ customer records** with financial and demographic details.

### Features:
- Client ID  
- Age  
- GenderId  
- Bank Deposits  
- Saving Accounts  
- Checking Accounts  
- Amount of Credit Cards  
- Occupation  
- Year of Joining  

📁 File: `Banking.csv`

---

## 📁 Repository Structure
Banking-Customer-Analysis/
│
├── Banking.csv
├── Banking_queries.sql
├── Banking_Customer_Analysis.ipynb
├── Banking_Dashboard.pbix
└── README.md
---

## 🔄 Data Workflow

1. **Data Collection**  
   Dataset containing 3000+ banking customer records  

2. **Data Storage**  
   Imported into **MySQL database** for structured analysis  

3. **Data Cleaning**  
   - Fixed column naming inconsistencies  
   - Created derived metrics (Total Balance, Engagement Flag)  

4. **SQL Analysis**  
   - Customer count and distribution  
   - Total & average balance  
   - Engagement analysis  
   - Customer segmentation  

5. **Python Analysis**  
   - Data preprocessing  
   - Feature engineering  
   - Exploratory Data Analysis (EDA)  

6. **Data Visualization**  
   Identified patterns and trends through visual analysis  

7. **Dashboard Development**  
   Designed an **interactive Power BI dashboard** with multiple pages  

---

## 🔍 Key SQL Analysis
- Total number of customers  
- Total and average balance  
- Customer segmentation (age & gender)  
- Engagement identification using business logic  
- Engagement rate calculation  
- Customer ranking using window functions  
- Top 10 high-value customers  

---

## 🐍 Python Analysis

📄 File: `Banking_Customer_Analysis.ipynb`

- Data loading and preprocessing  
- Total balance calculation  
- Engagement flag creation  
- Exploratory Data Analysis (EDA)  

---

## 📊 Power BI Dashboard

### Key Features
- KPI Cards:
  - Total Customers  
  - Total Balance  
  - Engagement Rate  

- Visual Insights:
  - Age group distribution  
  - Gender-based analysis  
  - Engagement segmentation  
  - Credit card usage trends  

---

### 🧭 Navigation Feature
- Implemented **navigation buttons for seamless page navigation** across:
  - Home  
  - Loan Analysis  
  - Deposit Analysis  
  - Summary  

---

### 🏠 Home Page Highlights
- Displayed **Top 10 customers based on Year of Joining**  
- Provided a centralized overview of key KPIs  

---

## 📸 Dashboard Preview

Example:<img width="1166" height="652" alt="Banking_Dashboard_HomePage" src="https://github.com/user-attachments/assets/4a1a672a-a0db-4c9d-a3a9-90d0c7b05b81" />
<img width="1126" height="626" alt="Banking_Dashboard_LoanAnalysisPage" src="https://github.com/user-attachments/assets/5c2798a0-4842-43a8-9527-8a8c25ef4aa0" />
<img width="1121" height="628" alt="Banking_Dashboard_LoanDepositePage" src="https://github.com/user-attachments/assets/18b3df73-5e39-436b-95d9-d4abc4b4dc2a" />
<img width="1166" height="656" alt="Banking_Dashboard_SummaryPage" src="https://github.com/user-attachments/assets/21522a8e-d56b-4170-b32f-e9c4c036d930" />

---

## 📈 Key Insights

- Customers with higher deposits are more likely to own multiple credit cards  
- Age group **25–40** represents the largest and most active segment  
- Engaged customers contribute significantly to total balance  
- Positive correlation between credit card usage and deposits  

---

## 🚀 Future Improvements

- Apply machine learning models for customer segmentation  
- Develop customer churn prediction system  
- Build recommendation systems for financial products  
- Deploy dashboard using **Power BI Service**  

---

## 👨‍💻 Author

**Suraj Sutar**  
Data Analyst Intern  

### 🔧 Skills:
- SQL  
- Python  
- Power BI  
- Data Analysis  
- Data Visualization  

---

## ⭐ Project Highlights

- End-to-end data analysis project  
- 3000+ customer dataset analyzed  
- Real-world business problem solving  
- Interactive dashboard with navigation features  
- Strong focus on customer engagement analytics  
