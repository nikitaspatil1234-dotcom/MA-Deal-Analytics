# M&A Deal Analytics & Financial Performance Dashboard

## 📌 Project Overview

This project analyzes mergers and acquisitions (M&A) activity in the technology sector to identify trends in deal volume, disclosed deal value, deal size distribution, and acquisition behavior.

The project combines **Python, SQL, and Power BI** to transform raw M&A data into a structured analytical workflow and interactive dashboard.

## 🎯 Objectives

* Analyze M&A deal activity over time
* Identify the companies involved in the largest disclosed acquisitions
* Compare acquiring companies by deal count
* Analyze acquired companies by deal count
* Examine disclosed deal value trends by year
* Categorize deals based on disclosed transaction value
* Identify major industry-level acquisition activity
* Build an interactive Power BI dashboard for business insights

## 🛠️ Tools & Technologies

* **Python** – Data cleaning, transformation and exploratory analysis
* **Pandas & NumPy** – Data manipulation and analysis
* **Matplotlib** – Data visualization
* **SQL Server** – Data storage, querying and aggregation
* **Power BI** – Interactive dashboard and business intelligence
* **GitHub** – Version control and project documentation

## 📂 Project Structure

```text
MA-Deal-Analysis/
│
├── DATA/
│   └── Acquisitions.csv
│
├── Notebook/
│   └── MA_Deal_Analysis.ipynb
│
├── PowerBI/
│   └── MA_Deal_Analytics_Dashboard.pbix
│
├── SQL/
│   └── SQL analysis scripts
│
└── README.md
```

## 📊 Dashboard

The Power BI dashboard contains three analytical pages.

### 1. M&A Deal Analytics Dashboard

Key visuals include:

* Total M&A Deals
* Top Disclosed M&A Deals
* Average Disclosed Deal Value by Year
* Deal Size Category Distribution
* Top 10 Acquisitions by Disclosed Deal Value

### 2. M&A Deal Trends

This page analyzes:

* Top 10 Acquiring Companies by Deal Count
* Top 10 Acquired Companies by Deal Count
* M&A Deal Count by Year
* Total Disclosed Deal Value by Year
* Acquired Company Disclosed Deal Value by Year

### 3. M&A Deal Analysis

This page provides:

* 5 KPI metrics
* Top 10 Largest Industry Deals
* Deal Size Category by Year

## 🔍 Key Analysis Areas

### Deal Volume

The analysis examines how M&A activity changed over time and identifies years with higher or lower deal activity.

### Deal Value

Disclosed transaction values are analyzed to understand the scale of M&A activity and identify the largest disclosed transactions.

### Deal Size Distribution

Deals are categorized into size groups based on disclosed transaction value to understand the distribution of small, medium and large transactions.

### Company-Level Analysis

The project analyzes both acquiring and acquired companies to identify organizations with significant M&A activity.

### Industry Analysis

Industry-level transaction data is used to identify major acquisition activity across technology-related sectors.

## 📈 Analytical Workflow

```text
Raw M&A Dataset
       ↓
Data Cleaning & Transformation
       ↓
Python Exploratory Analysis
       ↓
SQL Analysis & Aggregation
       ↓
Power BI Data Modeling
       ↓
Interactive Dashboard
       ↓
Business Insights
```

## 💡 Business Value

This project demonstrates how structured data analysis can be used to evaluate M&A activity and support business-oriented analysis.

The dashboard can help users explore:

* M&A activity trends
* Transaction value patterns
* Acquisition strategies
* Major market participants
* Deal size distribution
* Industry-level acquisition activity

## 👩‍💻 Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis
* Python / Pandas / NumPy
* SQL Querying
* Data Aggregation
* Business Intelligence
* Power BI Dashboard Development
* Data Visualization
* Financial & M&A Analytics
* GitHub Project Management

## 📁 Dataset

The project uses a technology-sector mergers and acquisitions dataset containing information about acquiring companies, acquired companies, announcement dates, industries and transaction values.

Because some transaction values are not publicly disclosed, the analysis distinguishes between **disclosed and undisclosed deal values** where appropriate.

## 🚀 Future Improvements

Potential extensions to this project include:

* Additional industry-level analysis
* Acquisition trend analysis by geography
* Interactive company-level drilldowns
* Advanced Power BI measures using DAX
* Predictive analysis of M&A activity
* Automated data refresh pipeline

## 📌 Conclusion

This project demonstrates an end-to-end data analytics workflow, starting from raw M&A data and progressing through **Python analysis, SQL querying and Power BI visualization** to produce an interactive business intelligence dashboard.

