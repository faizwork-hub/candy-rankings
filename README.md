# 🎃 Halloween Candy Rankings (Power BI Project)

This project presents a data-driven analysis of Halloween candy preferences based on a dataset originally compiled by Walt Hickey for FiveThirtyEight in 2017. The data comes from an online voting experiment where users picked their favorite candy from randomized matchups, resulting in over **269,000 votes** from **8,371 unique IP addresses**.

Using Power BI and SQL, I explored which types of candies people prefer most, how ingredients like chocolate or sugar influence popularity, and whether price affects consumer choice.

---

## 📊 Dashboard Overview

The Power BI dashboard provides interactive visualizations for:
- Candy win percentages
- Candy ingredients (chocolate, peanut butter, etc.)
- Sugar and price analysis
- Popularity breakdown by candy type
- Recommended candies for Halloween based on performance and cost

---

## 🧠 Analytical Summary (via SQL)

### 🍬 Total Candy Types
The dataset includes a total of **X** unique candy types.  
*(Replace X with actual count, e.g., 85)*

### 🏆 Top-Performing Candies
The top 3 candies (based on win percentage) had several things in common:
- Contain **chocolate**
- Are **peanuty/almondy**
- Have **high sugar percentage**
- Are **slightly higher in price**
- Score consistently well in user preference votes

### 💰 Are Expensive Candies More Popular?
- **Not necessarily** — price alone is not a strong indicator of popularity.
- Some mid- to low-priced candies performed better than the expensive ones.

### 🍭 What About Sugar?
- **Yes** — high sugar candies tend to be more popular.
- Average win percentages by sugar level:
  - **Low Sugar (< 0.3)**: Lower popularity
  - **Medium Sugar (0.3–0.7)**: Moderate
  - **High Sugar (> 0.7)**: Highest win rates

### 🎃 Recommended Halloween Picks
Based on the data, the best 3 candies to give out on Halloween:
- Have either **sugar > 0.8** or **win % > 60%**
- Cost relatively low (**pricepercent < 0.5**)
- These picks offer **maximum satisfaction per cost**

### 📈 Price vs Popularity
Grouped by price range:
- **Low Price (< 0.4)**: Decent win rate
- **Medium Price (0.4–0.7)**: Best performance overall
- **High Price (> 0.7)**: Mixed results, not always popular
