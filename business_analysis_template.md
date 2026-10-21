# 📊 Business Analysis & Recommendations

> **Project:** E-commerce SQL Data Analysis  
> **Purpose:** Translate SQL results into clear business insights and practical recommendations.

This document will summarize the key findings from the SQL analysis. The conclusions should be completed only after reviewing the actual query results.

## 1. Key Business Questions

### 1. Which product category generates the most revenue?
**Finding:** 

| Product Category | total_sold | Share of Total Revenue |
|---|---:|---:|
| Hair | 126,301 | 32.82% |
| Makeup | 103,662 | 26.94% |
| Body | 88,177 | 22.91% |
| Skin | 66,713 | 17.33% |
| **Total** | **384,853** | **100.00%** |

**Business Insight:**

_The Hair category generates the highest revenue, accounting for 32.82% of total revenue. Makeup ranks second, followed by Body and Skin. Skin generates the lowest revenue among the four categories._

**Business Recommendation:**

The company should investigate which products drive revenue in the Hair category and ensure their availability. It should also analyze the Skin category to identify opportunities to improve sales through marketing, pricing, or product assortment.

### 2. Which products are the best-sellers?

**Finding:**

| Rank | product_name | total_sold |
|---:|---|---:|
| 1 | Product_45 | 171 |
| 2 | Product_47 | 163 |
| 3 | Product_6 | 157 |
| 4 | Product_23 | 156 |
| 5 | Product_25 | 156 |
| 6 | Product_42 | 154 |
| 7 | Product_32 | 152 |
| 8 | Product_16 | 151 |
| 9 | Product_26 | 144 |
| 10 | Product_4 | 144 |

**Business Insight:**

Product_45 is the best-selling product, with 171 units sold, followed by Product_47 with 163 units and Product_6 with 157 units. The sales volumes among the top 10 products are relatively close, suggesting that several products contribute to sales rather than one product clearly dominating the ranking.

**Business Recommendation:**

The company should monitor inventory levels for the best-selling products to reduce the risk of stockouts. It should also investigate product names, categories, and revenue to better understand what drives demand and determine which products deserve additional marketing support.


### 3. Which countries are most important to the business?

**Finding:**

| Rank | Country | Revenue | Share of Total Revenue |
|---:|---|---:|---:|
| 1 | Italy | 91,076 | 23.66% |
| 2 | Spain | 83,217 | 21.62% |
| 3 | Morocco | 79,834 | 20.74% |
| 4 | France | 65,995 | 17.15% |
| 5 | Germany | 64,731 | 16.82% |
| **Total** | | **384,853** | **100.00%** |

**Business Insight:**

Italy is the largest market by revenue, contributing approximately 23.66% of total revenue. Spain ranks second, followed by Morocco. Together, Italy and Spain generate around 45.28% of total revenue, making these two countries particularly important markets for the business.

Germany generates the lowest revenue among the five countries, although its contribution remains significant.

**Business Recommendation:**

The company should investigate opportunities to strengthen its presence in Italy and Spain, where revenue is highest. It should also analyze customer demand and marketing performance in Morocco, France, and Germany to identify opportunities for growth and understand differences between markets.

**Conclusion:**

Italy is the leading market by revenue, followed by Spain and Morocco. The company should prioritize understanding customer behavior in its strongest markets while looking for opportunities to improve performance in countries with lower revenue.


### 4. What percentage of customers make repeat purchases?

**Finding:**

| Metric | Result |
|---|---:|
| Total Customers | 285 |
| Returning Customers | 246 |
| Returning Customers Percentage | 86.32% |

**Business Insight:**

The analysis shows that 246 out of 285 customers made more than one purchase, representing 86.32% of all customers. This indicates a high rate of repeat purchasing and suggests that many customers return to the business after their initial order.

**Business Recommendation:**

The company should focus on retaining returning customers through loyalty programs, personalized offers, and targeted promotions. It should also investigate the behavior of the 39 customers who made only one purchase to identify opportunities to encourage them to return.

**Conclusion:**

The returning customer rate is 86.32%, indicating strong repeat-purchase activity. Maintaining customer loyalty while encouraging first-time buyers to make another purchase could help support future revenue.


