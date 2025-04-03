**INTERNATIONAL DEBTS OVERVIEW**

This project will focus on orecasting international debt trends using World Bank data. 
The dataset includes information on the total debt (in USD) owed by developing countries across multiple debt categories from 1970 to 2015.

The goal of this SQL project is to analyze international debt data to extract meaningful insights regarding total debt, debt indicators, and repayment trends. By executing structured queries, we aim to answer key financial questions and summarize notable patterns in global debt. The findings will help understand debt distribution among different countries and debt categories.

This project will also serve as a practical demonstration of SQL querying techniques, aggregation functions, and data analysis in a financial context. The analysis can provide useful insights for policymakers, financial analysts, and economists interested in global debt trends.

###DATA SOURCES

Since have used only one data set in this project have used international debt dataset as csv uploaded in the repository
## Tools used
 postgress- used for managing database 
 
 Dbeaver for querying and managing database
### OBJECTIVES AND PROJECT ANALYSIS

### **Objectives and SQL Query Strategy:**


## 1.Calculate total global debt as an important metric that represents the cumulative financial obligations of all recorded countries. Understanding this number provides insights into the overall financial burden and potential economic risks.
- **SQL Query:**
  ```sql
  SELECT SUM(debt_amount) AS total_global_debt 
  FROM internationa_debts2;
  ```
- **Expected Outcome:**  A single numeric value representing the total global debt. This value will indicate the aggregate debt burden of all countries combined.
- **Analysis Significance:** This information helps assess the financial health of nations collectively and may be used to compare historical debt trends over time.

 ## 2. Measure how diverse the dataset is and how many unique countries are being analyzed.
- **SQL Query:**
  ```sql
  SELECT COUNT(DISTINCT country) AS total_countries 
  FROM internationa_debts2;
  ```
- **Expected Outcome:** The total number of unique countries included in the dataset.
- **Analysis Significance:**  Knowing the number of distinct countries helps in evaluating data coverage and understanding the geographical distribution of debt. This insight can guide further analysis on regional debt trends.


 ## 3. identify  Debt indicators that  classify different types of financial obligations. This  allows us to categorize and analyze various debt dimensions such as short-term vs. long-term debt or principal repayments vs. interest payments.
- **SQL Query:**
  ```sql
  SELECT DISTINCT debt_indicator, description 
  FROM internationa_debts2;
  ```
- **Expected Outcome:** A list of debt indicator types and their explanations.
- **Analysis Significance:**  Understanding different debt categories can help in identifying patterns, trends, and areas that require financial intervention. This data helps classify debt into meaningful categories for further study.

  
### 4. Determine which country owes the most debt and assess its financial risk.
- **SQL Query:**
  ```sql
  SELECT country, SUM(debt_amount) AS total_debt 
  FROM internationa_debts2 
  GROUP BY country 
  ORDER BY total_debt DESC 
  LIMIT 1;
  ```
- **Expected Outcome:** The country with the highest total debt and the corresponding amount.
- **Analysis Significance:** This insight is crucial for policymakers and economists to understand which countries have the highest financial burden and may need debt restructuring.
  

### 5.To analyze distribution of debt across different categories and identify trends in debt accumulation.
- **SQL Query:**
  ```sql
  SELECT debt_indicator, AVG(debt_amount) AS avg_debt 
  FROM internationa_debts2
  GROUP BY debt_indicator;
  ```
- **Expected Outcome:** A table displaying each debt indicator and its corresponding average debt amount.
- **Analysis Significance:** This insight is crucial for policymakers and economists to understand which countries have the highest financial burden and may need debt restructuring or external financial assistance.



### 6.Find out which country is making the highest repayments, which could indicate strong financial management or a high debt burden requiring large repayments.
- **SQL Query:**
  ```sql
  SELECT country, SUM(principal_repayment) AS total_repayment 
  FROM internationa_debts2 
  GROUP BY country 
  ORDER BY total_repayment DESC 
  LIMIT 1;
  ```
- **Expected Outcome:**  A single record showing the country that has made the highest total principal repayments and the corresponding amount.
- **Analysis Significance:**Understanding which country repays the most debt can help in assessing financial discipline and economic stability. A high repayment rate might indicate a country’s strong economy or an urgent need to service a high debt.

  

### 7.Identify the debt indicator that appears most frequently in the dataset.
- **SQL Query:**
  ```sql
  SELECT debt_indicator, COUNT(*) AS occurrence_count 
  FROM internationa_debts2
  GROUP BY debt_indicator 
  ORDER BY occurrence_count DESC 
  LIMIT 1;
  ```
- **Expected Outcome:** The most frequently occurring debt indicator and its count.
- **Analysis Significance:**  The most common debt indicator can reveal which type of debt is more prevalent among nations and may be a focus area for international financial institutions and debt management strategies.

  
  
### 8. To uncover notable patterns in the dataset, such as rising or falling debt levels, repayment trends, or country-specific anomalies.
- **SQL Query Example:**
  ```sql
  SELECT country, debt_indicator, SUM(debt_amount) AS total_debt 
  FROM internationa_debts2
  GROUP BY country, debt_indicator 
  ORDER BY total_debt DESC;
  ```
- **Expected Outcome:** Identification of trends in debt accumulation across different countries and debt indicators.
- **Analysis Significance:**  Key findings can provide valuable insights into debt sustainability and economic vulnerabilities among nations. Identifying trends in debt accumulation can help in forecasting future economic conditions and implementing corrective policies.

---
### Documentation Process:

# 1.Data Exploration:
Examine dataset columns and format and undersatand to extract the objectives needed
Recognize dominant fields such as debt_indicator, debt_amount, country, and principal_repayment.

 # 2.Query Execution:
Run all SQL queries in a structured manner.
Check outputs and refine queries if necessary.

 # 3.Insights & Analysis:
Summarize key findings for example  repayment patterns, common debt indicators, leading debtor country.This is to
Contrast repayment patterns by different debt indicators and regions.


# 4.Final Report Preparation:
Integrate all findings and results by
documenting key observations and potential avenues for future research.






