📦 Amazon India E-Commerce Sales Analysis (SQL + Power BI)

![Dashboard Preview](./dashboard-screenshot.png) <!-- Replace with your image path -->

🧠 Problem Statement

Amazon India operates at massive scale, with thousands of SKUs across diverse regions and fulfilment models. Understanding where revenue comes from, which categories perform best, and where operational issues like cancellations occur is key for business success.

Objective:  
Perform end-to-end sales data analysis using SQL and Power BI on real e-commerce data (128K+ records) to extract actionable business insights.



📁 Dataset Overview

| Attribute           | Description                          |
|---------------------|--------------------------------------|
| Order_ID            | Unique identifier for each order     |
| Order_Date          | Order placement date                 |
| Category            | Type of product                      |
| Amount              | Total order value in INR             |
| Ship_State          | Customer state                       |
| Status              | Order status (Shipped, Cancelled)    |
| Fulfilment          | Fulfilled by Amazon or Merchant      |
| Qty                 | Quantity ordered                     |
| ...                 | +20 more attributes like SKU, ASIN   |

🔗 [Dataset Source (Kaggle)](https://www.kaggle.com/datasets/thedevastator/unlock-profits-with-e-commerce-sales-data)



⚙️ Tools & Tech Used

- SQL (MySQL) – Data Cleaning & Business Logic
- Power BI – Dashboard & Visualization
- GitHub – Version Control
- Excel – Pre-cleaning & quick views



🔧 Data Cleaning Steps (in SQL)

1. Parsed `Order_Date` into DATE format using `STR_TO_DATE`.
2. Casted `Amount` column from VARCHAR to `DECIMAL(10,2)`.
3. Converted `B2B` string (True/False) into binary flag (1/0).
4. Trimmed `Ship_Postal_Code` and handled nulls in optional fields.
5. Filtered & validated a 200-row sample to optimize speed during dev phase.



📊 Key Business Insights

🏷️ 1. Top Performing Categories
- Set products brought ₹60.2K in revenue with the highest AOV of ₹803.
- Kurta had most orders (85), but lower AOV (₹437).
> 👉 Strategy: Promote Set products & bundle kurtas for increased value.

🌍 2. State-Wise Sales
- Karnataka & Maharashtra lead in both volume & revenue.
- Uttarakhand & Nagaland show high-value orders despite low volume.
> 👉 Strategy: Localized campaigns in premium states, scale ops in high-demand zones.

🚚 3. Fulfilment Analysis
- Amazon fulfilment handled 155 orders, ₹91.4K revenue.
- Merchant fulfilment also performed strongly, with near-similar AOV.
> 👉 Strategy: Scale merchant fulfilment with improved trust protocols.

❌ 4. Order Status Breakdown
- 21 Cancelled orders (10.5%) had the highest AOV of ₹711.
> 👉 Strategy: Investigate and fix premium order drop-offs.



📈 Dashboard Overview (Power BI)

🔹 KPI Cards – Orders, Revenue, Avg Order Value  
🔹 Category-wise Revenue – Bar Chart  
🔹 State-wise Orders & Revenue – Map & Table  
🔹 Order Status – Donut Chart  
🔹 Fulfilment Comparison – Stacked Column  
🔹 Date Trend (Optional) – Line chart for revenue over time


What I Learned

- Real-world data is messy — cleaning is 50% of the job.
- Even simple SQL queries drive powerful insights.
- Domain knowledge + data storytelling = WOW projects.
- Attention to cancellation trends is critical in premium retail.



Connect With Me

Medhansh Medishetty 
💼 Aspiring Data Analyst | Power BI & SQL Enthusiast  
📧 [Email Me] | 🌐 [LinkedIn] | 💻 [GitHub](https://github.com/MedhanshMedishetty/Data-Analytics-Portfolio)


> ⭐ If this project helped you or inspired your own work, consider giving it a star!