### 5. Is the company's revenue growing?

**Finding:**

| Month | Revenue | Change vs. Previous Month |
|---|---:|---:|
| January | 36,716 | — |
| February | 30,085 | -6,631 |
| March | 31,053 | +968 |
| April | 32,271 | +1,218 |
| May | 30,047 | -2,224 |
| June | 29,313 | -734 |
| July | 28,434 | -879 |
| August | 36,373 | +7,939 |
| September | 26,374 | -9,999 |
| October | 39,395 | +13,021 |
| November | 31,095 | -8,300 |
| December | 33,697 | +2,602 |

**Key Metrics:**

- **Total Annual Revenue:** 384,853
- **Highest Revenue Month:** October — 39,395
- **Lowest Revenue Month:** September — 26,374
- **January vs. December:** Revenue decreased by 8.22%.

**Business Insight:**

The company's revenue does not show consistent growth throughout the year. Monthly sales fluctuate significantly, with notable increases in August and October and substantial declines in September and November.

Revenue decreased from 36,716 in January to 33,697 in December, representing an overall decline of approximately 8.22% between these two months. Although revenue recovered in December, it did not return to its January level.

**Business Recommendation:**

The company should investigate the reasons behind major monthly fluctuations, particularly the decline in September and the increase in October. It should analyze potential factors such as marketing campaigns, promotions, product availability, and seasonal demand.

The company should also monitor monthly revenue trends and develop strategies to improve sales consistency and support sustainable growth.

**Conclusion:**

The company's revenue fluctuated throughout the year and ended approximately 8.22% below its January level. Further investigation is needed to identify the causes of these changes and determine opportunities for sustainable revenue growth.


### 6. Which months experienced the largest sales declines?

**Finding:**

| Month | Revenue | Change vs. Previous Month | Percentage Change |
|---|---:|---:|---:|
| September | 26,374 | -9,999 | -27.49% |
| November | 31,095 | -8,300 | -21.07% |
| February | 30,085 | -6,631 | -18.06% |
| May | 30,047 | -2,224 | -6.89% |

**Business Insight:**

September experienced the largest revenue decline, falling by 9,999 (27.49%) compared with August. November recorded the second-largest decline, with revenue decreasing by 8,300 (21.07%) compared with October. February ranked third, with a decrease of 6,631 (18.06%) compared with January.

These fluctuations suggest that the business may experience periods of unstable sales performance. However, additional analysis is needed to determine the reasons behind these declines.

**Business Recommendation:**

The company should investigate the causes of the significant revenue drops in September, November, and February. It should examine seasonal demand, marketing activities, product availability, and changes in customer purchasing behavior. Identifying the underlying causes could help the company develop strategies to reduce future revenue declines.

**Conclusion:**

September was the most critical month for revenue decline, followed by November and February. Investigating these periods should be a priority to improve sales stability and support more predictable business performance.


### 7. Who are the most valuable customers?
**Finding:** _Identify customers with the highest total revenue, if customer-level data supports this._

**Business insight:** _Explain how high-value customers could inform retention efforts._

### 8. Which products are underperforming?
**Finding:** _Identify products with low sales or revenue, using a clearly defined comparison._

**Business insight:** _Consider whether these products need better promotion, pricing review, or assortment changes._

### 9. Which customer segment generates the most revenue?
**Finding:** _Add the highest-revenue segment if segment data exists or a segment definition has been created._

**Business insight:** _Explain which customer group contributes most to sales._

### 10. What business recommendations can be made?
**Recommendations:**
- _Prioritize categories and products supported by the sales results._
- _Investigate significant revenue declines and seasonal patterns._
- _Encourage repeat purchases through relevant retention campaigns._
- _Adapt marketing to the strongest countries or customer segments, where supported by the data._
- _Review low-performing products before making pricing or assortment decisions._

## 2. Overall Conclusion

_Add a short conclusion summarizing the most important findings, the main business opportunity, and the next action the company should consider._

## 3. Notes & Limitations

- Complete this document after running the SQL queries and validating the results.
- Do not describe revenue as **profit** unless cost data is available to calculate profit.
- Country and customer-segment conclusions require suitable fields in the dataset.
- Recommendations should be based on observed results, not assumptions.
