Credit Card Eligibility Data: Determining Factors - Team Project 1  

Completed by: Navneet Choudhary, Rihui Ren, Yevhen Horokhovskykh, Abigeal Adenigbagbe


Project Breakdown:

Questions:

How do financial institutions (banks) determine credit card eligibility? What factors are taken into account?
How can they improve the accuracy of predicting which customers should be eligible for credit cards?
What factors should be considered to develop new products using the findings from this data?

Where value will be added?
Whether a target variable (0 to 1) should be increased or lowered and how the total number of CCs is going to change
Coefficiency of each indicator to determine which component of the table is the most critical.

Solution Breakdown:
1) Determine the current rate of eligibility by getting a total number of people that were eligible and not eligible (SQL).
2) Run the data in python, standarize the data from string to floats, to ensure all columns can be analyzed with statistically (Python).
3) Determine the most important factors by reviewing the coefficients and p-values (Python).
4) Plot and analyze the important determining factors and develop solutions to increase elibility (Python). 

Summary of Credit Card Eligibility Team Project

Dataset Overview:
We started with a dataset containing various factors that might influence credit card eligibility. These factors included ownership of property, age, employment status, income type, etc.
The dataset also included a target variable indicating whether individuals were eligible (1) or not eligible (0) for a credit card.

Initial Analysis:
We explored the dataset to understand its structure, missing values (any null values), and the distribution of eligible vs. non-eligible individuals within the dataset.
We determined the number of people who were eligible and not eligible for credit cards to understand the balance or imbalance in the dataset. This allowed for us to see that only 13% of individuals in the dataset were eligible for credit card.

Identification of Important Factors:
We then conducted a statistical summary to identify factors that appeared to be significant in determining credit card eligibility. This could involve measures like correlation coefficients by using the Ordinary Least Squares (OLS) summary.
Based on the summary, we selected relevant features such as pension status, income type (various income types) that showed strong associations with credit card eligibility.

Model Building:
We proceeded to build a classification model (KNN) to understand which factors most strongly predict credit card approval or rejection.
We split the dataset into training and testing sets, and then trained the model on a portion of the data and tested its performance on the remaining data.
Then we evaluated the model’s performance using appropriate metrics such as accuracy, precision, recall, and F1-score to assess its ability to predict both approvals and rejections.

Findings and Challenges:
Our model demonstrated high accuracy in predicting rejections (non-eligibility), but struggled with predicting approvals (eligibility). This imbalance in prediction accuracy suggests a potential bias or skew in the dataset towards one class (likely non-eligibility).
Despite the model's limitations, insights were drawn regarding factors contributing to credit card rejection. Factors such as income type (e.g., regular income vs. irregular income like pensions) were identified as critical in determining eligibility.

Business Recommendations:
From a business perspective, recommendations were made on how to potentially improve credit card approval rates. This might include strategies to target specific customer segments (e.g., retirees with stable pension income) or to adjust eligibility criteria based on the findings from the model.
Since our model had a much higher accuracy to determine the non-eligibility, the main areas we need to improve is eligibility. The highest correlation relationship is between various income types and eligibility, therefore reviewing and assessing factors other than income type would be necessary to improve the accuracy of model prediction for eligibility. 

Conclusion and Next Steps:
The analysis provided valuable insights into the factors influencing credit card eligibility, highlighting the importance of certain demographic and financial variables. Although it was inconclusive, we now know we need assess factors other than income type.
Future work could focus on improving the collecting additional data on approved applicants to determine additional key factors when considering eligibility.


Rules of Engagement
1. Everyone is respectful.
2. All the groups members can share their opinions.
3. Decisions are made in majority after listening to everyone's ideas.
4. If you are more knowledgeable in an area, please support other group members.
5. Everyone has to take a lead on a portion of the project. Support is provided.


Project scope:
1. Dataset cleaning/processing (separate table with features selected in step 2) - Abi
2. Data extraction using Python (EDA and feature selection for further analysis) - Navneet
3. Regression modeling (KNN) - Yev
4. Data prediction & Model evaluation - Julia


Team collaboration timeline:
Thursday, June 20 - 7:30pm-9pm
Friday, June 21 - 7:30pm-9pm
Saturday, June 22 - 10am-12pm, 6-9pm
Sunday, June 23 - 10am-2pm

