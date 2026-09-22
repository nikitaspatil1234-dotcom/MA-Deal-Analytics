# M&A Deal Analytics & Financial Performance Dashboard

## Project Objective

The objective of this project is to analyze technology-sector mergers and acquisitions (M&A) data to identify acquisition trends, deal values, major acquiring companies, largest transactions, and deal-size patterns.

The project combines Python, SQL, and Power BI to perform data cleaning, exploratory analysis, SQL-based business analysis, and interactive dashboard development.

---

## Business Questions

This project answers key business questions such as:

- How has M&A deal activity changed over the years?
- Which companies made the most acquisitions?
- Which companies were acquired most frequently?
- What are the largest disclosed M&A transactions?
- How much total value was involved in disclosed deals?
- What is the average disclosed deal value?
- How are deals distributed across different deal-size categories?
- What proportion of transactions have disclosed versus undisclosed values?

---

## Dataset

The project uses a Technology Mergers & Acquisitions dataset containing information about acquisitions, acquiring companies, acquired companies, announcement dates, acquisition years, and deal prices.

The original dataset contains both disclosed and undisclosed transaction values.

---

## Tools & Technologies

- **Python**
  - Pandas
  - NumPy
  - Matplotlib
  - Jupyter Notebook

- **SQL**
  - Microsoft SQL Server
  - SQL Server Management Studio (SSMS)

- **Business Intelligence**
  - Microsoft Power BI

- **Version Control**
  - GitHub

---

## Data Cleaning & Preparation

The dataset was cleaned and prepared before analysis.

Key data preparation steps included:

- Loading and inspecting the acquisition dataset
- Cleaning acquisition year values
- Cleaning and validating deal announcement dates
- Cleaning the deal price column
- Separating disclosed and undisclosed deal values
- Creating a cleaned numerical price field (`price_clean`)
- Validating the cleaned data using SQL
- Preparing the data for Power BI analysis

---

## SQL Analysis

SQL Server was used to validate the dataset and perform business-focused analysis.

Key SQL analyses include:

1. Overall acquisition KPIs
2. Deal count by year
3. Total disclosed deal value by year
4. Average disclosed deal value by year
5. Top 10 acquiring companies
6. Top 10 acquired companies
7. Top 10 largest disclosed transactions
8. Deal-size categories by year
9. Disclosed versus undisclosed transactions

### Validated KPIs

| KPI | Result |
|---|---:|
| Total Acquisitions | 1,643 |
| Disclosed Deals | 421 |
| Undisclosed Deals | 1,222 |
| Total Disclosed Deal Value | $463.03B |
| Average Disclosed Deal Value | $1.10B |

---

## Power BI Dashboard

The Power BI dashboard was developed to provide an interactive view of M&A activity.

### Dashboard Page 1 — Deal Analysis

The dashboard includes:

- Total Acquisitions
- Disclosed Deals
- Undisclosed Deals
- Total Disclosed Deal Value
- Average Disclosed Deal Value
- Top 10 Largest Individual Deals
- Deal Size Category by Year

### Dashboard Page 2 — M&A Deal Trends & Company Analysis

The dashboard includes:

- Top 10 Acquiring Companies by Deal Count
- Top 10 Acquired Companies by Deal Count
- M&A Deal Count by Year
- Total Disclosed Deal Value by Year
- Average Disclosed Deal Value by Year

---

## Key Findings

- The dataset contains **1,643 acquisition transactions**.
- **421 transactions** have disclosed deal values.
- **1,222 transactions** have undisclosed deal values.
- The total disclosed transaction value is approximately **$463.03 billion**.
- The average disclosed deal value is approximately **$1.10 billion**.
- Cisco Systems has the highest acquisition count in the dataset with **162 acquisitions**.
- Google follows with **161 acquisitions**.
- The largest disclosed transaction in the dataset is **Comcast's acquisition of Time Warner Cable**, valued at **$45 billion**.
- Deal sizes were categorized into Small, Medium, Large, and Mega transactions for year-level analysis.

---

## Project Structure

```text
MA-Deal-Analytics/
│
├── DATA/
│   └── Acquisitions.csv
│
├── Images/
│   └── Dashboard screenshots
│
├── Notebook/
│   └── MA_Deal_Analysis.ipynb
│
├── PowerBI/
│   └── M&A Deal Analytics Dashboard.pbix
│
└── SQL/
    └── MA_Deal_Analytics_Analysis.sql
