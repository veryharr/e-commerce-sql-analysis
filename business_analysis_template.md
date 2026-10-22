# 📊 Business Analysis & Recommendations

> **Project:** E-commerce SQL Data Analysis  
> **Purpose:** Translate SQL results into clear business insights and practical recommendations.

This document will summarize the key findings from the SQL analysis. The conclusions should be completed only after reviewing the actual query results.

## 1. Key Business Questions

### 1. Which product category generates the most revenue?
**Finding:** 

| Product Category | Revenue | Share of Total Revenue |
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
| 1 | Italy | 91,076 | 23.67% |
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


**Finding:**

| Rank | Customer ID | Country | Total Revenue |
|---:|---:|---|---:|
| 1 | 152 | Morocco | 5,388 |
| 2 | 13 | Italy | 5,048 |
| 3 | 39 | Morocco | 4,564 |
| 4 | 231 | Morocco | 3,769 |
| 5 | 25 | Italy | 3,509 |
| 6 | 144 | France | 3,420 |
| 7 | 172 | Italy | 3,416 |
| 8 | 76 | Spain | 3,330 |
| 9 | 192 | Italy | 3,275 |
| 10 | 268 | France | 3,264 |

**Business Insight:**

Customer 152 from Morocco generates the highest revenue among the top 10 customers, with 5,388, followed by customer 13 from Italy with 5,048. Italy accounts for four customers in the top 10, while Morocco accounts for three.

These results highlight the importance of identifying and retaining high-value customers. However, further analysis is needed to assess their contribution to total company revenue and purchasing behavior over time.

**Business Recommendation:**

The company should focus on retaining high-value customers through personalized offers, loyalty programs, and targeted promotions. Analyzing their purchase frequency and order history could help identify strategies to encourage repeat purchases and attract similar customers.

**Conclusion:**

Customer 152 from Morocco ranks first by revenue. Italy and Morocco are the most represented countries among the top 10 customers, making them useful starting points for further customer retention analysis.



### 8. Which products are underperforming?

**Finding:**

The following 10 products have the lowest sales volumes among products with recorded sales.

| Rank | Product | Units Sold |
|---:|---|---:|
| 1 | Product_10 | 79 |
| 2 | Product_5 | 86 |
| 3 | Product_33 | 89 |
| 4 | Product_50 | 89 |
| 5 | Product_36 | 91 |
| 6 | Product_37 | 91 |
| 7 | Product_46 | 93 |
| 8 | Product_24 | 94 |
| 9 | Product_27 | 100 |
| 10 | Product_2 | 100 |

**Business Insight:**

Product_10 has the lowest sales volume, with 79 units sold, followed by Product_5 with 86 units. These products may require further investigation to understand why their sales volumes are relatively low.

However, low sales volume alone does not necessarily mean a product is unprofitable or unsuccessful. Demand, pricing, profit margins, and product availability should also be considered.

**Business Recommendation:**

The company should investigate the reasons behind low sales volumes by analyzing product prices, categories, customer demand, and marketing performance. Targeted promotions or adjustments to product positioning could be considered if supported by further analysis.

**Conclusion:**

Product_10 has the lowest sales volume among the 10 products identified. Further investigation is needed before deciding whether to promote, reprice, or discontinue underperforming products.

### 9. Which customer segment generates the most revenue?

**Finding:**

| Customer Segment | Number of Customers | Segment Revenue | Revenue Share |
|---|---:|---:|---:|
| High-Value Customers | 93 | 233,120 | 60.57% |
| Mid-Value Customers | 92 | 111,374 | 28.94% |
| Low-Value Customers | 92 | 40,359 | 10.49% |
| **Total** | **277** | **384,853** | **100.00%** |

**Business Insight:**

High-Value Customers generate the largest share of revenue, contributing 233,120, or 60.57% of total revenue. Although this segment represents approximately one-third of the customers included in the analysis, it generates more than half of the company's revenue.

Mid-Value Customers contribute 28.94% of revenue, while Low-Value Customers account for just 10.49%.

These results indicate that customers with higher purchasing value are particularly important to the business.

**Business Recommendation:**

The company should prioritize retaining High-Value Customers through personalized offers, loyalty programs, and targeted communication. It should also investigate the purchasing behavior of Mid-Value Customers to identify opportunities to increase their spending.

For Low-Value Customers, the company could test targeted promotions designed to encourage repeat purchases. The effectiveness of these initiatives should be measured using customer spending and retention metrics.


### 10. What business recommendations can be made?

**Recommendations:**

1. **Focus on Top Categories:** Prioritize the Hair category, which generates 32.82% of total revenue, and investigate opportunities to improve Skin category sales.

2. **Optimize Product Performance:** Maintain availability of best-selling products and investigate low-selling products before changing prices or the product assortment.

3. **Strengthen Key Markets:** Focus on Italy, Spain, and Morocco, which generate the highest revenue.

4. **Improve Customer Retention:** Reward returning customers and encourage one-time buyers to make repeat purchases.

5. **Retain High-Value Customers:** Focus on customer loyalty, as the High-Value segment generates 60.57% of revenue.

6. **Investigate Revenue Declines:** Analyze the sharp drops in September, November, and February to identify their causes and prevent recurring losses.


The company should focus on customer retention, its strongest products and markets, and investigating revenue fluctuations to support sustainable growth.

## 2. Overall Conclusion

The company should focus on customer retention, its strongest products and markets, and investigating revenue fluctuations to support sustainable growth. The Hair category generates the highest revenue, while Italy, Spain, and Morocco represent the strongest markets. High-Value Customers contribute 60.57% of total revenue, highlighting the importance of retaining valuable customers and encouraging repeat purchases. The company should also investigate significant revenue declines, particularly in September and November, to identify potential causes. Finally, reviewing low-selling products and monitoring sales performance could help improve business decisions and identify new growth opportunities.

## 3. Notes & Limitations

- **Data Completeness:** The dataset contains 285 customers, but only 277 have matching order-item records. Eight customers have 13 orders without corresponding records in `order_items`, so their revenue cannot be calculated from the available data. These customers were excluded from revenue-based segmentation, and the missing records should be investigated.
