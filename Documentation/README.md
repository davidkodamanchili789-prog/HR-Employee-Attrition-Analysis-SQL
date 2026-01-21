# HR Analytics: Employee Retention & Promotion Pipeline 📊

## 🎯 Business Objective
High employee turnover costs companies millions in recruitment and lost productivity. This project provides a **Data-Driven Retention Strategy** by identifying high-risk employees and analyzing career progression lags.

## 🛠️ Data Pipeline Workflow
1. **Data Cleaning (MySQL):** Standardized raw HR data and handled missing values.
2. **Feature Engineering (SQL):** - Created an **Attrition Risk Model** using `CASE WHEN` logic (based on Job Satisfaction & Overtime).
   - Generated a **Promotion Priority Rank** using `RANK()` Window Functions.
3. **Data Visualization (Power BI):** - Built a relational model between Master, Promotion, and Summary datasets.
   - Developed interactive DAX measures for Attrition Rates and Performance KPIs.

---

## 📈 Dashboard Deep Dive

### Page 1: Workforce Strategic Insights
![Workforce Overview](./Screenshot%202025-12-27%20155058.png)
* **Goal:** Executive summary of the company's health.
* **Key Visuals:** KPI cards for Headcount/Attrition, Donut chart for Dept distribution, and Salary analysis by Role.
* **Insight:** Allows leadership to see which departments are over-budget or under-staffed at a glance.

### Page 2: Retention Risk & Attrition Drivers
![Retention Risk](./Screenshot%202025-12-27%20155116.png)
* **Goal:** Identifying the "Why" and "Who" behind turnover.
* **Key Visuals:** Attrition Risk Treemap, Overtime Impact bar chart, and a Satisfaction Heatmap.
* **Actionable Output:** A "Critical Risk" watchlist showing employees with low satisfaction and high overtime hours.

### Page 3: Career Progression & Promotion Pipeline
![Promotion Pipeline](./Screenshot%202025-12-27%20155132.png)
* **Goal:** Future talent planning.
* **Key Visuals:** Stagnation Scatter Plot (Years at Company vs. Promotion Lag) and Promotion Priority list.
* **Insight:** Identified roles where employees are "stuck" for 4+ years, providing a roadmap for HR's next promotion cycle.

---

## 💡 Key Findings & Recommendations
* **Overtime Crisis:** Data proves that employees working overtime have a significantly higher attrition rate. *Recommendation: Review workload distribution in high-impact departments.*
* **Retention Alert:** 10% of the workforce falls into the "Critical Risk" category. *Recommendation: Conduct stay-interviews for these specific individuals.*
* **Promotion Lag:** Certain technical roles show a stagnation period of 5+ years. *Recommendation: Implement mid-level career milestones to maintain engagement.*

---

## 📂 Repository Structure
- `Data/`: Contains `powerbi_master.csv`, `powerbi_promotions.csv`, and `powerbi_dept_summary.csv`.
- `Scripts/`: SQL queries used for data transformation and ranking.
- `Dashboard/`: The `.pbix` Power BI file.
- `Documentation/`: Full project screenshots and PDF report.