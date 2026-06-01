# 📊 Customer Churn Analysis

A data analysis project to identify why telecom customers leave and what patterns are associated with churn — using Python, SQL, and Power BI.

---

## 📌 Project Overview

Customer churn is one of the biggest challenges in the telecom industry. This project analyzes a dataset of **7,043 telecom customers** to uncover key factors driving churn, helping businesses take proactive steps to retain customers and reduce revenue loss.

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| Python (Pandas) | Data cleaning & preprocessing |
| PostgreSQL | Data storage & SQL analysis |
| Power BI | Interactive dashboard & visualization |

---

## 📂 Dataset

- **Domain:** Telecom
- **Records:** 7,043 customers
- **Features:** 21 columns including contract type, payment method, internet service, tenure, monthly charges, and churn status
- **File:** `cleaned_churn.csv`

---

## 📊 Dashboard Preview

![Customer Churn Dashboard](dashboard.png)

The interactive Power BI dashboard includes:
- **6 KPI Cards** — Total Customers, Churn Rate, Total Churned Customers, Monthly Revenue, Avg Tenure, Avg Revenue Per Customer
- **Churned vs Retained** — Donut chart
- **Churn Rate by Contract Type** — Bar chart
- **Churn Rate by Internet Service** — Bar chart
- **Churn Rate by Tenure Group** — Area chart
- **Churn Rate by Payment Method** — Bar chart
- **Churn Rate by Senior Citizen** — Bar chart
- **Monthly Revenue: Retained vs Churned** — Bar chart
- **2 Slicers** — Contract Type & Internet Service

---

## 🔍 Key Findings

1. **Overall Churn Rate: 26.54%** — 1,869 out of 7,043 customers left the service
2. **Month-to-month contract customers churn the most (42.71%)** — compared to just 2.83% for two-year contract customers
3. **Fiber Optic users have the highest churn rate (41.89%)** — significantly higher than DSL (18.96%) and no internet service (7.40%)
4. **Electronic check payment method has the highest churn (45.29%)** — while bank transfer (automatic) has the lowest at 16.71%
5. **New customers (0–12 months) churn the most (47.44%)** — churn rate drops significantly as tenure increases
6. **Churned customers had higher average monthly charges ($74.43)** vs non-churned customers ($61.27)
7. **Churned customers stayed only ~18 months on average** — vs 37.6 months for retained customers
8. **Senior citizens churn more (41.68%)** compared to non-senior customers (23.61%)
9. **Customers without tech support churn at 41.64%** — nearly 3x higher than those with tech support (15.17%)
10. **Revenue lost due to churn: ~$139K monthly** — retained customers generate $317K vs churned customers $139K

---

## 🙋‍♀️ Connect with Me

- 💼 [LinkedIn](https://www.linkedin.com/in/bhavika-chouhan-920b03358)
- 🐙 [GitHub](https://github.com/bhavika-chouhan)
